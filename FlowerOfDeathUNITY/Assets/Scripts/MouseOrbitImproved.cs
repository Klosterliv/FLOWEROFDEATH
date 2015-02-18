﻿using UnityEngine;
using System.Collections;

[AddComponentMenu("Camera-Control/Mouse Orbit with zoom")]
public class MouseOrbitImproved : MonoBehaviour
{

    public LayerMask ignoreLayer;
    PlayerMovement playerMovement;

    public Transform target;
    public float distance = 5.0f;
    public float xSpeed = 120.0f;
    public float ySpeed = 120.0f;

    public float yMinLimit = -20f;
    public float yMaxLimit = 80f;

    public float distanceMin = .5f;
    public float distanceMax = 15f;

    float targetDistance;

    float x = 0.0f;
    float y = 0.0f;

    public float camRotSpeed, camMoveSpeed;

    // Use this for initialization
    void Start() {
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
            

            RaycastHit hit;
            //Debug.DrawRay(target.position, transform.position - target.position, Color.magenta);
            if (Physics.Raycast(target.position, transform.position - target.position, out hit, distanceMax, ignoreLayer)) {
                distance -= hit.distance;
                distance = hit.distance -1f;
            }
            else distance = distanceMax;

            distance = Mathf.Clamp(distance, distanceMin, distanceMax);


           // Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
            Vector3 negDistance = new Vector3(0.0f, -distance/6, -distance);
            Vector3 position = rotation * negDistance + target.position;

            //transform.rotation = rotation;
            //transform.position = position;

            transform.rotation = Quaternion.Lerp(transform.rotation, rotation, Time.deltaTime * camRotSpeed);
            transform.position = Vector3.Lerp(transform.position, position, Time.deltaTime * camMoveSpeed);

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