using UnityEngine;
using System.Collections;

public class SoundEvents : MonoBehaviour {


    string stepsound = "event:/cha_step";
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void Step(float val) {
        FMOD_StudioSystem.instance.PlayOneShot(stepsound, transform.position, 0.2f);
    }
}
