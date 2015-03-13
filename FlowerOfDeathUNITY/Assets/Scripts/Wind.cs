using UnityEngine;
using System.Collections;

public class Wind : MonoBehaviour {

    public Transform player;

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

    float time = 1;
    public float timeFactor = 1f;
    //float lerptime


    Texture2D windTexture;

    public GameObject debugRender;

    [Header("Wind Settings")]
    public string WindMapName = "_WindMap";
    public string WindMapScaleName = "_WindMapScale";
    public float WindMapScale = 1000f;
    public int WindMapResolutionX, WindMapResolutionY;
    public float noiseScale = 0.05f;
    public string PlayerWindName = "_PlayerWind";
    public string PlayerPosName = "_PlayerPos";
    public string PlayerScaleName = "_PlayerWindScale";

    Color[,] windMapData;
    Color[,] playerWindData;
    public int playerWindRes = 8;
    public float playerWindScale = 100f;
    Texture2D playerWind;
    public Texture2D playerWindBase;

	// Use this for initialization
	void Start () {

        windMapData = new Color[WindMapResolutionX,WindMapResolutionY];
        playerWindData = new Color[playerWindRes, playerWindRes];

        playerWind = new Texture2D(playerWindRes, playerWindRes);
        windTexture = new Texture2D(WindMapResolutionX, WindMapResolutionY);

        Vector4 newWind = new Vector4(wind.x,wind.y,wind.z,windStrength.Evaluate(time));

        windNow = wind;

        WindPreWarm();

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

        
        WindUpdate();
        PlayerWind();
        debugRender.renderer.material.SetTexture("_MainTex", playerWind);
	
        
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

    void WindPreWarm() {
        Color tempC = new Color(0,0,0);
        //float time = Time.time+1;

        time = 0.1f;

        for (int x = WindMapResolutionX - 1; x >= 0; x--) {
            float xc = x*noiseScale;
            for (int y = WindMapResolutionY - 1; y >= 0; y--) {
                tempC.r = Mathf.PerlinNoise(time + xc, time + y*noiseScale);
                //Debug.Log(Mathf.PerlinNoise(time + x, time+y));
                windMapData[x, y] = tempC;

                windTexture.SetPixel(x, y, windMapData[x, y]);

            }
        }
        windTexture.Apply();
    }

    void WindUpdate() {
        
        Color tempC = new Color(0,0,0);
        for (int y = WindMapResolutionY -1; y >= 0; y--) {
            tempC.r = Mathf.PerlinNoise(0, Time.time + y*noiseScale);
            //tempC.g = Mathf.PerlinNoise(0, Time.time+5 + y * noiseScale);
            tempC.b = Mathf.PerlinNoise(0, Time.time+10 + y * noiseScale);

            windMapData[0,y] = tempC;
        }

        for (int x = WindMapResolutionX - 1; x > 0; x--) {
            for (int y = WindMapResolutionY - 1; y >= 0; y--) {
                windMapData[x, y] = windMapData[x - 1, y];
                windTexture.SetPixel(x, y, windMapData[x, y]);

            }
        }
        /*
        Color tempC = new Color(0, 0, 0);
        for (int x = WindMapResolutionX - 1; x >= 0; x--) {
            for (int y = WindMapResolutionY - 1; y >= 0; y--) {

                tempC.r = Mathf.PerlinNoise(Time.time + x * noiseScale, y*noiseScale);
                windMapData[x, y] = tempC;
                windTexture.SetPixel(x, y, windMapData[x, y]);

            }
        }*/

        windTexture.Apply();
    }

    void PlayerWind() {

        Vector4 ppos = new Vector4(player.position.x, player.position.y, player.position.z, 0);

        for (int x = playerWindRes - 1; x >= 0; x--) {
            for (int y = playerWindRes - 1; y >= 0; y--) {
                playerWindData[x, y] = Color.black;

                playerWind.SetPixel(x, y, playerWindData[x, y]);
            }
        }

        int coord = playerWindRes / 2;
        playerWindData[coord, coord] = Color.red;
        playerWind.SetPixel(coord, coord, playerWindData[coord, coord]);

        playerWind.Apply();

        Shader.SetGlobalVector(PlayerPosName, ppos);
        Shader.SetGlobalTexture(PlayerWindName, playerWindBase);
        Shader.SetGlobalFloat(PlayerScaleName, playerWindScale);

    }

}
