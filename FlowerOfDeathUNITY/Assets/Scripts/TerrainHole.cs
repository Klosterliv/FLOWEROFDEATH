using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TerrainHole : MonoBehaviour {

    Collider collider;

    public int avoidLayer = 11;
    public int normalLayer = 8;

    List<GameObject> contained;

    
	// Use this for initialization
	void Start () {

        contained = new List<GameObject>();
	    
	}
	
	// Update is called once per frame
	void LateUpdate () {
        contained.ForEach(SetLayer);
	
	}

    void OnTriggerEnter(Collider other) {
        if (!contained.Contains(other.gameObject)) {
            contained.Add(other.gameObject);
        }
    }
    void OnTriggerExit(Collider other) {

        //TODO :: CAM
        if (contained.Contains(other.gameObject)) {
            contained.Remove(other.gameObject);
            other.gameObject.layer = normalLayer;

            if (other.gameObject.CompareTag("Player")) {
                PlayerMovement pmov = (PlayerMovement)other.gameObject.GetComponent(typeof(PlayerMovement));
                pmov.SetInCave(false);
            }
        }

    }
    void OnTriggerStay(Collider other) {
        if (!contained.Contains(other.gameObject)) {
            contained.Add(other.gameObject);
        }
    }
    void SetLayer(GameObject belayered) {
        belayered.layer = avoidLayer;
        if (belayered.CompareTag("Player")) {
            PlayerMovement pmov = (PlayerMovement)belayered.GetComponent(typeof(PlayerMovement));
            pmov.SetInCave(true);
        }
    }
}
