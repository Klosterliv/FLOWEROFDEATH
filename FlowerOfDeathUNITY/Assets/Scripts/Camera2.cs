using UnityEngine;
using System.Collections;

public class Camera2 : MonoBehaviour {

    public Color debugColor;

    public AnimationCurve shakeBySpeed;

    public AnimationCurve forceCameraToSlopeByGroundDist;
    public float forceCamRate = 5;

    public float shakeSpeed;
    public float shakeMultiplier;



    public string YInput, XInput;
    public float xSpeed, ySpeed;

    public float yMin, yMax;

    public float minDist, maxDist;


    public Camera camera;
    public Transform target;

    public LayerMask ignoreLayer;

    PlayerMovement playerMovement;

    Vector3 targetPos;

    public float posLerpSpeed = 1;
    public float rotLerpSpeed = 1;


    float distance = 10;
    public float x = 0;
    public float y = 0;

    float yMinNow;
    float yMinThisFrame;
    Vector3 realPos;

    float speed;


	// Use this for initialization
	void Start () {

        speed = target.rigidbody.velocity.magnitude;

        yMinNow = yMin; yMinThisFrame = yMinNow;
        targetPos = new Vector3(0, 0, 0); targetPos = transform.position;
        realPos = new Vector3(0, 0, 0); realPos = transform.position;

        Vector3 angles = transform.eulerAngles;
        x = angles.y;
        y = angles.x;

        playerMovement = (PlayerMovement) target.GetComponent(typeof(PlayerMovement));

	}
	
	// Update is called once per frame
	void LateUpdate () {

        speed = target.rigidbody.velocity.magnitude;

        FeedCameraDir();
        GroundAngle();


        //Debug.Log(90-Vector3.Angle(test, Vector3.up));

        NewTargetPosition();

        Shake();


	
	}

    void GroundAngle() {

        Vector3 angle = Vector3.Cross(playerMovement.GetCameraDir(), playerMovement.GetUpDir());

        angle = Vector3.Cross(playerMovement.GetUpDir(), angle);
        float gdist = playerMovement.GetMinDist();

        float slope = 90 - Vector3.Angle(angle, Vector3.up);
        if (yMin < slope) yMinNow = Mathf.Lerp(yMin, slope, forceCameraToSlopeByGroundDist.Evaluate(gdist));
        else yMinNow = yMin;

        yMinThisFrame = Mathf.Lerp(yMinThisFrame, yMinNow, Time.deltaTime * forceCamRate);

    }

    void NewTargetPosition() {

        x += Input.GetAxis(XInput) * xSpeed * distance * 0.02f;
        y -= Input.GetAxis(YInput) * ySpeed * 0.02f;

        y = ClampAngle(y, yMinThisFrame, yMax);


        Quaternion rotation = Quaternion.Euler(y, x, 0);

        RaycastHit hit;
        if (Physics.Raycast(target.position, rotation * -Vector3.forward, out hit, maxDist, ignoreLayer)) {
            distance = hit.distance;
            Debug.DrawRay(target.position, rotation * -Vector3.forward * distance, Color.red, 5f);
        }
        else { distance = maxDist; Debug.DrawRay(target.position, rotation * -Vector3.forward * distance, Color.green, 5f); }


        distance = Mathf.Clamp(distance - 0.3f, minDist, maxDist);

        Vector3 negDistance = new Vector3(0.0f, 0.1f, -distance);
        Vector3 targetPos = rotation * negDistance + target.position + Vector3.up /** gdist + targetOffset*/;

        realPos = Vector3.Lerp(realPos, targetPos, Time.deltaTime * posLerpSpeed * distance);

        transform.position = realPos;
        transform.rotation = Quaternion.Lerp(transform.rotation, rotation, rotLerpSpeed);

        Debug.DrawRay(target.position, rotation * -Vector3.forward * 5, debugColor, 5f);

        

        

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

        playerMovement.SetCameraDir(dirNoY);

    }

    void Shake() {
        
        float maxShake = shakeBySpeed.Evaluate(speed);
        float shakeX = Mathf.PerlinNoise(Time.time * shakeSpeed, Time.time * shakeSpeed) - 0.5f;
        float shakeY = Mathf.PerlinNoise(Time.time * shakeSpeed + 100, Time.time * shakeSpeed + 100) - 0.5f;
        Vector3 shakeOffset = transform.up * shakeY + transform.right * shakeX;
        shakeOffset *= shakeMultiplier * maxShake;

        transform.position += shakeOffset;

    }
}
