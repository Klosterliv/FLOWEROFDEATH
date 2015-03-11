using UnityEngine;
using System.Collections;

public class assface : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void bajskorv(float pung) {
		FMOD_StudioSystem.instance.PlayOneShot ("event:/music_plains", transform.position, pung);

		Debug.Log ("shit "+pung);
	}
}
