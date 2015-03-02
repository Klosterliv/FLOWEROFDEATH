using UnityEngine;
using System.Collections;

public class SpeedEffect : MonoBehaviour {

    public Transform player;
    public ScreenOverlay overlay;

    public AnimationCurve rateBySpeed;
    public AnimationCurve speedBySpeed;
    public AnimationCurve scaleBySpeed;
    public AnimationCurve overlayBySpeed;
    

    Vector3 scale;


	// Use this for initialization
	void Start () {
        scale = player.localScale;
	}
	
	// Update is called once per frame
	void Update () {

        float v = player.rigidbody.velocity.magnitude;

        particleSystem.emissionRate = rateBySpeed.Evaluate(v);
        particleSystem.startSpeed = speedBySpeed.Evaluate(v);
        transform.localScale = scale*scaleBySpeed.Evaluate(v);
        overlay.intensity = overlayBySpeed.Evaluate(v);

	}
}
