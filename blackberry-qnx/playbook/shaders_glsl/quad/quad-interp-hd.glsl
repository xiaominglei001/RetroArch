// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _DR;
COMPAT_VARYING     vec2 _DL;
COMPAT_VARYING     vec2 _UR;
COMPAT_VARYING     vec2 _UL;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct deltas {
    vec2 _UL;
    vec2 _UR;
    vec2 _DL;
    vec2 _DR;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _otexCoord;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _DR;
COMPAT_VARYING     vec2 _DL;
COMPAT_VARYING     vec2 _UR;
COMPAT_VARYING     vec2 _UL;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct deltas {
    vec2 _UL;
    vec2 _UR;
    vec2 _DL;
    vec2 _DR;
};
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec2 _c0013;
vec2 _c0015;
vec2 _c0017;
vec2 _c0019;
vec2 _c0023;
vec2 _c0025;
vec2 _c0027;
vec2 _c0029;
float _x0031;
float _x0033;
vec3 _poly0035[3];
float _x0035;
vec3 _poly0037[3];
float _x0037;
vec3 _poly0039[3];
float _x0039;
vec3 _poly0041[3];
float _x0041;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _frac_amt_x;
    float _frac_amt_y;
    vec3 _loval;
    vec3 _midval;
    vec3 _hival;
    vec3 _res;
    output_dummy _OUT;
    _c0013 = TEX0.xy + vec2( -9.71703965E-04, -1.11051882E-03);
    _TMP0 = COMPAT_TEXTURE(Texture, _c0013);
    _c0015 = TEX0.xy + vec2( -9.71703965E-04, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0015);
    _c0017 = TEX0.xy + vec2( -9.71703965E-04, 1.11051882E-03);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0017);
    _c0019 = TEX0.xy + vec2( 0.00000000E+00, -1.11051882E-03);
    _TMP3 = COMPAT_TEXTURE(Texture, _c0019);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0023 = TEX0.xy + vec2( 0.00000000E+00, 1.11051882E-03);
    _TMP5 = COMPAT_TEXTURE(Texture, _c0023);
    _c0025 = TEX0.xy + vec2( 9.71703965E-04, -1.11051882E-03);
    _TMP6 = COMPAT_TEXTURE(Texture, _c0025);
    _c0027 = TEX0.xy + vec2( 9.71703965E-04, 0.00000000E+00);
    _TMP7 = COMPAT_TEXTURE(Texture, _c0027);
    _c0029 = TEX0.xy + vec2( 9.71703965E-04, 1.11051882E-03);
    _TMP8 = COMPAT_TEXTURE(Texture, _c0029);
    _x0031 = TEX0.x*5.12000000E+02;
    _frac_amt_x = fract(_x0031);
    _x0033 = TEX0.y*4.48000000E+02;
    _frac_amt_y = fract(_x0033);
    _x0035 = _frac_amt_x + 5.00000000E-01;
    _poly0035[2] = (5.00000000E-01*_TMP0.xyz - _TMP3.xyz) + 5.00000000E-01*_TMP6.xyz;
    _poly0035[1] = (-1.50000000E+00*_TMP0.xyz + 2.00000000E+00*_TMP3.xyz) - 5.00000000E-01*_TMP6.xyz;
    _loval = _poly0035[2]*_x0035*_x0035 + _poly0035[1]*_x0035 + _TMP0.xyz;
    _x0037 = _frac_amt_x + 5.00000000E-01;
    _poly0037[2] = (5.00000000E-01*_TMP1.xyz - _TMP4.xyz) + 5.00000000E-01*_TMP7.xyz;
    _poly0037[1] = (-1.50000000E+00*_TMP1.xyz + 2.00000000E+00*_TMP4.xyz) - 5.00000000E-01*_TMP7.xyz;
    _midval = _poly0037[2]*_x0037*_x0037 + _poly0037[1]*_x0037 + _TMP1.xyz;
    _x0039 = _frac_amt_x + 5.00000000E-01;
    _poly0039[2] = (5.00000000E-01*_TMP2.xyz - _TMP5.xyz) + 5.00000000E-01*_TMP8.xyz;
    _poly0039[1] = (-1.50000000E+00*_TMP2.xyz + 2.00000000E+00*_TMP5.xyz) - 5.00000000E-01*_TMP8.xyz;
    _hival = _poly0039[2]*_x0039*_x0039 + _poly0039[1]*_x0039 + _TMP2.xyz;
    _x0041 = _frac_amt_y + 5.00000000E-01;
    _poly0041[2] = (5.00000000E-01*_loval - _midval) + 5.00000000E-01*_hival;
    _poly0041[1] = (-1.50000000E+00*_loval + 2.00000000E+00*_midval) - 5.00000000E-01*_hival;
    _res = _poly0041[2]*_x0041*_x0041 + _poly0041[1]*_x0041 + _loval;
    _OUT._color = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _OUT._color;
    return;
} 
#endif
