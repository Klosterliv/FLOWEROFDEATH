// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:True,ufog:True,aust:False,igpj:True,qofs:0,qpre:4,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9339,x:33238,y:32723,varname:node_9339,prsc:2|emission-2744-RGB,custl-7645-OUT,alpha-4769-OUT,voffset-5736-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4254,x:31990,y:33656,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_4254,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:4894,x:32241,y:33069,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_4894,prsc:2,glob:False,c1:0.3939446,c2:0.9705882,c3:0.2497837,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3391,x:32318,y:33647,varname:node_3391,prsc:2|EXP-4254-OUT;n:type:ShaderForge.SFN_OneMinus,id:7187,x:32534,y:33694,varname:node_7187,prsc:2|IN-3391-OUT;n:type:ShaderForge.SFN_Power,id:1213,x:32262,y:33522,varname:node_1213,prsc:2|VAL-7187-OUT,EXP-6000-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6000,x:31867,y:33565,ptovrint:False,ptlb:Fresnel power,ptin:_Fresnelpower,varname:node_6000,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Tex2d,id:5254,x:31675,y:32618,ptovrint:False,ptlb:Alpha Contribution,ptin:_AlphaContribution,varname:node_5254,prsc:2,ntxv:0,isnm:False|UVIN-1633-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9391,x:32534,y:33495,varname:node_9391,prsc:2|A-178-OUT,B-1213-OUT;n:type:ShaderForge.SFN_Add,id:178,x:32006,y:33427,varname:node_178,prsc:2|A-4805-OUT,B-6470-OUT;n:type:ShaderForge.SFN_Vector1,id:6470,x:31777,y:33392,varname:node_6470,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ViewPosition,id:5360,x:30315,y:32862,varname:node_5360,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:1633,x:30760,y:32741,varname:node_1633,prsc:2,sctp:0;n:type:ShaderForge.SFN_Power,id:9898,x:32493,y:33362,varname:node_9898,prsc:2|VAL-1213-OUT,EXP-4539-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6319,x:31895,y:32813,varname:node_6319,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3903,x:32241,y:32927,varname:node_3903,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1708,x:32510,y:32686,varname:node_1708,prsc:2|A-3078-OUT,B-6244-OUT,C-6319-OUT,D-3903-RGB,E-4894-RGB;n:type:ShaderForge.SFN_Multiply,id:4539,x:32262,y:33362,varname:node_4539,prsc:2|A-4634-OUT,B-8650-OUT,C-178-OUT,D-8880-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4634,x:32019,y:33243,ptovrint:False,ptlb:Edge Fade,ptin:_EdgeFade,varname:node_4634,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Dot,id:3078,x:32116,y:32384,varname:node_3078,prsc:2,dt:1|A-8006-OUT,B-425-OUT;n:type:ShaderForge.SFN_NormalVector,id:8006,x:31668,y:32269,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:425,x:31647,y:32441,varname:node_425,prsc:2;n:type:ShaderForge.SFN_AmbientLight,id:2744,x:32634,y:32571,varname:node_2744,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4659,x:31376,y:32848,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_4659,prsc:2,ntxv:0,isnm:False|UVIN-6017-UVOUT;n:type:ShaderForge.SFN_Add,id:8650,x:32006,y:33313,varname:node_8650,prsc:2|A-5254-G,B-6470-OUT;n:type:ShaderForge.SFN_Multiply,id:3226,x:30799,y:32931,varname:node_3226,prsc:2|A-1633-UVOUT,B-2580-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7897,x:30315,y:32997,varname:node_7897,prsc:2;n:type:ShaderForge.SFN_Distance,id:2580,x:30563,y:32931,varname:node_2580,prsc:2|A-5360-XYZ,B-7897-XYZ;n:type:ShaderForge.SFN_OneMinus,id:6310,x:31646,y:33297,varname:node_6310,prsc:2|IN-9685-OUT;n:type:ShaderForge.SFN_Lerp,id:6244,x:32150,y:32669,varname:node_6244,prsc:2|A-8678-OUT,B-1919-OUT,T-4659-G;n:type:ShaderForge.SFN_Vector3,id:8678,x:31895,y:32541,varname:node_8678,prsc:2,v1:0,v2:0.4191176,v3:0.03757606;n:type:ShaderForge.SFN_Vector3,id:1919,x:31895,y:32632,varname:node_1919,prsc:2,v1:0.9034482,v2:20,v3:0;n:type:ShaderForge.SFN_RemapRange,id:9158,x:32825,y:32969,varname:node_9158,prsc:2,frmn:0,frmx:1,tomn:1,tomx:20|IN-8379-OUT;n:type:ShaderForge.SFN_If,id:4769,x:32663,y:33129,varname:node_4769,prsc:2|A-8590-OUT,B-9898-OUT,GT-595-OUT,EQ-9898-OUT,LT-9898-OUT;n:type:ShaderForge.SFN_Vector1,id:8590,x:32427,y:33213,varname:node_8590,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:595,x:32427,y:33264,varname:node_595,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:6017,x:31155,y:33025,varname:node_6017,prsc:2,uv:0;n:type:ShaderForge.SFN_Noise,id:8880,x:31383,y:33006,varname:node_8880,prsc:2|XY-6017-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5736,x:33153,y:33855,varname:node_5736,prsc:2|A-3482-RGB,B-4111-OUT,C-3422-OUT;n:type:ShaderForge.SFN_Tex2d,id:6290,x:32092,y:33953,ptovrint:False,ptlb:Wind Noise,ptin:_WindNoise,varname:node_6290,prsc:2,ntxv:0,isnm:False|UVIN-6495-UVOUT;n:type:ShaderForge.SFN_Rotator,id:6495,x:31707,y:33852,varname:node_6495,prsc:2|UVIN-6017-UVOUT;n:type:ShaderForge.SFN_Vector4Property,id:9118,x:32607,y:34506,ptovrint:False,ptlb:_Wind,ptin:_Wind,varname:node_9118,prsc:2,glob:True,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_ValueProperty,id:9135,x:30554,y:33743,ptovrint:False,ptlb:_blendLerp,ptin:_blendLerp,varname:node_9135,prsc:2,glob:True,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:3176,x:30554,y:33536,ptovrint:False,ptlb:_mask1,ptin:_mask1,varname:node_3176,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:6595,x:30554,y:33875,ptovrint:False,ptlb:_mask2,ptin:_mask2,varname:node_3176,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1359,x:30829,y:33603,varname:node_1359,prsc:2,ntxv:0,isnm:False|UVIN-3226-OUT,TEX-3176-TEX;n:type:ShaderForge.SFN_Tex2d,id:3324,x:30829,y:33842,varname:node_3324,prsc:2,ntxv:0,isnm:False|UVIN-3226-OUT,TEX-6595-TEX;n:type:ShaderForge.SFN_Multiply,id:7548,x:31168,y:33849,varname:node_7548,prsc:2|A-9135-OUT,B-3324-R;n:type:ShaderForge.SFN_Add,id:9685,x:31399,y:33730,varname:node_9685,prsc:2|A-7843-OUT,B-7548-OUT;n:type:ShaderForge.SFN_Clamp01,id:4805,x:31646,y:33533,varname:node_4805,prsc:2|IN-9685-OUT;n:type:ShaderForge.SFN_OneMinus,id:4510,x:30974,y:33716,varname:node_4510,prsc:2|IN-9135-OUT;n:type:ShaderForge.SFN_Multiply,id:7843,x:31201,y:33656,varname:node_7843,prsc:2|A-1359-R,B-4510-OUT;n:type:ShaderForge.SFN_Tex2d,id:3482,x:32410,y:34139,varname:node_3482,prsc:2,ntxv:0,isnm:False|UVIN-8890-OUT,TEX-591-TEX;n:type:ShaderForge.SFN_Append,id:5405,x:31328,y:34113,varname:node_5405,prsc:2|A-5945-OUT,B-9036-OUT;n:type:ShaderForge.SFN_Divide,id:8890,x:31755,y:34110,varname:node_8890,prsc:2|A-5405-OUT,B-3701-OUT;n:type:ShaderForge.SFN_Vector1,id:3701,x:31437,y:34292,varname:node_3701,prsc:2,v1:100;n:type:ShaderForge.SFN_ValueProperty,id:5945,x:30914,y:34148,ptovrint:False,ptlb:posX,ptin:_posX,varname:node_5945,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9036,x:30914,y:34226,ptovrint:False,ptlb:posZ,ptin:_posZ,varname:node_5945,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:591,x:32147,y:34288,ptovrint:False,ptlb:_WindMap,ptin:_WindMap,varname:node_591,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3422,x:32854,y:34149,varname:node_3422,prsc:2|A-3482-A,B-2393-OUT;n:type:ShaderForge.SFN_Vector1,id:2393,x:32539,y:34321,varname:node_2393,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:3255,x:32836,y:32815,varname:node_3255,prsc:2|A-1708-OUT,B-9158-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7645,x:33007,y:32858,varname:node_7645,prsc:2,min:0,max:10|IN-3255-OUT;n:type:ShaderForge.SFN_OneMinus,id:8379,x:32663,y:32987,varname:node_8379,prsc:2|IN-4769-OUT;n:type:ShaderForge.SFN_Multiply,id:4111,x:32468,y:33937,varname:node_4111,prsc:2|A-6290-RGB,B-8390-OUT;n:type:ShaderForge.SFN_Vector1,id:8390,x:32271,y:34065,varname:node_8390,prsc:2,v1:0.2;proporder:4254-4894-6000-5254-4634-4659-6290-5945-9036;pass:END;sub:END;*/

