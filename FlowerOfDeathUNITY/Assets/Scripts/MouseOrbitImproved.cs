using UnityEngine;
using System.Collections;

[AddComponentMenu("Camera-Control/Mouse Orbit with zoom")]
public class MouseOrbitImproved : MonoBehaviour
{
    public string XInput = "Mouse X", YInput = "Mouse Y";
    public bool reduceAlphaWhenClose;
    public float reduceAlphaStartDistance, reduceAlphaEndDistance;
    public bool colorOrValue = true;
    public string alphaNameInShader = "_Color";
    public float minAlpha = 0f, maxAlpha = 1f;
    public Transform targetRenderer;
    /*
    public bool enableZoom;
    public string zoomAxis;
    public float zoomSpeed;
    */ // TODO:

    public AnimationCurve shakeMaxBySpeed;
    public AnimationCurve FOViewBySpeed;

    public LayerMask ignoreLayer;
    PlayerMovement playerMovement;

    public Transform target;
    public Vector3 targetOffset;

    public float distance = 5.0f;
    public float xSpeed = 120.0f;
    public float ySpeed = 120.0f;

    public float yMinLimit = -20f;
    public float yMaxLimit = 80f;

    public float distanceMin = .5f;
    public float distanceMax = 15f;
    public float groundDistance = 1f;


    float targetDistance;

    float x = 0.0f;
    float y = 0.0f;

    public float camRotSpeed, camMoveSpeed;

    public bool shakeEnabled, FOVbySpeedEnabled;
    public float shakeMultiplier = 1;
    public float shakeSpeed = 1;

    Vector3 targetPos;

    // Use this for initialization
    void Start() {

        Vector3 targetPos = transform.position;

        Vector3 angles = transform.eulerAngles;
        x = angles.y;
        y = angles.x;

        targetDistance = distance;
        playerMovement = (PlayerMovement) target.GetComponent(typeof(PlayerMovement));

        // Make the rigid body not change rotation
        if (rigidbody)
            rigidbody.freezeRotation = true;
    }

    void LateUpdate() {
        if (target) {

            

            x += Input.GetAxis(XInput) * xSpeed * distance * 0.02f;
            y -= Input.GetAxis(YInput) * ySpeed * 0.02f;

            y = ClampAngle(y, yMinLimit, yMaxLimit);

            Quaternion rotation = Quaternion.Euler(y, x, 0);

            //distance = Mathf.Clamp(distance - Input.GetAxis("Mouse ScrollWheel") * 5, distanceMin, distanceMax);

            float gdist = 0;
            RaycastHit hit, dhit;
            //Debug.DrawRay(target.position, transform.position - target.position, Color.magenta);
            if (Physics.Raycast(target.position, transform.position - target.position, out hit, distanceMax, ignoreLayer)) {
                distance -= hit.distance;
                distance = hit.distance -1f;
            }
            else distance = distanceMax;
            Debug.DrawRay(target.position, (transform.position - target.position).normalized * distance, Color.magenta);

            //DOWN
            if (Physics.Raycast(transform.position, -Vector3.up, out dhit, groundDistance, ignoreLayer)) {
                gdist = groundDistance - dhit.distance;
                //Debug.Log(gdist);
            }
            else if (Physics.Raycast(transform.position, Vector3.up, out dhit, groundDistance, ignoreLayer)) {
                gdist = groundDistance + dhit.distance;
                //Debug.Log(gdist);
            }

            distance = Mathf.Clamp(distance-0.3f, distanceMin, distanceMax);
            //Debug.Log(distance);


           // Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
            Vector3 negDistance = new Vector3(0.0f, 0.1f, -distance);
            Vector3 position = rotation * negDistance + target.position + Vector3.up /** gdist + targetOffset*/;

            //transform.rotation = rotation;
            //transform.position = position;

            transform.rotation = Quaternion.Lerp(transform.rotation, rotation, Time.deltaTime * camRotSpeed);


            //Debug.DrawRay(target.position, rotation * -Vector3.forward * 5, Color.black, 5f);


            targetPos = Vector3.Lerp(targetPos, position, Time.deltaTime * camMoveSpeed);

            // CAM SHAKE etc
            Vector3 modif = Vector3.zero;
            float speed = playerMovement.player.rigidbody.velocity.magnitude;

            if (shakeEnabled) {
                
                float maxShake = shakeMaxBySpeed.Evaluate(speed);
                float shakeX = Mathf.PerlinNoise(Time.time * shakeSpeed, Time.time * shakeSpeed) - 0.5f;
                float shakeY = Mathf.PerlinNoise(Time.time * shakeSpeed + 100, Time.time * shakeSpeed + 100) - 0.5f;
                Vector3 shakeOffset = camera.transform.up * shakeY + camera.transform.right * shakeX;
                shakeOffset *= shakeMultiplier * maxShake;

                modif += shakeOffset;
            }
            if (FOVbySpeedEnabled) {
                modif -= camera.transform.forward * FOViewBySpeed.Evaluate(speed);
            }


            //Vector3 shakeOffset = camera.transform.up * Random.Range(-maxShake, maxShake) + camera.transform.right * Random.Range(-maxShake, maxShake);
            transform.position = targetPos + modif;
            //camera.fieldOfView = FOViewBySpeed.Evaluate(speed);

            FeedCameraDir();
            ApplyAlphaWhenClose();

            //CheckClipping();

        }

    }

