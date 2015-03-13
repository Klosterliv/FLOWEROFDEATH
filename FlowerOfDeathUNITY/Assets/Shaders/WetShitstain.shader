// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,ufog:True,aust:False,igpj:True,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1692,x:32719,y:32712,varname:node_1692,prsc:2|normal-522-RGB,emission-3073-OUT,alpha-5294-OUT;n:type:ShaderForge.SFN_Color,id:2882,x:31831,y:32717,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:_Tint,prsc:2,glob:False,c1:0.9338235,c2:0.3776492,c3:0.3776492,c4:1;n:type:ShaderForge.SFN_Color,id:5863,x:31831,y:32877,ptovrint:False,ptlb:ShoreTint,ptin:_ShoreTint,varname:_ShoreTint,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:2386,x:31655,y:33240,varname:node_2386,prsc:2|DIST-8089-OUT;n:type:ShaderForge.SFN_SceneDepth,id:5493,x:32118,y:33374,varname:node_5493,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8089,x:31455,y:33388,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:_DepthBlend,prsc:2,glob:False,v1:15;n:type:ShaderForge.SFN_Multiply,id:1539,x:31988,y:33054,varname:node_1539,prsc:2|A-3789-OUT,B-2386-OUT;n:type:ShaderForge.SFN_OneMinus,id:512,x:32458,y:33098,varname:node_512,prsc:2|IN-7720-OUT;n:type:ShaderForge.SFN_Lerp,id:3073,x:32228,y:32784,varname:node_3073,prsc:2|A-2882-RGB,B-5863-RGB,T-2386-OUT;n:type:ShaderForge.SFN_Fresnel,id:4835,x:31029,y:33002,varname:node_4835,prsc:2|EXP-9472-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9472,x:31011,y:32844,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:_Fresnel,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Tex2d,id:522,x:32184,y:32497,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,ntxv:3,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:4560,x:31158,y:33170,varname:node_4560,prsc:2|IN-4835-OUT;n:type:ShaderForge.SFN_ViewVector,id:4344,x:31405,y:32746,varname:node_4344,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5330,x:31405,y:32871,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:611,x:31618,y:32842,varname:node_611,prsc:2,dt:1|A-4344-OUT,B-5330-OUT;n:type:ShaderForge.SFN_Exp,id:8985,x:31257,y:33388,varname:node_8985,prsc:2,et:0;n:type:ShaderForge.SFN_Power,id:8634,x:31346,y:32502,varname:node_8634,prsc:2|VAL-611-OUT,EXP-9472-OUT;n:type:ShaderForge.SFN_Vector1,id:5294,x:32304,y:32951,varname:node_5294,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:7720,x:32231,y:33069,varname:node_7720,prsc:2,frmn:0,frmx:1,tomn:0.2,tomx:1|IN-1539-OUT;n:type:ShaderForge.SFN_Multiply,id:3789,x:31488,y:33059,varname:node_3789,prsc:2|A-611-OUT,B-9472-OUT;proporder:8089-2882-5863-9472-522;pass:END;sub:END;*/

Shader "Cloisterlife/WetShitstain" {
    Properties {
        _DepthBlend ("DepthBlend", Float ) = 15
        _Tint ("Tint", Color) = (0.9338235,0.3776492,0.3776492,1)
        _ShoreTint ("ShoreTint", Color) = (0.5,0.5,0.5,1)
        _Fresnel ("Fresnel", Float ) = 3
        _Normal ("Normal", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
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
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Tint;
            uniform float4 _ShoreTint;
            uniform float _DepthBlend;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 binormalDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float node_2386 = saturate((sceneZ-partZ)/_DepthBlend);
                float3 emissive = lerp(_Tint.rgb,_ShoreTint.rgb,node_2386);
                float3 finalColor = emissive;
                return fixed4(finalColor,1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