Shader "Shader Forge/EdgeFade" {
    Properties {
        _Fresnel ("Fresnel", Float ) = 1
        _Tint ("Tint", Color) = (0.3939446,0.9705882,0.2497837,1)
        _Fresnelpower ("Fresnel power", Float ) = 5
        _AlphaContribution ("Alpha Contribution", 2D) = "white" {}
        _EdgeFade ("Edge Fade", Float ) = 0
        _Diffuse ("Diffuse", 2D) = "white" {}
        _WindNoise ("Wind Noise", 2D) = "white" {}
        _posX ("posX", Float ) = 0
        _posZ ("posZ", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _Fresnel;
            uniform float4 _Tint;
            uniform float _Fresnelpower;
            uniform sampler2D _AlphaContribution; uniform float4 _AlphaContribution_ST;
            uniform float _EdgeFade;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform float _blendLerp;
            uniform sampler2D _mask1; uniform float4 _mask1_ST;
            uniform sampler2D _mask2; uniform float4 _mask2_ST;
            uniform float _posX;
            uniform float _posZ;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                float2 node_8890 = (float2(_posX,_posZ)/100.0);
                float4 node_3482 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_8890, _WindMap),0.0,0));
                float4 node_7905 = _Time + _TimeEditor;
                float node_6495_ang = node_7905.g;
                float node_6495_spd = 1.0;
                float node_6495_cos = cos(node_6495_spd*node_6495_ang);
                float node_6495_sin = sin(node_6495_spd*node_6495_ang);
                float2 node_6495_piv = float2(0.5,0.5);
                float2 node_6495 = (mul(o.uv0-node_6495_piv,float2x2( node_6495_cos, -node_6495_sin, node_6495_sin, node_6495_cos))+node_6495_piv);
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_6495, _WindNoise),0.0,0));
                v.vertex.xyz += (node_3482.rgb*(_WindNoise_var.rgb*0.2)*(node_3482.a*3.0));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float3 emissive = UNITY_LIGHTMODEL_AMBIENT.rgb;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_1213 = pow((1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)),_Fresnelpower);
                float4 _AlphaContribution_var = tex2D(_AlphaContribution,TRANSFORM_TEX(i.screenPos.rg, _AlphaContribution));
                float node_6470 = 0.1;
                float2 node_3226 = (i.screenPos.rg*distance(_WorldSpaceCameraPos,i.posWorld.rgb));
                float4 node_1359 = tex2D(_mask1,TRANSFORM_TEX(node_3226, _mask1));
                float4 node_3324 = tex2D(_mask2,TRANSFORM_TEX(node_3226, _mask2));
                float node_9685 = ((node_1359.r*(1.0 - _blendLerp))+(_blendLerp*node_3324.r));
                float node_178 = (saturate(node_9685)+node_6470);
                float2 node_8880_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_8880_rnd = 4.789*sin(489.123*(node_8880_skew));
                float node_8880 = frac(node_8880_rnd.x*node_8880_rnd.y*(1+node_8880_skew.x));
                float node_9898 = pow(node_1213,(_EdgeFade*(_AlphaContribution_var.g+node_6470)*node_178*node_8880));
                float node_4769_if_leA = step(0.2,node_9898);
                float node_4769_if_leB = step(node_9898,0.2);
                float node_4769 = lerp((node_4769_if_leA*node_9898)+(node_4769_if_leB*0.0),node_9898,node_4769_if_leA*node_4769_if_leB);
                float node_8379 = (1.0 - node_4769);
                float3 finalColor = emissive + clamp(((max(0,dot(i.normalDir,lightDirection))*lerp(float3(0,0.4191176,0.03757606),float3(0.9034482,20,0),_Diffuse_var.g)*attenuation*_LightColor0.rgb*_Tint.rgb)*(node_8379*19.0+1.0)),0,10);
                return fixed4(finalColor,node_4769);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _Fresnel;
            uniform float4 _Tint;
            uniform float _Fresnelpower;
            uniform sampler2D _AlphaContribution; uniform float4 _AlphaContribution_ST;
            uniform float _EdgeFade;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform float _blendLerp;
            uniform sampler2D _mask1; uniform float4 _mask1_ST;
            uniform sampler2D _mask2; uniform float4 _mask2_ST;
            uniform float _posX;
            uniform float _posZ;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                float2 node_8890 = (float2(_posX,_posZ)/100.0);
                float4 node_3482 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_8890, _WindMap),0.0,0));
                float4 node_5876 = _Time + _TimeEditor;
                float node_6495_ang = node_5876.g;
                float node_6495_spd = 1.0;
                float node_6495_cos = cos(node_6495_spd*node_6495_ang);
                float node_6495_sin = sin(node_6495_spd*node_6495_ang);
                float2 node_6495_piv = float2(0.5,0.5);
                float2 node_6495 = (mul(o.uv0-node_6495_piv,float2x2( node_6495_cos, -node_6495_sin, node_6495_sin, node_6495_cos))+node_6495_piv);
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_6495, _WindNoise),0.0,0));
                v.vertex.xyz += (node_3482.rgb*(_WindNoise_var.rgb*0.2)*(node_3482.a*3.0));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_1213 = pow((1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)),_Fresnelpower);
                float4 _AlphaContribution_var = tex2D(_AlphaContribution,TRANSFORM_TEX(i.screenPos.rg, _AlphaContribution));
                float node_6470 = 0.1;
                float2 node_3226 = (i.screenPos.rg*distance(_WorldSpaceCameraPos,i.posWorld.rgb));
                float4 node_1359 = tex2D(_mask1,TRANSFORM_TEX(node_3226, _mask1));
                float4 node_3324 = tex2D(_mask2,TRANSFORM_TEX(node_3226, _mask2));
                float node_9685 = ((node_1359.r*(1.0 - _blendLerp))+(_blendLerp*node_3324.r));
                float node_178 = (saturate(node_9685)+node_6470);
                float2 node_8880_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_8880_rnd = 4.789*sin(489.123*(node_8880_skew));
                float node_8880 = frac(node_8880_rnd.x*node_8880_rnd.y*(1+node_8880_skew.x));
                float node_9898 = pow(node_1213,(_EdgeFade*(_AlphaContribution_var.g+node_6470)*node_178*node_8880));
                float node_4769_if_leA = step(0.2,node_9898);
                float node_4769_if_leB = step(node_9898,0.2);
                float node_4769 = lerp((node_4769_if_leA*node_9898)+(node_4769_if_leB*0.0),node_9898,node_4769_if_leA*node_4769_if_leB);
                float node_8379 = (1.0 - node_4769);
                float3 finalColor = clamp(((max(0,dot(i.normalDir,lightDirection))*lerp(float3(0,0.4191176,0.03757606),float3(0.9034482,20,0),_Diffuse_var.g)*attenuation*_LightColor0.rgb*_Tint.rgb)*(node_8379*19.0+1.0)),0,10);
                return fixed4(finalColor * node_4769,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform float _posX;
            uniform float _posZ;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                float2 node_8890 = (float2(_posX,_posZ)/100.0);
                float4 node_3482 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_8890, _WindMap),0.0,0));
                float4 node_8637 = _Time + _TimeEditor;
                float node_6495_ang = node_8637.g;
                float node_6495_spd = 1.0;
                float node_6495_cos = cos(node_6495_spd*node_6495_ang);
                float node_6495_sin = sin(node_6495_spd*node_6495_ang);
                float2 node_6495_piv = float2(0.5,0.5);
                float2 node_6495 = (mul(o.uv0-node_6495_piv,float2x2( node_6495_cos, -node_6495_sin, node_6495_sin, node_6495_cos))+node_6495_piv);
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_6495, _WindNoise),0.0,0));
                v.vertex.xyz += (node_3482.rgb*(_WindNoise_var.rgb*0.2)*(node_3482.a*3.0));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _WindNoise; uniform float4 _WindNoise_ST;
            uniform float _posX;
            uniform float _posZ;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                float2 node_8890 = (float2(_posX,_posZ)/100.0);
                float4 node_3482 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_8890, _WindMap),0.0,0));
                float4 node_6438 = _Time + _TimeEditor;
                float node_6495_ang = node_6438.g;
                float node_6495_spd = 1.0;
                float node_6495_cos = cos(node_6495_spd*node_6495_ang);
                float node_6495_sin = sin(node_6495_spd*node_6495_ang);
                float2 node_6495_piv = float2(0.5,0.5);
                float2 node_6495 = (mul(o.uv0-node_6495_piv,float2x2( node_6495_cos, -node_6495_sin, node_6495_sin, node_6495_cos))+node_6495_piv);
                float4 _WindNoise_var = tex2Dlod(_WindNoise,float4(TRANSFORM_TEX(node_6495, _WindNoise),0.0,0));
                v.vertex.xyz += (node_3482.rgb*(_WindNoise_var.rgb*0.2)*(node_3482.a*3.0));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
