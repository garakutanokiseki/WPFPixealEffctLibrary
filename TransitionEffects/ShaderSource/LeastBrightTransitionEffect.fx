float progress : register(C0);
sampler2D implicitInput : register(s0);
sampler2D oldInput : register(s1);


float4 LeastBright(float2 uv)
{
	//int c = 4;
	//int c2 = 3;
	//float oc = 1.5;
	//float oc2 = 1;
	float offset = 0.01 * progress;
	
	float leastBright = 1;
	float4 leastBrightColor;
	for(int y=0; y<4; y++)
	{
		for(int x=0; x<3; x++)
		{
			float2 newUV = uv + (float2(x, y) - float2(1.5, 1)) * offset;
			float4 color = tex2D(oldInput, newUV);
			float brightness = dot(color.rgb, float3(1, 1.1, 0.9));
			if(brightness < leastBright)
			{
				leastBright = brightness;
				leastBrightColor = color;
			}
		}
	}
	
	float4 impl = tex2D(implicitInput, uv);
	    
	return lerp(leastBrightColor,impl, progress);
}

//--------------------------------------------------------------------------------------
// Pixel Shader
//--------------------------------------------------------------------------------------
float4 main(float2 uv : TEXCOORD0) : COLOR0
{
	return LeastBright(uv);
}

