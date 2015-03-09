using UnityEngine;
using System.Collections;

public class Wind : MonoBehaviour {

    public Texture2D mask1;
    public Texture2D mask2;

    public AnimationCurve maskBlend;


    public AnimationCurve windStrength;
    public AnimationCurve windDirLerp;

    public Vector3 wind;
    public Vector3 windTarget;

    public float windMultiplier = 1;

    Vector3 windNow;

    //public Vector4 wind;

    public Shader treeShader;

    float time = 0;
    public float timeFactor = 1f;
    //float lerptime


    Texture2D windTexture;

    public GameObject debugRender;

    public string WindMapName = "_WindMap";
    public string WindMapScaleName = "_WindMapScale";
    public float WindMapScale = 1000f;

	// Use this for initialization
	void Start () {

        windTexture = new Texture2D(100, 100);

        Vector4 newWind = new Vector4(wind.x,wind.y,wind.z,windStrength.Evaluate(time));

        windNow = wind;

        //SimpleWindPreWarm();

        //treeShader.SetGlobalVector("_Wind", wind);
        Shader.SetGlobalVector("_Wind", newWind);
        Shader.SetGlobalFloat(WindMapScaleName, WindMapScale);
        Shader.SetGlobalTexture("_mask1", mask1);
        Shader.SetGlobalTexture("_mask2", mask2);
        Shader.SetGlobalFloat("_blendLerp", maskBlend.Evaluate(time));
        //Shader.Find
	
	}
	
	// Update is called once per frame
	void Update () {

        time += Time.deltaTime/timeFactor;

        
        windNow = Vector3.Lerp(wind,windTarget,windDirLerp.Evaluate(time));

        Vector4 newWind = new Vector4(windNow.x, windNow.y, windNow.z, windStrength.Evaluate(time)*windMultiplier);

        Shader.SetGlobalVector("_Wind", newWind);

        Shader.SetGlobalFloat("_blendLerp", maskBlend.Evaluate(time));

        Shader.SetGlobalTexture("_WindMap", windTexture);

        Shader.SetGlobalTexture(WindMapName, windTexture);
        Shader.SetGlobalFloat(WindMapScaleName, WindMapScale);

        SimpleWind2();

        debugRender.renderer.material.SetTexture("_MainTex", windTexture);
	
        
	}

    void SimpleWind() {

        for (int i = windTexture.width - 1; i >= 0; i--) {
            //Debug.Log (i + " " + soundtexture.GetPixel(i-1,0));
            windTexture.SetPixel(i, 0, windTexture.GetPixel(i - 1, 0));
            //soundtexture.Apply();
        }
        float rand = (Random.Range(0f, 5f) + windTexture.GetPixel(2, 0).a) / 2;

        Color newcolor = new Color(windNow.x, windNow.y, windNow.z, windStrength.Evaluate(time)*windMultiplier); //Debug.Log(newcolor);
        windTexture.SetPixel(0, 0, newcolor);

        windTexture.Apply();
		

    }
    void SimpleWindPreWarm() {

        float fakeTime = 0;

        for (int t = windTexture.width - 1; t >= 0; t--) {

            windNow = Vector3.Lerp(wind, windTarget, windDirLerp.Evaluate(fakeTime));

            for (int i = windTexture.width - 2; i >= 0; i--) {
                //Debug.Log (i + " " + soundtexture.GetPixel(i-1,0));
                windTexture.SetPixel(i, 0, windTexture.GetPixel(i - 1, 0));
                //soundtexture.Apply();
            }

            float rand = (Random.Range(0f, 5f) + windTexture.GetPixel(2, 0).a) / 2;

            Color newcolor = new Color(windNow.x, windNow.y, windNow.z, windStrength.Evaluate(time)*windMultiplier); //Debug.Log(newcolor);
            windTexture.SetPixel(1, 0, newcolor);

            windTexture.Apply();

            fakeTime += 0.002f;

        }


    }

    void SimpleWind2() {

        Color tempC = new Color(0, 0, 0, 1);

        for (int i = windTexture.width - 1; i >= 0; i--) {

            for (int ii = windTexture.height - 1; ii >= 0; ii--) {

                tempC.r = Mathf.PerlinNoise(i + Time.time, ii + Time.time);
                //tempC.g = Mathf.PerlinNoise(i + Time.time + 50, ii + Time.time + 50);
                //tempC.b = Mathf.PerlinNoise(i + Time.time+1600, ii + Time.time+1600);

                windTexture.SetPixel(i, ii, tempC);
            }
                //Debug.Log (i + " " + soundtexture.GetPixel(i-1,0));
                
            //soundtexture.Apply();
        }
        //float rand = (Random.Range(0f, 5f) + windTexture.GetPixel(2, 0).a) / 2;

        //Color newcolor = new Color(windNow.x, windNow.y, windNow.z, windStrength.Evaluate(time) * windMultiplier); //Debug.Log(newcolor);
        //windTexture.SetPixel(0, 0, newcolor);

        windTexture.Apply();

    }

}
