// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:993,x:32719,y:32712,varname:node_993,prsc:2|diff-3766-OUT;n:type:ShaderForge.SFN_Tex2d,id:9187,x:31656,y:33167,varname:node_9187,prsc:2,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False|TEX-5010-TEX;n:type:ShaderForge.SFN_Tex2d,id:8051,x:30975,y:32465,varname:node_8051,prsc:2,ntxv:0,isnm:False|TEX-4723-TEX;n:type:ShaderForge.SFN_Append,id:8615,x:31239,y:32556,varname:node_8615,prsc:2|A-8051-RGB,B-8051-A;n:type:ShaderForge.SFN_Tex2d,id:1708,x:30965,y:32683,varname:node_8091,prsc:2,ntxv:0,isnm:False|TEX-5215-TEX;n:type:ShaderForge.SFN_Tex2d,id:899,x:30965,y:32861,varname:_node_3420,prsc:2,ntxv:0,isnm:False|TEX-1249-TEX;n:type:ShaderForge.SFN_Tex2d,id:7928,x:30937,y:33053,varname:_node_7977,prsc:2,ntxv:0,isnm:False|TEX-1669-TEX;n:type:ShaderForge.SFN_Tex2d,id:5243,x:30956,y:33252,varname:_node_4012,prsc:2,ntxv:0,isnm:False|TEX-1698-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:2656,x:31437,y:32982,varname:node_2656,prsc:2,chbt:0|M-8615-OUT,R-1708-RGB,G-899-RGB,B-7928-RGB,A-5243-RGB,BTM-5243-RGB;n:type:ShaderForge.SFN_Lerp,id:5092,x:31885,y:33329,varname:node_5092,prsc:2|A-9187-RGB,B-2607-RGB,T-6452-OUT;n:type:ShaderForge.SFN_Vector1,id:6452,x:32243,y:33494,varname:node_6452,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:5010,x:31374,y:33227,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:2607,x:31467,y:33431,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:3766,x:32121,y:33130,varname:node_3766,prsc:2|A-2656-OUT,B-5092-OUT,T-6452-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4723,x:30694,y:32474,ptovrint:False,ptlb:Control,ptin:_Control,varname:_Control,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:5215,x:30727,y:32744,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:_Splat0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1249,x:30693,y:32987,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_Splat1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1669,x:30705,y:33189,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_Splat2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1698,x:30691,y:33403,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_Splat3,ntxv:0,isnm:False;proporder:5010-2607-4723-5215-1249-1669-1698;pass:END;sub:END;*/

Shader "Cloisterlife/TessGrassTest" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Control ("Control", 2D) = "white" {}
        _Splat0 ("Splat0", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
    }
    SubShader {
        Tags {
			"SplatCount" = "4"
            "RenderType"="Opaque"
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_8051 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_8615 = float4(node_8051.rgb,node_8051.a);
                float4 node_8091 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _node_3420 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _node_7977 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _node_4012 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float4 node_9187 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6452 = 0.0;
                float3 diffuse = (directDiffuse + indirectDiffuse) * lerp((node_8615.r*node_8091.rgb + node_8615.g*_node_3420.rgb + node_8615.b*_node_7977.rgb + node_8615.a*_node_4012.rgb),lerp(node_9187.rgb,_Color.rgb,node_6452),node_6452);
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor,1);
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_8051 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_8615 = float4(node_8051.rgb,node_8051.a);
                float4 node_8091 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _node_3420 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _node_7977 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _node_4012 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float4 node_9187 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6452 = 0.0;
                float3 diffuse = directDiffuse * lerp((node_8615.r*node_8091.rgb + node_8615.g*_node_3420.rgb + node_8615.b*_node_7977.rgb + node_8615.a*_node_4012.rgb),lerp(node_9187.rgb,_Color.rgb,node_6452),node_6452);
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
	Dependency "BaseMapShader" = "Cloisterlife/BaseMap"
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
