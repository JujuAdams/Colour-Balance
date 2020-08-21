varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3  u_vLow;
uniform vec3  u_vMid;
uniform vec3  u_vHigh;
uniform vec3  u_vTint;
uniform float u_vAmount;

void main()
{               
    gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor.rgb *= mix(vec3(1.0), u_vTint, u_vAmount);
    
    float value = (gl_FragColor.r + gl_FragColor.g + gl_FragColor.b)/3.0;  
    
    float low = 1.0 - value;
    low *= low*low;
    
    float mid = 1.0 - abs(2.0*value - 1.0);
    mid *= mid*mid;
    
    float high = value;
    high *= high*high;
    
    gl_FragColor.rgb += u_vAmount*(low*u_vLow + mid*u_vMid + high*u_vHigh);
}