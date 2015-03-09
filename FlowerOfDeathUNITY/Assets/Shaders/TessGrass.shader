// Shader created with Shader Forge v1.02 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.02;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:993,x:32719,y:32712,varname:node_993,prsc:2|diff-757-OUT,disp-5125-OUT,tess-7542-OUT;n:type:ShaderForge.SFN_Tex2d,id:9187,x:31572,y:33273,varname:node_9187,prsc:2,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False|TEX-5010-TEX;n:type:ShaderForge.SFN_ValueProperty,id:960,x:32488,y:33316,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:_Tesselation,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:5125,x:32448,y:32992,varname:node_5125,prsc:2|A-6369-OUT,B-2664-OUT,C-1551-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6369,x:31960,y:32805,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:_Offset,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_LightAttenuation,id:5162,x:32147,y:32580,varname:node_5162,prsc:2;n:type:ShaderForge.SFN_LightColor,id:84,x:32209,y:32430,varname:node_84,prsc:2;n:type:ShaderForge.SFN_Multiply,id:757,x:32582,y:32552,varname:node_757,prsc:2|A-84-RGB,B-5162-OUT,C-7993-OUT,D-6973-OUT,E-3766-OUT;n:type:ShaderForge.SFN_NormalVector,id:6670,x:33111,y:33419,prsc:2,pt:False;n:type:ShaderForge.SFN_Distance,id:5448,x:32333,y:33400,varname:node_5448,prsc:2|A-7281-XYZ,B-2060-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:7281,x:32081,y:33298,varname:node_7281,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:2060,x:32096,y:33424,varname:node_2060,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8802,x:33111,y:33583,varname:node_8802,prsc:2|A-960-OUT,B-5448-OUT;n:type:ShaderForge.SFN_Divide,id:7542,x:32759,y:33279,varname:node_7542,prsc:2|A-960-OUT,B-1917-OUT;n:type:ShaderForge.SFN_Lerp,id:7993,x:32173,y:32712,varname:node_7993,prsc:2|A-2208-XYZ,B-1698-XYZ,T-2664-OUT;n:type:ShaderForge.SFN_Fresnel,id:7406,x:31929,y:32503,varname:node_7406,prsc:2|EXP-5782-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5782,x:31602,y:32267,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:_Fresnel,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:8571,x:32010,y:32383,varname:node_8571,prsc:2|A-2770-OUT,B-7406-OUT;n:type:ShaderForge.SFN_Vector1,id:2770,x:31776,y:32360,varname:node_2770,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6973,x:32209,y:32223,varname:node_6973,prsc:2|A-5782-OUT,B-8571-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6358,x:32533,y:33733,ptovrint:False,ptlb:distExp,ptin:_distExp,varname:_distExp,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Power,id:41,x:32759,y:33515,varname:node_41,prsc:2|VAL-5448-OUT,EXP-6358-OUT;n:type:ShaderForge.SFN_If,id:1917,x:32515,y:33515,varname:node_1917,prsc:2|A-5448-OUT,B-7522-OUT,GT-1075-OUT,EQ-821-OUT,LT-821-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7522,x:32043,y:33775,ptovrint:False,ptlb:FallOffStart,ptin:_FallOffStart,varname:_FallOffStart,prsc:2,glob:False,v1:400;n:type:ShaderForge.SFN_Subtract,id:1075,x:32200,y:33631,varname:node_1075,prsc:2|A-5448-OUT,B-7522-OUT;n:type:ShaderForge.SFN_Vector1,id:821,x:32043,y:33623,varname:node_821,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:2270,x:30212,y:32666,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:_Splat0,tex:c21e1d3c7015f0d4fb28cf936171e9b7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1891,x:30212,y:32845,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_Splat1,tex:b494399d0f9ee0b49b84b8de7296e719,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3510,x:30212,y:33030,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_Splat2,tex:0bb52c4f1252db9438884c7a5701d0f8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3267,x:30212,y:33203,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_Splat3,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:2595,x:30259,y:32465,ptovrint:False,ptlb:Control,ptin:_Control,varname:_Control,tex:877bc628b69844ba081a63095156a6f1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8051,x:30473,y:32465,varname:node_8051,prsc:2,tex:877bc628b69844ba081a63095156a6f1,ntxv:0,isnm:False|TEX-2595-TEX;n:type:ShaderForge.SFN_Append,id:8615,x:30791,y:32556,varname:node_8615,prsc:2|A-8051-RGB,B-8051-A;n:type:ShaderForge.SFN_Tex2d,id:1708,x:30463,y:32681,varname:node_8066,prsc:2,tex:c21e1d3c7015f0d4fb28cf936171e9b7,ntxv:0,isnm:False|TEX-2270-TEX;n:type:ShaderForge.SFN_Tex2d,id:899,x:30463,y:32861,varname:node_8067,prsc:2,tex:b494399d0f9ee0b49b84b8de7296e719,ntxv:0,isnm:False|TEX-1891-TEX;n:type:ShaderForge.SFN_Tex2d,id:7928,x:30435,y:33053,varname:node_8068,prsc:2,tex:0bb52c4f1252db9438884c7a5701d0f8,ntxv:0,isnm:False|TEX-3510-TEX;n:type:ShaderForge.SFN_Tex2d,id:5243,x:30454,y:33252,varname:node_8069,prsc:2,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False|TEX-3267-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:2656,x:31043,y:32952,varname:node_2656,prsc:2,chbt:0|M-8615-OUT,R-1708-RGB,G-899-RGB,B-7928-RGB,A-5243-RGB,BTM-5243-RGB;n:type:ShaderForge.SFN_Lerp,id:5092,x:31901,y:33216,varname:node_5092,prsc:2|A-9187-RGB,B-2607-RGB,T-6452-OUT;n:type:ShaderForge.SFN_Vector1,id:6452,x:31713,y:33273,varname:node_6452,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:5010,x:31699,y:33387,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,tex:16c949f8b00119b48bd09ddcd2879c10,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:2607,x:31816,y:33359,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:3766,x:32081,y:33080,varname:node_3766,prsc:2|A-2656-OUT,B-5092-OUT,T-6452-OUT;n:type:ShaderForge.SFN_Multiply,id:2685,x:31044,y:33426,varname:node_2685,prsc:2|A-1708-A,B-899-A,C-7928-A,D-5243-A;n:type:ShaderForge.SFN_Tex2dAsset,id:9873,x:31775,y:34218,ptovrint:False,ptlb:_WindMap,ptin:_WindMap,varname:_WindMap,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5948,x:32355,y:33858,varname:_node_5948,prsc:2,ntxv:0,isnm:False|UVIN-333-OUT,TEX-9873-TEX;n:type:ShaderForge.SFN_ValueProperty,id:5570,x:31394,y:33927,ptovrint:False,ptlb:_WindScale,ptin:_WindScale,varname:_node_5570,prsc:2,glob:True,v1:1;n:type:ShaderForge.SFN_Divide,id:333,x:31786,y:33924,varname:node_333,prsc:2|A-2955-OUT,B-5570-OUT;n:type:ShaderForge.SFN_Append,id:2955,x:31825,y:33775,varname:node_2955,prsc:2|A-7281-X,B-7281-Y;n:type:ShaderForge.SFN_Multiply,id:8187,x:32698,y:33876,varname:node_8187,prsc:2|A-5948-RGB,B-9726-OUT,C-5948-A;n:type:ShaderForge.SFN_ValueProperty,id:9726,x:32513,y:34079,ptovrint:False,ptlb:WindTest,ptin:_WindTest,varname:_WindTest,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_Vector4Property,id:1698,x:31353,y:32788,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_Color2,prsc:2,glob:False,v1:10,v2:0.1518166,v3:0.1518166,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:2208,x:31353,y:32582,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:_Color1,prsc:2,glob:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:2776,x:32142,y:34165,ptovrint:False,ptlb:TestVector,ptin:_TestVector,varname:_TestVector,prsc:2,glob:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ChannelBlend,id:2664,x:31043,y:33134,varname:node_2664,prsc:2,chbt:0|M-8615-OUT,R-1708-A,G-899-A,B-7928-A,A-5243-A;n:type:ShaderForge.SFN_Vector3,id:3145,x:32826,y:33959,varname:node_3145,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Add,id:1551,x:32789,y:33673,varname:node_1551,prsc:2|A-8187-OUT,B-3145-OUT;proporder:960-6369-5782-6358-7522-2270-1891-3510-3267-2595-5010-2607-9726-1698-2208-2776;pass:END;sub:END;*/

