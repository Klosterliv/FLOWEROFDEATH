using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

    public Transform player;

    public float movespeed;
    public float jumpforce;
    public PhysicMaterial glidematerial;
    public PhysicMaterial runmaterial;
    public float jumpcooldown = 0.25f;
    public float glidemovefactor = 0.2f;

    PhysicMaterial playerPhysisMaterial;

    bool grounded = true;
    bool glide = false;
    float jumpcd = 0f;

    Vector3 upDir;

    // Use this for initialization
    void Start() {
        upDir = new Vector3(0, 0, 0);

    }

    // Update is called once per frame
    void Update() {

        Footing();

        Move();
        Glide();

    }

    void Move() {
        float movex = Input.GetAxis("Horizontal");
        float movez = Input.GetAxis("Vertical");



        // TO DO :::



        //float averageMag = 

        Vector3 move = player.forward * movex + -player.right * movez;
        //Vector3 move = new Vector3(movex, 0, movez);
        move = Vector3.Cross(move, upDir);
        Debug.DrawRay(player.position, move * 200, Color.black, 0.1f);
        move *= (Time.fixedDeltaTime * movespeed);
        if (glide) move *= glidemovefactor;

        player.rigidbody.AddForce(move);
    }
    void Jump() {


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


        Physics.Raycast(player.position - (player.forward * 0.2f) + Vector3.up, Vector3.down, out fronthit);
        Physics.Raycast(player.position + (player.forward*0.2f) + Vector3.up, Vector3.down, out backhit);
        Physics.Raycast(player.position + (player.right * 0.2f) + Vector3.up, Vector3.down, out righthit);
        Physics.Raycast(player.position - (player.right * 0.2f) + Vector3.up, Vector3.down, out lefthit);

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

}
