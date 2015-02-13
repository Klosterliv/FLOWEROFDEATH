using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

    public Transform player;
    public Transform playerModel;

    public AnimationCurve groundDistanceFactor;
    public AnimationCurve accelerationFactorBySpeed;

    public float maxSpeed = 10f;

    public LayerMask footinglayers;

    public float movespeed;
    public float jumpforce;
    public float floatforce;
    public PhysicMaterial glidematerial;
    public PhysicMaterial runmaterial;
    public float jumpcooldown = 0.25f;
    public float glidemovefactor = 0.2f;

    PhysicMaterial playerPhysisMaterial;

    bool grounded = true;
    bool glide = false;
    float jumpcd = 0f;

    bool floatEngaged = false;

    Vector3 upDir;
    float minDist = 500f;
    Animator animator;

    // Use this for initialization
    void Start() {
        upDir = new Vector3(0, 0, 0);
        animator = (Animator)playerModel.GetComponent(typeof(Animator));
        playerModel.transform.position = transform.position;

    }

    // Update is called once per frame
    void Update() {

        AnimUpdate();

        Footing();
        Jump();
        Glide();

    }
    void FixedUpdate() {
        Move();
        Float();
    }

    void AnimUpdate() {
        animator.SetFloat("speed", player.rigidbody.velocity.magnitude);
        animator.SetBool("glide", glide);
    }

    void Move() {

        // DIRECTION
        float movex = Input.GetAxis("Horizontal");
        float movez = Input.GetAxis("Vertical");

        Vector3 move = player.forward * movex + -player.right * movez;
        move = Vector3.Cross(move, upDir);

        // CLAMP FOR ANALOG
        move = Vector3.ClampMagnitude(move, 1f);        
        

        Debug.DrawRay(player.position, move * 200, Color.black, 0.1f);
        // SPEED
        move *= (Time.fixedDeltaTime * movespeed);

        // DOT PRODUCT MAX SPEED
        float dot = Vector3.Dot(move.normalized, player.rigidbody.velocity.normalized);
        float v = player.rigidbody.velocity.magnitude;
        float dotv = dot * v;

        float vFactor = accelerationFactorBySpeed.Evaluate(dotv/maxSpeed);

        move *= vFactor;

        // GLIDE FACTORS
        if (glide) {
            
            move = Vector3.Lerp(move, Vector3.zero, (dot+0.2f));

            move *= glidemovefactor;

        }
        // OTHER FACTORS
        move *= groundDistanceFactor.Evaluate(minDist);

        // APPLY
        player.rigidbody.AddForce(move);

        Debug.Log("minDist:" + minDist + ", moveforce:" + move + ", moveSpeed:" + player.rigidbody.velocity.magnitude + ", dot:" + dot);

    }

    void Glide() {
        if (Input.GetButton("Glide")) {
            player.renderer.material.color = Color.red;
            player.collider.material = glidematerial;
            glide = true;

        }
        else {
            player.renderer.material.color = Color.green;
            player.collider.material = runmaterial;
            glide = false;
        }
    }

    void Footing() {

        RaycastHit fronthit, backhit, lefthit, righthit;

        //Physics.Raycast(player.position - (player.forward * 0.2f) + Vector3.up, )

        Ray ray = new Ray(player.position - (player.forward * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out fronthit, 1000f, footinglayers);
        ray = new Ray(player.position + (player.forward * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out backhit, 1000f, footinglayers);
        ray = new Ray(player.position + (player.right * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out righthit, 1000f, footinglayers);
        ray = new Ray(player.position - (player.right * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out lefthit, 1000f, footinglayers);

        /*
        Physics.Raycast(player.position - (player.forward * 0.2f) + Vector3.up, Vector3.down, out fronthit, footinglayers);
        Physics.Raycast(player.position + (player.forward*0.2f) + Vector3.up, Vector3.down, out backhit, footinglayers);
        Physics.Raycast(player.position + (player.right * 0.2f) + Vector3.up, Vector3.down, out righthit, footinglayers);
        Physics.Raycast(player.position - (player.right * 0.2f) + Vector3.up, Vector3.down, out lefthit, footinglayers);
         * 
         * */

        minDist = fronthit.distance;
        if (backhit.distance < minDist) minDist = backhit.distance;
        if (fronthit.distance < minDist) minDist = fronthit.distance;
        if (lefthit.distance < minDist) minDist = lefthit.distance;
        if (righthit.distance < minDist) minDist = righthit.distance;

        //Vector3 upDir, frontdir;
        /*
        upDir = (Vector3.Cross(backhit.point - Vector3.up, fronthit.point - Vector3.up)).normalized;
        rightDir = (Vector3.Cross(righthit.point - Vector3.forward, lefthit.point - Vector3.forward)).normalized;

        */
        upDir = (Vector3.Cross(righthit.point - Vector3.up, backhit.point - Vector3.up) +
         Vector3.Cross(backhit.point - Vector3.up, lefthit.point - Vector3.up) +
         Vector3.Cross(lefthit.point - Vector3.up, fronthit.point - Vector3.up) +
         Vector3.Cross(fronthit.point - Vector3.up, righthit.point - Vector3.up)
        ).normalized;

        Debug.DrawRay(player.position, -upDir, Color.blue);
        //Debug.DrawRay(player.position, rightDir, Color.green);

        Debug.DrawRay(fronthit.point, Vector3.up, Color.red);
        Debug.DrawRay(backhit.point, Vector3.up, Color.red);

        Debug.DrawRay(righthit.point, Vector3.up, Color.yellow);
        Debug.DrawRay(lefthit.point, Vector3.up, Color.yellow);

    }

    void Jump() {
        jumpcd -= Time.deltaTime;
        if(groundDistanceFactor.Evaluate(minDist) > 0.4f) {
            if (Input.GetButtonDown("Jump") && jumpcd <= 0) {
                player.rigidbody.AddForce(Vector3.up * jumpforce);
                jumpcd = jumpcooldown;
            }
            floatEngaged = false;
        }
        else {
            if (Input.GetButtonDown("Jump")) {
                floatEngaged = true;
            }
            if (!Input.GetButton("Jump"))
                floatEngaged = false;

        }
    }
    void Float() {
        if (floatEngaged) {
            player.rigidbody.AddForce(Vector3.up * floatforce);
        }
    }

}