    public static float ClampAngle(float angle, float min, float max) {
        if (angle < -360F)
            angle += 360F;
        if (angle > 360F)
            angle -= 360F;
        return Mathf.Clamp(angle, min, max);
    }

    void FeedCameraDir() {

        Vector3 dir = transform.position - target.position;
        Vector3 dirNoY = new Vector3(dir.x, 0f, dir.z);
        //dirNoY = new Vector3(dir.x, dir.y, dir.z);

        playerMovement.SetCameraDir(dirNoY);

    }

    void CheckClipping() {

        float cp = camera.nearClipPlane;
        bool clip = true;
        while (clip) {

            Vector3 uL = camera.ViewportToWorldPoint(new Vector3(0, 0, cp));
            Vector3 mL = camera.ViewportToWorldPoint(new Vector3(0, 0.5f, cp));
            Vector3 dL = camera.ViewportToWorldPoint(new Vector3(0, 1, cp));
            Vector3 uM = camera.ViewportToWorldPoint(new Vector3(0.5f, 0, cp));
            Vector3 dM = camera.ViewportToWorldPoint(new Vector3(0.5f, 1, cp));
            Vector3 uR = camera.ViewportToWorldPoint(new Vector3(1, 0, cp));
            Vector3 mR = camera.ViewportToWorldPoint(new Vector3(1, 0.5f, cp));
            Vector3 dR = camera.ViewportToWorldPoint(new Vector3(1, 1, cp));

            /*
            Debug.DrawLine(transform.position, uL, Color.blue);
            Debug.DrawLine(transform.position, mL, Color.red);
            Debug.DrawLine(transform.position, dL, Color.red);
            Debug.DrawLine(transform.position, uM, Color.red);
            Debug.DrawLine(transform.position, dM, Color.red);
            Debug.DrawLine(transform.position, uR, Color.red);
            Debug.DrawLine(transform.position, mR, Color.red);
            Debug.DrawLine(transform.position, dR, Color.red); 
             * */

            RaycastHit hit;

            if (Physics.Linecast(transform.position, uL, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, uL, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, mL, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, mL, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, dL, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, dL, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, uM, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, uM, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, dM, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, dM, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, uR, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, uR, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, mR, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, mR, Color.red, 3f);
            }
            else if (Physics.Linecast(transform.position, dR, out hit, ignoreLayer)) {
                Debug.DrawLine(transform.position, dR, Color.red, 3f);
            }
            else clip = false;

            if (clip) {
                transform.position += transform.forward * cp;
            }
        }


    }

    void ApplyAlphaWhenClose() {

        if (reduceAlphaWhenClose) {

            if (reduceAlphaStartDistance < reduceAlphaEndDistance) {
                Debug.LogWarning("Alpha start distance lower than distanceMin: not applying!");                
                return; 
            }
            else if (!targetRenderer.renderer) {
                Debug.LogWarning("No renderer assigned");
                return;
            }

            Material mat = targetRenderer.renderer.material;

            //Mathf.Clamp01( (reduceAlphaStartDistance-distance-reduceAlphaEndDistance)/(reduceAlphaStartDistance-reduceAlphaEndDistance) )

            float a = Mathf.Lerp(minAlpha, maxAlpha, Mathf.Clamp01((distance - reduceAlphaEndDistance) / (reduceAlphaStartDistance - reduceAlphaEndDistance)));
            if (colorOrValue) {
                Color newAlpha = mat.GetColor(alphaNameInShader);
                newAlpha.a = a;
                mat.SetColor(alphaNameInShader, newAlpha);
            }
            else {
                float newAlpha = a;
                mat.SetFloat(alphaNameInShader, newAlpha);
            }
        }
        return;
    }


}