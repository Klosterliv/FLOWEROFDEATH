// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:Cloisterlife/BaseMap,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:993,x:32719,y:32712,varname:node_993,prsc:2|clip-6452-OUT;n:type:ShaderForge.SFN_Tex2d,id:9187,x:31572,y:33273,varname:node_9187,prsc:2,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False|TEX-5010-TEX;n:type:ShaderForge.SFN_ValueProperty,id:960,x:32488,y:33316,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:_Tesselation,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:5125,x:32448,y:33099,varname:node_5125,prsc:2|A-6369-OUT,B-2664-OUT,C-1551-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6369,x:31960,y:32805,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:_Offset,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_LightAttenuation,id:5162,x:32147,y:32580,varname:node_5162,prsc:2;n:type:ShaderForge.SFN_LightColor,id:84,x:32209,y:32430,varname:node_84,prsc:2;n:type:ShaderForge.SFN_Multiply,id:757,x:32582,y:32552,varname:node_757,prsc:2|A-84-RGB,B-5162-OUT,C-7993-OUT,D-6973-OUT,E-3766-OUT;n:type:ShaderForge.SFN_NormalVector,id:6670,x:33111,y:33419,prsc:2,pt:False;n:type:ShaderForge.SFN_Distance,id:5448,x:32333,y:33400,varname:node_5448,prsc:2|A-7281-XYZ,B-2060-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:7281,x:32081,y:33298,varname:node_7281,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:2060,x:32096,y:33424,varname:node_2060,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8802,x:33111,y:33583,varname:node_8802,prsc:2|A-960-OUT,B-5448-OUT;n:type:ShaderForge.SFN_Divide,id:7542,x:32759,y:33279,varname:node_7542,prsc:2|A-960-OUT,B-1917-OUT;n:type:ShaderForge.SFN_Lerp,id:7993,x:32173,y:32712,varname:node_7993,prsc:2|A-2208-XYZ,B-1698-XYZ,T-2664-OUT;n:type:ShaderForge.SFN_Fresnel,id:7406,x:31929,y:32503,varname:node_7406,prsc:2|EXP-5782-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5782,x:31602,y:32267,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:_Fresnel,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:8571,x:32010,y:32383,varname:node_8571,prsc:2|A-2770-OUT,B-7406-OUT;n:type:ShaderForge.SFN_Vector1,id:2770,x:31776,y:32360,varname:node_2770,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6973,x:32209,y:32223,varname:node_6973,prsc:2|A-5782-OUT,B-8571-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6358,x:32533,y:33733,ptovrint:False,ptlb:distExp,ptin:_distExp,varname:_distExp,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Power,id:41,x:32759,y:33515,varname:node_41,prsc:2|VAL-5448-OUT,EXP-6358-OUT;n:type:ShaderForge.SFN_If,id:1917,x:32515,y:33515,varname:node_1917,prsc:2|A-5448-OUT,B-7522-OUT,GT-1075-OUT,EQ-821-OUT,LT-821-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7522,x:32043,y:33775,ptovrint:False,ptlb:FallOffStart,ptin:_FallOffStart,varname:_FallOffStart,prsc:2,glob:False,v1:400;n:type:ShaderForge.SFN_Subtract,id:1075,x:32200,y:33631,varname:node_1075,prsc:2|A-5448-OUT,B-7522-OUT;n:type:ShaderForge.SFN_Vector1,id:821,x:32043,y:33623,varname:node_821,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:2270,x:30212,y:32666,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:_Splat0,tex:c21e1d3c7015f0d4fb28cf936171e9b7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1891,x:30212,y:32845,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_Splat1,tex:b494399d0f9ee0b49b84b8de7296e719,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3510,x:30212,y:33030,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_Splat2,tex:0bb52c4f1252db9438884c7a5701d0f8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3267,x:30212,y:33203,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_Splat3,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:2595,x:30259,y:32465,ptovrint:False,ptlb:Control,ptin:_Control,varname:_Control,tex:877bc628b69844ba081a63095156a6f1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8051,x:30473,y:32465,varname:node_8051,prsc:2,tex:877bc628b69844ba081a63095156a6f1,ntxv:0,isnm:False|TEX-2595-TEX;n:type:ShaderForge.SFN_Append,id:8615,x:30791,y:32556,varname:node_8615,prsc:2|A-8051-RGB,B-8051-A;n:type:ShaderForge.SFN_Tex2d,id:1708,x:30463,y:32681,varname:node_8066,prsc:2,tex:c21e1d3c7015f0d4fb28cf936171e9b7,ntxv:0,isnm:False|TEX-2270-TEX;n:type:ShaderForge.SFN_Tex2d,id:899,x:30463,y:32861,varname:node_8067,prsc:2,tex:b494399d0f9ee0b49b84b8de7296e719,ntxv:0,isnm:False|TEX-1891-TEX;n:type:ShaderForge.SFN_Tex2d,id:7928,x:30435,y:33053,varname:node_8068,prsc:2,tex:0bb52c4f1252db9438884c7a5701d0f8,ntxv:0,isnm:False|TEX-3510-TEX;n:type:ShaderForge.SFN_Tex2d,id:5243,x:30454,y:33252,varname:node_8069,prsc:2,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False|TEX-3267-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:2656,x:31043,y:32952,varname:node_2656,prsc:2,chbt:0|M-8615-OUT,R-1708-RGB,G-899-RGB,B-7928-RGB,A-5243-RGB,BTM-5243-RGB;n:type:ShaderForge.SFN_Lerp,id:5092,x:31901,y:33216,varname:node_5092,prsc:2|A-9187-RGB,B-2607-RGB,T-6452-OUT;n:type:ShaderForge.SFN_Vector1,id:6452,x:31713,y:33273,varname:node_6452,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:5010,x:31699,y:33387,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:2607,x:31816,y:33359,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:3766,x:32081,y:33080,varname:node_3766,prsc:2|A-2656-OUT,B-5092-OUT,T-6452-OUT;n:type:ShaderForge.SFN_Multiply,id:2685,x:31044,y:33426,varname:node_2685,prsc:2|A-1708-A,B-899-A,C-7928-A,D-5243-A;n:type:ShaderForge.SFN_Tex2dAsset,id:9873,x:31775,y:34218,ptovrint:False,ptlb:_WindMap,ptin:_WindMap,varname:_WindMap,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5948,x:32355,y:33858,varname:_node_5948,prsc:2,ntxv:0,isnm:False|UVIN-333-OUT,TEX-9873-TEX;n:type:ShaderForge.SFN_ValueProperty,id:5570,x:31394,y:33927,ptovrint:False,ptlb:_WindScale,ptin:_WindScale,varname:_node_5570,prsc:2,glob:True,v1:1;n:type:ShaderForge.SFN_Divide,id:333,x:31786,y:33924,varname:node_333,prsc:2|A-2955-OUT,B-5570-OUT;n:type:ShaderForge.SFN_Append,id:2955,x:31825,y:33775,varname:node_2955,prsc:2|A-7281-X,B-7281-Y;n:type:ShaderForge.SFN_Multiply,id:8187,x:32698,y:33876,varname:node_8187,prsc:2|A-5948-RGB,B-9726-OUT,C-5948-A;n:type:ShaderForge.SFN_ValueProperty,id:9726,x:32513,y:34079,ptovrint:False,ptlb:WindTest,ptin:_WindTest,varname:_WindTest,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_Vector4Property,id:1698,x:31353,y:32788,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,v1:10,v2:0.1518166,v3:0.1518166,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:2208,x:31353,y:32582,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:_Color1,prsc:2,glob:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:2776,x:32142,y:34165,ptovrint:False,ptlb:TestVector,ptin:_TestVector,varname:_TestVector,prsc:2,glob:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ChannelBlend,id:2664,x:31043,y:33134,varname:node_2664,prsc:2,chbt:0|M-8615-OUT,R-1708-A,G-899-A,B-7928-A,A-5243-A;n:type:ShaderForge.SFN_Vector3,id:3145,x:32826,y:33959,varname:node_3145,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Add,id:1551,x:32789,y:33673,varname:node_1551,prsc:2|A-8187-OUT,B-3145-OUT;proporder:960-6369-5782-6358-7522-2270-1891-3510-3267-2595-5010-2607-9726-1698-2208-2776-9873;pass:END;sub:END;*/

Shader "Cloisterlife/TessGrassAddPass" {
    Properties {
        _Tesselation ("Tesselation", Float ) = 2
        _Offset ("Offset", Float ) = 1
        _Fresnel ("Fresnel", Float ) = 1
        _distExp ("distExp", Float ) = 0
        _FallOffStart ("FallOffStart", Float ) = 400
        _Splat0 ("Splat0", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
        _Control ("Control", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _WindTest ("WindTest", Float ) = 100
        _Color2 ("Color2", Vector) = (10,0.1518166,0.1518166,0)
        _Color1 ("Color1", Vector) = (0,0,0,0)
        _TestVector ("TestVector", Vector) = (0,0,0,0)
        _WindMap ("_WindMap", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
			"SplatCount" = "4"
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float node_6452 = 0.0;
                clip(node_6452 - 0.5);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor,1);
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float node_6452 = 0.0;
                clip(node_6452 - 0.5);
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float node_6452 = 0.0;
                clip(node_6452 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
	Dependency "FirstPassShader" = "Cloisterlife/TessGrass"
	Dependency "BaseMapShader" = "CloisterLife/BaseMap"
    FallBack "Cloisterlife/BaseMap"
    CustomEditor "ShaderForgeMaterialInspector"
}
