// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,ufog:True,aust:False,igpj:True,qofs:0,qpre:1,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9339,x:32854,y:32686,varname:node_9339,prsc:2|emission-2744-RGB,custl-1708-OUT,alpha-9898-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4254,x:31939,y:33297,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_4254,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:4894,x:32254,y:32831,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_4894,prsc:2,glob:False,c1:0.3939446,c2:0.9705882,c3:0.2497837,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3391,x:32267,y:33288,varname:node_3391,prsc:2|EXP-4254-OUT;n:type:ShaderForge.SFN_OneMinus,id:7187,x:32483,y:33335,varname:node_7187,prsc:2|IN-3391-OUT;n:type:ShaderForge.SFN_Power,id:1213,x:32211,y:33163,varname:node_1213,prsc:2|VAL-7187-OUT,EXP-6000-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6000,x:31816,y:33206,ptovrint:False,ptlb:Fresnel power,ptin:_Fresnelpower,varname:node_6000,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Tex2d,id:5254,x:31675,y:32618,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_5254,prsc:2,tex:a85caacb16ffb294d9f3ed12930ed3ec,ntxv:0,isnm:False|UVIN-1633-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9391,x:32483,y:33136,varname:node_9391,prsc:2|A-178-OUT,B-1213-OUT;n:type:ShaderForge.SFN_Add,id:178,x:31955,y:33068,varname:node_178,prsc:2|A-5254-B,B-6470-OUT;n:type:ShaderForge.SFN_Vector1,id:6470,x:31726,y:33033,varname:node_6470,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ViewPosition,id:5360,x:30875,y:32691,varname:node_5360,prsc:2;n:type:ShaderForge.SFN_ScreenParameters,id:7161,x:31638,y:33419,varname:node_7161,prsc:2;n:type:ShaderForge.SFN_ProjectionParameters,id:3885,x:31587,y:33033,varname:node_3885,prsc:2;n:type:ShaderForge.SFN_Time,id:2950,x:31611,y:33146,varname:node_2950,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:1633,x:31302,y:32589,varname:node_1633,prsc:2,sctp:0;n:type:ShaderForge.SFN_Power,id:9898,x:32442,y:33003,varname:node_9898,prsc:2|VAL-1213-OUT,EXP-4539-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6319,x:31845,y:32782,varname:node_6319,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3903,x:32122,y:32777,varname:node_3903,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1708,x:32478,y:32658,varname:node_1708,prsc:2|A-4894-RGB,B-6244-OUT,C-3078-OUT;n:type:ShaderForge.SFN_Multiply,id:4539,x:32211,y:33003,varname:node_4539,prsc:2|A-4634-OUT,B-8650-OUT,C-178-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4634,x:32083,y:32921,ptovrint:False,ptlb:test,ptin:_test,varname:node_4634,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Dot,id:3078,x:31992,y:32404,varname:node_3078,prsc:2,dt:1|A-8006-OUT,B-425-OUT;n:type:ShaderForge.SFN_NormalVector,id:8006,x:31680,y:32272,prsc:2,pt:False;n:type:ShaderForge.SFN_Binormal,id:9189,x:31764,y:32113,varname:node_9189,prsc:2;n:type:ShaderForge.SFN_LightVector,id:425,x:31647,y:32441,varname:node_425,prsc:2;n:type:ShaderForge.SFN_AmbientLight,id:2744,x:32634,y:32571,varname:node_2744,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4659,x:31504,y:32808,ptovrint:False,ptlb:node_4659,ptin:_node_4659,varname:node_4659,prsc:2,ntxv:0,isnm:False|UVIN-3226-OUT;n:type:ShaderForge.SFN_Add,id:8650,x:31955,y:32954,varname:node_8650,prsc:2|A-6310-OUT,B-6470-OUT;n:type:ShaderForge.SFN_Multiply,id:3226,x:31341,y:32779,varname:node_3226,prsc:2|A-1633-UVOUT,B-2580-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7897,x:30857,y:32845,varname:node_7897,prsc:2;n:type:ShaderForge.SFN_Distance,id:2580,x:31105,y:32779,varname:node_2580,prsc:2|A-5360-XYZ,B-7897-XYZ;n:type:ShaderForge.SFN_OneMinus,id:6310,x:31692,y:32850,varname:node_6310,prsc:2|IN-4659-B;n:type:ShaderForge.SFN_Lerp,id:6244,x:32154,y:32613,varname:node_6244,prsc:2|A-8678-OUT,B-1919-OUT,T-9158-OUT;n:type:ShaderForge.SFN_Vector3,id:8678,x:31895,y:32586,varname:node_8678,prsc:2,v1:0.01459775,v2:0.3308824,v3:0.09530481;n:type:ShaderForge.SFN_Vector3,id:1919,x:31895,y:32669,varname:node_1919,prsc:2,v1:0.9034482,v2:1,v3:0;n:type:ShaderForge.SFN_RemapRange,id:9158,x:32002,y:32739,varname:node_9158,prsc:2,frmn:0,frmx:10,tomn:0,tomx:1|IN-6319-OUT;proporder:4254-4894-6000-5254-4634-4659;pass:END;sub:END;*/

