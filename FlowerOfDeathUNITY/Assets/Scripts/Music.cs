using UnityEngine;
using System.Collections;

public class Music : MonoBehaviour {

	public Transform player;

	public FMODAsset song;

	FMOD.Studio.EventInstance thesong;

	public float maxDist = 700;
	public float maxVol = 1;

	float volume = 0;

	// Use this for initialization
	void Start () {
		thesong = FMOD_StudioSystem.instance.GetEvent ("event:/" + song.name);
	}
	
	// Update is called once per frame
	void Update () {

		float dist = Vector3.Distance (player.position, transform.position);
		float vol = Mathf.Lerp (0, maxVol, dist / maxDist+0.1f);

		if (vol <= 0) {
			thesong.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);
			volume = vol;
		}
		else thesong.setVolume (vol);


            
	}

	void OnTriggerEnter(Collider other) {

		Debug.Log ("fakkshit");

		if (other.CompareTag ("Player") /*TODO IN CAVE*/) {
			Debug.Log ("hej");
			if(volume <= 0)
				thesong.start();
		}

	}
}
