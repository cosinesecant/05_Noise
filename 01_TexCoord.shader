Shader "UnityStudy/TexCoordShader"
{
    SubShader
    {
        Lighting Off

        Pass
        {
            CGPROGRAM
            #include "UnityCustomRenderTexture.cginc"

            #pragma vertex CustomRenderTextureVertexShader
            #pragma fragment frag
       	    #pragma target 3.0

            float4  frag (v2f_customrendertexture i) : SV_Target
            {
                return float4 (i.globalTexcoord, 1);
            }
            ENDCG
        }
    }
}
