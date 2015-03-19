using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

    public Transform player;
    public Transform playerModel;

    public AnimationCurve groundDistanceFactor;
    public AnimationCurve accelerationFactorBySpeed;

    public float maxSpeed = 10f;

    public LayerMask footinglayers;
    public LayerMask caveFooting;

    public float movespeed;
    public float jumpforce;
    public float floatforce;
    public PhysicMaterial glidematerial;
    public PhysicMaterial runmaterial;
    public float jumpcooldown = 0.25f;
    public float glidemovefactor = 0.2f;

    PhysicMaterial playerPhysisMaterial;

    bool glide = false;
    float jumpcd = 0f;

    bool floatEngaged = false;

    Vector3 upDir;
    float minDist = 500f;
    Animator animator;

    Vector3 cameraDir;
    Vector3 dir;
    Vector3 glidetilt;

    bool inCave = false;
    float timeGliding = 0;

    //SOUND
    bool speedLoopOn = false;
    FMOD.Studio.EventInstance glideLoop;
    FMOD.Studio.EventInstance speedLoop;

    FMODAsset jumpsound;
    string glideloop = "event:/cha_step";

    // Use this for initialization
    void Start() {

        glideLoop = FMOD_StudioSystem.instance.GetEvent("event:/cha_swoosh");
        speedLoop = FMOD_StudioSystem.instance.GetEvent("event:/music_speed");

        upDir = new Vector3(0, 0, 0);
        animator = (Animator)playerModel.GetComponent(typeof(Animator));
        //playerModel.transform.position = transform.position;

        cameraDir = new Vector3(0, 0, 0);
        dir = new Vector3(0, 0, 0);
        glidetilt = new Vector3(0, 0, 0);

    }

    // Update is called once per frame
    void Update() {

        //AnimUpdate();

        Footing();
        Jump();
        Glide();

        Sound();

    }
    void FixedUpdate() {

        //Debug.Log("Speed: "+player.rigidbody.velocity.magnitude);

        Move();
        Float();
    }
    void LateUpdate() {
        AnimUpdate();
    }

    void AnimUpdate() {

        animator.SetFloat("speed", player.rigidbody.velocity.magnitude);
        animator.SetFloat("vertSpeed", player.rigidbody.velocity.y);
        animator.SetBool("gliding", glide);
        animator.SetFloat("groundDist", minDist-1.5f);

        Vector3 looktarget = (playerModel.position + player.rigidbody.velocity/*dir*/) - playerModel.position;

        //Vector3 lookAtPos = looktarget + playerModel.position + Vector3.up*2;
        // TODO :: PROPER
        Vector3 lookAtPos = animator.bodyPosition + Vector3.up -cameraDir * 5;


        if (glide) {
            playerModel.rotation = Quaternion.Slerp(playerModel.rotation, Quaternion.LookRotation(looktarget/*, -glidetilt*/), Time.deltaTime * player.rigidbody.velocity.magnitude * timeGliding);

        }
        else {
            looktarget.y = 0;
            playerModel.rotation = Quaternion.Slerp(playerModel.rotation, Quaternion.LookRotation(looktarget), Time.deltaTime * player.rigidbody.velocity.magnitude);
            // TODO: FIX WARNING
        }

        animator.SetLookAtPosition(lookAtPos);
        animator.SetLookAtWeight(1);

        Debug.DrawLine(playerModel.position, playerModel.position+looktarget);
        Debug.DrawRay(playerModel.position, -glidetilt*3, Color.gray);

               //playerModel.Rotate(new Vector3(0,90,0));
        //playerModel.rotation
        //playerModel.rotation = Quaternion.Lo
        //playerModel.rotation.SetLookRotation(dir, Vector3.up);
        //playerModel.LookAt(playerModel.position + dir*10);
        //playerModel.rotation = Quaternion.LookRotation(dir, upDir);
    }

    void Move() {

        // DIRECTION
        float movex = Input.GetAxis("Horizontal");
        float movez = Input.GetAxis("Vertical");

        //Vector3 move = player.forward * movex + -player.right * movez;
        Vector3 vertical = Vector3.Cross(cameraDir, Vector3.up);
        Vector3 move = cameraDir * -movex + -vertical* movez;
        move = Vector3.Cross(move, upDir);

        // CLAMP FOR ANALOG
        move = Vector3.ClampMagnitude(move, 1f);        
        

        //Debug.DrawRay(player.position, move * 200, Color.black, 0.1f);
        // SPEED
        move *= (Time.fixedDeltaTime * movespeed);

        // DOT PRODUCT
        float dot = Vector3.Dot(move.normalized, player.rigidbody.velocity.normalized);


        // GLIDE FACTORS
        if (glide) {

            float dotAbs = Mathf.Abs(dot);//Mathf.Abs(Vector3.Dot(move.normalized, player.rigidbody.velocity.normalized));
            float brakeFactor = 1 - dotAbs;

            player.rigidbody.AddForce(-player.rigidbody.velocity * dotAbs * 2);
            player.rigidbody.AddForce(move.normalized * player.rigidbody.velocity.magnitude * dotAbs * 2);


            // TODO:: PROBLEMS



            Debug.DrawRay(player.position, -player.rigidbody.velocity.normalized * dotAbs * 2, Color.red);
            Debug.DrawRay(player.position, move.normalized * dotAbs * 2, Color.blue);
            
            //if (dot < 0) Debug.Log(Vector3.Lerp(move, Vector3.zero, (dot + 0.2f)));
            // move = Vector3.Lerp(move, Vector3.zero, (dot+0.2f));

            glidetilt = upDir + (playerModel.right * (dotAbs));

            
            move *= glidemovefactor;

            dir = move;
            return;

        }
        glidetilt = Vector3.zero;
        // DOT PRODUCT MAX SPEED 

        float v = player.rigidbody.velocity.magnitude;
        float dotv = dot * v;

        float vFactor = accelerationFactorBySpeed.Evaluate(dotv / maxSpeed);

        move *= vFactor;

        // OTHER FACTORS
        move *= groundDistanceFactor.Evaluate(minDist);

        // APPLY
        player.rigidbody.AddForce(move);

        //Debug.DrawRay(player.position, move * 200, Color.black, 0.1f);

        dir = move;

        //Debug.Log("minDist:" + minDist + ", moveforce:" + move + ", moveSpeed:" + player.rigidbody.velocity.magnitude + ", dot:" + dot);

    }

    void Glide() {
        if (Input.GetButton("Glide")) {
			/*
            if (!glide) { 
                glideLoop.start();
                glideLoop.setVolume(0.2f);
            }
			*/


            timeGliding += Time.deltaTime;
            player.collider.material = glidematerial;
            glide = true;

        }
        else {
            timeGliding = 0;
            player.collider.material = runmaterial;
            glide = false;

            //glideLoop.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);
        }
    }

    void Footing() {

        RaycastHit fronthit, backhit, lefthit, righthit;

        LayerMask footing;
        if (inCave) footing = caveFooting;
        else footing = footinglayers;

        //Physics.Raycast(player.position - (player.forward * 0.2f) + Vector3.up, )

        Ray ray = new Ray(player.position - (player.forward * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out fronthit, 1000f, footing);
        ray = new Ray(player.position + (player.forward * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out backhit, 1000f, footing);
        ray = new Ray(player.position + (player.right * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out righthit, 1000f, footing);
        ray = new Ray(player.position - (player.right * 0.2f) + Vector3.up, Vector3.down);
        Physics.Raycast(ray, out lefthit, 1000f, footing);

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

        if (minDist == 0 || minDist > 500) minDist = 500f;

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

                FMOD_StudioSystem.instance.PlayOneShot("event:/cha_jump", player.position, 0.1f);
            }
            floatEngaged = false;
        }
        else {
            if (Input.GetButton("Jump")) {
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

    public void SetCameraDir(Vector3 camDir) {
        cameraDir = camDir;
        
    }
    public Vector3 GetCameraDir() {
        return cameraDir;
    }

    public Vector3 GetUpDir() {
        return upDir;
    }

    public float GetMinDist() {
        return minDist;
    }

    public void SetInCave(bool yesno) {
        inCave = yesno;
    }

    void Sound() {
        //FMOD_StudioSystem.instance.PlayOneShot(glideloop, transform.position, 1f);
        float speed = rigidbody.velocity.magnitude;
        if(speedLoopOn) {

			glideLoop.setParameterValue("SwooshSnd", speed/2);
            speedLoop.setVolume(1f);
			glideLoop.setVolume(0.001f*speed);
            speedLoop.setParameterValue("drums", speed);

            if(speed < 5f) { 
				speedLoop.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT); 
				speedLoopOn = false; 
				glideLoop.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);
			}
        }
        else if (speed > 5f) {

            speedLoop.setVolume(1);
            speedLoop.setParameterValue("drums", speed/2);

            speedLoopOn = true;
            Debug.Log("play");

            speedLoop.start();
			glideLoop.start ();
        }
    }

}
