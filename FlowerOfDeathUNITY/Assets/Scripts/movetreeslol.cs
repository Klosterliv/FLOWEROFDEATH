using UnityEngine;
using System.Collections;

public class movetreeslol : MonoBehaviour {

    public AnimationCurve xOffset;
    public AnimationCurve yOffset;
    public AnimationCurve xOffset2;
    public AnimationCurve yOffset2;

    public AnimationCurve xOffsetS;
    public AnimationCurve yOffsetS;
    public AnimationCurve xOffsetS2;
    public AnimationCurve yOffsetS2;

    Material material;
    Material material2;

    float t = 0;
    public float tFactor = 20f;


	// Use this for initialization
	void Start () {

        material = gameObject.renderer.materials[1];
        //material2 = gameObject.renderer.materials[2];

        material.SetFloat("_posX", transform.position.x);
        material.SetFloat("_posZ", transform.position.z);

        
	}
	
	// Update is called once per frame
	void Update () {

        //t += (Time.deltaTime/tFactor);


        material.SetFloat("_posX", transform.position.x);
        material.SetFloat("_posZ", transform.position.z);
       

	
	}

    void EvaluateOffsets() {

        material.SetFloat("_offsetX1", xOffset.Evaluate(t));
        material.SetFloat("_offsetX2", xOffset2.Evaluate(t));
        material.SetFloat("_offsetY1", yOffset.Evaluate(t));
        material.SetFloat("_offsetY2", yOffset2.Evaluate(t));

        material2.SetFloat("_offsetX1", xOffsetS.Evaluate(t));
        material2.SetFloat("_offsetX2", xOffsetS2.Evaluate(t));
        material2.SetFloat("_offsetY1", yOffsetS.Evaluate(t));
        material2.SetFloat("_offsetY2", yOffsetS2.Evaluate(t));

    }
}