Shader "Cloisterlife/TessGrass" {
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            uniform float _Tesselation;
            uniform float _Offset;
            uniform float _Fresnel;
            uniform float _FallOffStart;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            uniform float _WindScale;
            uniform float _WindTest;
            uniform float4 _Color2;
            uniform float4 _Color1;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8051 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_8615 = float4(node_8051.rgb,node_8051.a);
                    float4 node_8066 = tex2Dlod(_Splat0,float4(TRANSFORM_TEX(v.texcoord0, _Splat0),0.0,0));
                    float4 node_8067 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_8068 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8069 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    float node_2664 = (node_8615.r*node_8066.a + node_8615.g*node_8067.a + node_8615.b*node_8068.a + node_8615.a*node_8069.a);
                    float2 node_333 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_WindScale);
                    float4 _node_5948 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_333, _WindMap),0.0,0));
                    v.vertex.xyz += (_Offset*node_2664*((_node_5948.rgb*_WindTest*_node_5948.a)+float3(0,1,0)));
                }
                float Tessellation(TessVertex v){
                    float node_5448 = distance(mul(_Object2World, v.vertex).rgb,_WorldSpaceCameraPos);
                    float node_1917_if_leA = step(node_5448,_FallOffStart);
                    float node_1917_if_leB = step(_FallOffStart,node_5448);
                    float node_821 = 1.0;
                    return (_Tesselation/lerp((node_1917_if_leA*node_821)+(node_1917_if_leB*(node_5448-_FallOffStart)),node_821,node_1917_if_leA*node_1917_if_leB));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
                float4 node_8066 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 node_8067 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 node_8068 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 node_8069 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float node_2664 = (node_8615.r*node_8066.a + node_8615.g*node_8067.a + node_8615.b*node_8068.a + node_8615.a*node_8069.a);
                float4 node_9187 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6452 = 0.0;
                float3 diffuse = (directDiffuse + indirectDiffuse) * (_LightColor0.rgb*attenuation*lerp(_Color1.rgb,_Color2.rgb,node_2664)*(_Fresnel*(1.0+pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)))*lerp((node_8615.r*node_8066.rgb + node_8615.g*node_8067.rgb + node_8615.b*node_8068.rgb + node_8615.a*node_8069.rgb),lerp(node_9187.rgb,_Color.rgb,node_6452),node_6452));
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            uniform float _Tesselation;
            uniform float _Offset;
            uniform float _Fresnel;
            uniform float _FallOffStart;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            uniform float _WindScale;
            uniform float _WindTest;
            uniform float4 _Color2;
            uniform float4 _Color1;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8051 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_8615 = float4(node_8051.rgb,node_8051.a);
                    float4 node_8066 = tex2Dlod(_Splat0,float4(TRANSFORM_TEX(v.texcoord0, _Splat0),0.0,0));
                    float4 node_8067 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_8068 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8069 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    float node_2664 = (node_8615.r*node_8066.a + node_8615.g*node_8067.a + node_8615.b*node_8068.a + node_8615.a*node_8069.a);
                    float2 node_333 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_WindScale);
                    float4 _node_5948 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_333, _WindMap),0.0,0));
                    v.vertex.xyz += (_Offset*node_2664*((_node_5948.rgb*_WindTest*_node_5948.a)+float3(0,1,0)));
                }
                float Tessellation(TessVertex v){
                    float node_5448 = distance(mul(_Object2World, v.vertex).rgb,_WorldSpaceCameraPos);
                    float node_1917_if_leA = step(node_5448,_FallOffStart);
                    float node_1917_if_leB = step(_FallOffStart,node_5448);
                    float node_821 = 1.0;
                    return (_Tesselation/lerp((node_1917_if_leA*node_821)+(node_1917_if_leB*(node_5448-_FallOffStart)),node_821,node_1917_if_leA*node_1917_if_leB));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
                float4 node_8066 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 node_8067 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 node_8068 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 node_8069 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float node_2664 = (node_8615.r*node_8066.a + node_8615.g*node_8067.a + node_8615.b*node_8068.a + node_8615.a*node_8069.a);
                float4 node_9187 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6452 = 0.0;
                float3 diffuse = directDiffuse * (_LightColor0.rgb*attenuation*lerp(_Color1.rgb,_Color2.rgb,node_2664)*(_Fresnel*(1.0+pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)))*lerp((node_8615.r*node_8066.rgb + node_8615.g*node_8067.rgb + node_8615.b*node_8068.rgb + node_8615.a*node_8069.rgb),lerp(node_9187.rgb,_Color.rgb,node_6452),node_6452));
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            uniform float _Tesselation;
            uniform float _Offset;
            uniform float _FallOffStart;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            uniform float _WindScale;
            uniform float _WindTest;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float4 posWorld : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8051 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_8615 = float4(node_8051.rgb,node_8051.a);
                    float4 node_8066 = tex2Dlod(_Splat0,float4(TRANSFORM_TEX(v.texcoord0, _Splat0),0.0,0));
                    float4 node_8067 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_8068 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8069 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    float node_2664 = (node_8615.r*node_8066.a + node_8615.g*node_8067.a + node_8615.b*node_8068.a + node_8615.a*node_8069.a);
                    float2 node_333 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_WindScale);
                    float4 _node_5948 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_333, _WindMap),0.0,0));
                    v.vertex.xyz += (_Offset*node_2664*((_node_5948.rgb*_WindTest*_node_5948.a)+float3(0,1,0)));
                }
                float Tessellation(TessVertex v){
                    float node_5448 = distance(mul(_Object2World, v.vertex).rgb,_WorldSpaceCameraPos);
                    float node_1917_if_leA = step(node_5448,_FallOffStart);
                    float node_1917_if_leB = step(_FallOffStart,node_5448);
                    float node_821 = 1.0;
                    return (_Tesselation/lerp((node_1917_if_leA*node_821)+(node_1917_if_leB*(node_5448-_FallOffStart)),node_821,node_1917_if_leA*node_1917_if_leB));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            uniform float _Tesselation;
            uniform float _Offset;
            uniform float _FallOffStart;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _WindMap; uniform float4 _WindMap_ST;
            uniform float _WindScale;
            uniform float _WindTest;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_8051 = tex2Dlod(_Control,float4(TRANSFORM_TEX(v.texcoord0, _Control),0.0,0));
                    float4 node_8615 = float4(node_8051.rgb,node_8051.a);
                    float4 node_8066 = tex2Dlod(_Splat0,float4(TRANSFORM_TEX(v.texcoord0, _Splat0),0.0,0));
                    float4 node_8067 = tex2Dlod(_Splat1,float4(TRANSFORM_TEX(v.texcoord0, _Splat1),0.0,0));
                    float4 node_8068 = tex2Dlod(_Splat2,float4(TRANSFORM_TEX(v.texcoord0, _Splat2),0.0,0));
                    float4 node_8069 = tex2Dlod(_Splat3,float4(TRANSFORM_TEX(v.texcoord0, _Splat3),0.0,0));
                    float node_2664 = (node_8615.r*node_8066.a + node_8615.g*node_8067.a + node_8615.b*node_8068.a + node_8615.a*node_8069.a);
                    float2 node_333 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g)/_WindScale);
                    float4 _node_5948 = tex2Dlod(_WindMap,float4(TRANSFORM_TEX(node_333, _WindMap),0.0,0));
                    v.vertex.xyz += (_Offset*node_2664*((_node_5948.rgb*_WindTest*_node_5948.a)+float3(0,1,0)));
                }
                float Tessellation(TessVertex v){
                    float node_5448 = distance(mul(_Object2World, v.vertex).rgb,_WorldSpaceCameraPos);
                    float node_1917_if_leA = step(node_5448,_FallOffStart);
                    float node_1917_if_leB = step(_FallOffStart,node_5448);
                    float node_821 = 1.0;
                    return (_Tesselation/lerp((node_1917_if_leA*node_821)+(node_1917_if_leB*(node_5448-_FallOffStart)),node_821,node_1917_if_leA*node_1917_if_leB));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
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