Shader "Shader Forge/EdgeFade" {
    Properties {
        _Fresnel ("Fresnel", Float ) = 1
        _Tint ("Tint", Color) = (0.3939446,0.9705882,0.2497837,1)
        _Fresnelpower ("Fresnel power", Float ) = 5
        _alpha ("alpha", 2D) = "white" {}
        _test ("test", Float ) = 0
        _node_4659 ("node_4659", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Fresnel;
            uniform float4 _Tint;
            uniform float _Fresnelpower;
            uniform sampler2D _alpha; uniform float4 _alpha_ST;
            uniform float _test;
            uniform sampler2D _node_4659; uniform float4 _node_4659_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
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
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float3 emissive = UNITY_LIGHTMODEL_AMBIENT.rgb;
                float3 finalColor = emissive + (_Tint.rgb*lerp(float3(0.01459775,0.3308824,0.09530481),float3(0.9034482,1,0),(attenuation*0.1+0.0))*max(0,dot(i.normalDir,lightDirection)));
                float node_1213 = pow((1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)),_Fresnelpower);
                float2 node_3226 = (i.screenPos.rg*distance(_WorldSpaceCameraPos,i.posWorld.rgb));
                float4 _node_4659_var = tex2D(_node_4659,TRANSFORM_TEX(node_3226, _node_4659));
                float node_6470 = 0.1;
                float4 _alpha_var = tex2D(_alpha,TRANSFORM_TEX(i.screenPos.rg, _alpha));
                float node_178 = (_alpha_var.b+node_6470);
                return fixed4(finalColor,pow(node_1213,(_test*((1.0 - _node_4659_var.b)+node_6470)*node_178)));
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
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
            uniform float _Fresnel;
            uniform float4 _Tint;
            uniform float _Fresnelpower;
            uniform sampler2D _alpha; uniform float4 _alpha_ST;
            uniform float _test;
            uniform sampler2D _node_4659; uniform float4 _node_4659_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
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
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (_Tint.rgb*lerp(float3(0.01459775,0.3308824,0.09530481),float3(0.9034482,1,0),(attenuation*0.1+0.0))*max(0,dot(i.normalDir,lightDirection)));
                float node_1213 = pow((1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)),_Fresnelpower);
                float2 node_3226 = (i.screenPos.rg*distance(_WorldSpaceCameraPos,i.posWorld.rgb));
                float4 _node_4659_var = tex2D(_node_4659,TRANSFORM_TEX(node_3226, _node_4659));
                float node_6470 = 0.1;
                float4 _alpha_var = tex2D(_alpha,TRANSFORM_TEX(i.screenPos.rg, _alpha));
                float node_178 = (_alpha_var.b+node_6470);
                return fixed4(finalColor * pow(node_1213,(_test*((1.0 - _node_4659_var.b)+node_6470)*node_178)),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
