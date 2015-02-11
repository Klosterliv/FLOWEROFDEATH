// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:True,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,ufog:True,aust:False,igpj:True,qofs:0,qpre:2,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34232,y:32397,varname:node_1,prsc:2|custl-166-OUT,alpha-5535-OUT,voffset-140-OUT;n:type:ShaderForge.SFN_Abs,id:21,x:32544,y:32681,varname:node_21,prsc:2;n:type:ShaderForge.SFN_Frac,id:22,x:32204,y:32627,varname:node_22,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:139,x:33431,y:32787,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:140,x:33653,y:32838,varname:node_140,prsc:2|A-139-OUT,B-142-OUT;n:type:ShaderForge.SFN_ValueProperty,id:142,x:33431,y:32952,ptovrint:False,ptlb:Bulge Scale,ptin:_BulgeScale,varname:node_7404,prsc:2,glob:False,v1:0.2;n:type:ShaderForge.SFN_Lerp,id:150,x:33685,y:32379,varname:node_150,prsc:2|A-267-RGB,B-265-OUT,T-8694-OUT;n:type:ShaderForge.SFN_Tex2d,id:151,x:33558,y:31864,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_3498,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:166,x:33089,y:32498,cmnt:Glow,varname:node_166,prsc:2|A-168-RGB,B-8677-OUT;n:type:ShaderForge.SFN_Color,id:168,x:32897,y:32412,ptovrint:False,ptlb:Glow Color,ptin:_GlowColor,varname:node_3116,prsc:2,glob:False,c1:1,c2:0.2391481,c3:0.1102941,c4:1;n:type:ShaderForge.SFN_Vector3,id:265,x:33366,y:32404,varname:node_265,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:267,x:33450,y:32244,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:node_8529,prsc:2,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Vector1,id:4921,x:33784,y:32317,varname:node_4921,prsc:2,v1:1;n:type:ShaderForge.SFN_Normalize,id:4935,x:33859,y:32379,varname:node_4935,prsc:2|IN-150-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8547,x:32728,y:32833,ptovrint:False,ptlb:Bulge Shape,ptin:_BulgeShape,varname:node_1120,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Vector1,id:8608,x:33333,y:31864,varname:node_8608,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:8677,x:32897,y:32584,ptovrint:False,ptlb:Glow Intensity,ptin:_GlowIntensity,varname:node_5571,prsc:2,glob:False,v1:1.2;n:type:ShaderForge.SFN_Noise,id:8694,x:32815,y:33137,varname:node_8694,prsc:2|XY-8705-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8705,x:31886,y:32935,varname:node_8705,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:8736,x:32352,y:31897,ptovrint:False,ptlb:alpha1,ptin:_alpha1,varname:node_222,prsc:2,ntxv:0,isnm:False|UVIN-9079-OUT;n:type:ShaderForge.SFN_Tex2d,id:8738,x:32352,y:32067,ptovrint:False,ptlb:alpha2,ptin:_alpha2,varname:node_1280,prsc:2,ntxv:0,isnm:False|UVIN-9081-OUT;n:type:ShaderForge.SFN_Lerp,id:8739,x:32707,y:31476,varname:node_8739,prsc:2|A-8736-RGB,B-8738-RGB,T-8800-OUT;n:type:ShaderForge.SFN_Vector1,id:8800,x:32385,y:31574,varname:node_8800,prsc:2,v1:0;n:type:ShaderForge.SFN_Transform,id:8925,x:33478,y:31648,varname:node_8925,prsc:2,tffrom:0,tfto:1;n:type:ShaderForge.SFN_Frac,id:8926,x:33290,y:31569,varname:node_8926,prsc:2|IN-8739-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8935,x:34245,y:33277,varname:node_8935,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9068,x:31530,y:31767,ptovrint:False,ptlb:offsetX1,ptin:_offsetX1,varname:node_2821,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9070,x:31523,y:32127,ptovrint:False,ptlb:offsetX2,ptin:_offsetX2,varname:node_9995,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9072,x:31530,y:31841,ptovrint:False,ptlb:offsetY1,ptin:_offsetY1,varname:node_3788,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9074,x:31523,y:32192,ptovrint:False,ptlb:offsetY2,ptin:_offsetY2,varname:node_1284,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Append,id:9075,x:31800,y:31811,varname:node_9075,prsc:2|A-9068-OUT,B-9072-OUT;n:type:ShaderForge.SFN_Append,id:9077,x:31796,y:32139,varname:node_9077,prsc:2|A-9070-OUT,B-9074-OUT;n:type:ShaderForge.SFN_TexCoord,id:9078,x:31796,y:31978,varname:node_9078,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:9079,x:32151,y:31869,varname:node_9079,prsc:2|A-9075-OUT,B-9078-UVOUT;n:type:ShaderForge.SFN_Add,id:9081,x:32151,y:32084,varname:node_9081,prsc:2|A-9078-UVOUT,B-9077-OUT;n:type:ShaderForge.SFN_Multiply,id:9082,x:33712,y:32105,varname:node_9082,prsc:2|A-8736-A,B-8738-A;n:type:ShaderForge.SFN_ValueProperty,id:9129,x:33299,y:33294,ptovrint:False,ptlb:depth Blend,ptin:_depthBlend,varname:node_9684,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Fresnel,id:9130,x:33839,y:33483,varname:node_9130,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9131,x:33839,y:33334,varname:node_9131,prsc:2|A-9130-OUT,B-9165-OUT;n:type:ShaderForge.SFN_Power,id:9133,x:33839,y:33186,varname:node_9133,prsc:2|VAL-9131-OUT,EXP-9129-OUT;n:type:ShaderForge.SFN_Multiply,id:9134,x:33944,y:32641,varname:node_9134,prsc:2|A-9082-OUT,B-9133-OUT;n:type:ShaderForge.SFN_Vector1,id:9165,x:33530,y:33465,varname:node_9165,prsc:2,v1:5;n:type:ShaderForge.SFN_OneMinus,id:9182,x:34142,y:33068,varname:node_9182,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9185,x:34291,y:32963,varname:node_9185,prsc:2;n:type:ShaderForge.SFN_Divide,id:5535,x:34036,y:32769,varname:node_5535,prsc:2|A-9082-OUT,B-9133-OUT;n:type:ShaderForge.SFN_Add,id:1666,x:33503,y:33075,varname:node_1666,prsc:2;proporder:151-267-168-142-8547-8677-8736-8738-9068-9070-9072-9074-9129;pass:END;sub:END;*/

