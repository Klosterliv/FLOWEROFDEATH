using UnityEngine;
using System.Collections;

[AddComponentMenu("Camera-Control/Mouse Orbit with zoom")]
public class MouseOrbitImproved : MonoBehaviour
{

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
            x += Input.GetAxis("Mouse X") * xSpeed * distance * 0.02f;
            y -= Input.GetAxis("Mouse Y") * ySpeed * 0.02f;

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

            //DOWN
            if (Physics.Raycast(transform.position, -Vector3.up, out dhit, groundDistance, ignoreLayer)) {
                gdist = groundDistance - dhit.distance;
                Debug.Log(gdist);
            }
            else if (Physics.Raycast(transform.position, Vector3.up, out dhit, groundDistance, ignoreLayer)) {
                gdist = groundDistance + dhit.distance;
                Debug.Log(gdist);
            }

            distance = Mathf.Clamp(distance, distanceMin, distanceMax);


           // Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
            Vector3 negDistance = new Vector3(0.0f, distance/6, -distance);
            Vector3 position = rotation * negDistance + target.position /*+ Vector3.up*gdist */+ targetOffset;

            //transform.rotation = rotation;
            //transform.position = position;

            transform.rotation = Quaternion.Lerp(transform.rotation, rotation, Time.deltaTime * camRotSpeed);
            targetPos = Vector3.Lerp(targetPos, position, Time.deltaTime * camMoveSpeed);

            // CAM SHAKE

            float speed = playerMovement.player.rigidbody.velocity.magnitude;
            float maxShake = shakeMaxBySpeed.Evaluate(speed);
            float shakeX = Mathf.PerlinNoise(Time.time*shakeSpeed, Time.time*shakeSpeed) - 0.5f;
            float shakeY = Mathf.PerlinNoise(Time.time*shakeSpeed+100, Time.time*shakeSpeed+100) - 0.5f;
            Vector3 shakeOffset = camera.transform.up * shakeY + camera.transform.right * shakeX;
            //Vector3 shakeOffset = camera.transform.up * Random.Range(-maxShake, maxShake) + camera.transform.right * Random.Range(-maxShake, maxShake);
            transform.position = targetPos + (shakeOffset * shakeMultiplier * maxShake) - camera.transform.forward * FOViewBySpeed.Evaluate(speed);
            //camera.fieldOfView = FOViewBySpeed.Evaluate(speed);

            FeedCameraDir();

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


}