Shader "Effects/vertanimtest" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normals ("Normals", 2D) = "black" {}
        _GlowColor ("Glow Color", Color) = (1,0.2391481,0.1102941,1)
        _BulgeScale ("Bulge Scale", Float ) = 0.2
        _BulgeShape ("Bulge Shape", Float ) = 5
        _GlowIntensity ("Glow Intensity", Float ) = 1.2
        _alpha1 ("alpha1", 2D) = "white" {}
        _alpha2 ("alpha2", 2D) = "white" {}
        _offsetX1 ("offsetX1", Float ) = 0
        _offsetX2 ("offsetX2", Float ) = 0
        _offsetY1 ("offsetY1", Float ) = 0
        _offsetY2 ("offsetY2", Float ) = 0
        _depthBlend ("depth Blend", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="AlphaTest"
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
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float _BulgeScale;
            uniform float4 _GlowColor;
            uniform float _GlowIntensity;
            uniform sampler2D _alpha1; uniform float4 _alpha1_ST;
            uniform sampler2D _alpha2; uniform float4 _alpha2_ST;
            uniform float _offsetX1;
            uniform float _offsetX2;
            uniform float _offsetY1;
            uniform float _offsetY2;
            uniform float _depthBlend;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                v.vertex.xyz += (v.normal*_BulgeScale);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float3 finalColor = (_GlowColor.rgb*_GlowIntensity);
                float2 node_9079 = (float2(_offsetX1,_offsetY1)+i.uv0);
                float4 _alpha1_var = tex2D(_alpha1,TRANSFORM_TEX(node_9079, _alpha1));
                float2 node_9081 = (i.uv0+float2(_offsetX2,_offsetY2));
                float4 _alpha2_var = tex2D(_alpha2,TRANSFORM_TEX(node_9081, _alpha2));
                float node_9082 = (_alpha1_var.a*_alpha2_var.a);
                float node_9133 = pow(((1.0-max(0,dot(normalDirection, viewDirection)))*5.0),_depthBlend);
                return fixed4(finalColor,(node_9082/node_9133));
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
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float _BulgeScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float3 normalDir : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                v.vertex.xyz += (v.normal*_BulgeScale);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            uniform float _BulgeScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                v.vertex.xyz += (v.normal*_BulgeScale);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
