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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _otexCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0006;
    COL0 = COLOR;
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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _TMP1;
float _TMP22;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP21;
float _TMP17;
float _TMP20;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
input_dummy _IN1;
vec4 _g000027;
vec4 _g010027;
vec4 _g020027;
vec4 _g100027;
vec4 _g120027;
vec4 _g200027;
vec4 _g210027;
vec4 _g220027;
vec4 _Gx0027;
vec4 _Gy0027;
vec4 _color0027;
vec2 _c0029;
vec2 _c0031;
vec2 _c0033;
vec2 _c0035;
vec2 _c0037;
vec2 _c0039;
vec2 _c0041;
vec2 _c0043;
float _x0065;
float _TMP66;
vec2 _c0073;
COMPAT_VARYING vec4 TEX0;
sampler2D _TMP76;
uniform sampler2D Texture;
sampler2D _TMP78;
sampler2D _TMP79;
sampler2D _TMP80;
sampler2D _TMP81;
sampler2D _TMP82;
sampler2D _TMP83;
sampler2D _TMP84;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _outcolor;
    vec2 _texelSize;
    vec2 _offset;
    float _gradient;
    vec4 _sum;
    vec4 _pixelColor;
    output_dummy _OUT;
    _texelSize = 1.00000000E+00/TextureSize;
    _offset = vec2(_texelSize.x, _texelSize.y);
    _TMP76 = sampler2D(sampler(Texture));
    _c0029 = TEX0.xy + vec2(float(float(-_offset.x)), float(float(-_offset.y)));
    _TMP2 = COMPAT_TEXTURE(_TMP76, _c0029);
    _g000027 = vec4(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z), float(_TMP2.w));
    _TMP78 = sampler2D(sampler(Texture));
    _c0031 = TEX0.xy + vec2(0.00000000E+00, float(float(-_offset.y)));
    _TMP3 = COMPAT_TEXTURE(_TMP78, _c0031);
    _g010027 = vec4(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z), float(_TMP3.w));
    _TMP79 = sampler2D(sampler(Texture));
    _c0033 = TEX0.xy + vec2(float(float(_offset.x)), float(float(-_offset.y)));
    _TMP4 = COMPAT_TEXTURE(_TMP79, _c0033);
    _g020027 = vec4(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z), float(_TMP4.w));
    _TMP80 = sampler2D(sampler(Texture));
    _c0035 = TEX0.xy + vec2(float(float(-_offset.x)), 0.00000000E+00);
    _TMP5 = COMPAT_TEXTURE(_TMP80, _c0035);
    _g100027 = vec4(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z), float(_TMP5.w));
    _TMP81 = sampler2D(sampler(Texture));
    _c0037 = TEX0.xy + vec2(float(float(_offset.x)), 0.00000000E+00);
    _TMP6 = COMPAT_TEXTURE(_TMP81, _c0037);
    _g120027 = vec4(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z), float(_TMP6.w));
    _TMP82 = sampler2D(sampler(Texture));
    _c0039 = TEX0.xy + vec2(float(float(-_offset.x)), float(float(_offset.y)));
    _TMP7 = COMPAT_TEXTURE(_TMP82, _c0039);
    _g200027 = vec4(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z), float(_TMP7.w));
    _TMP83 = sampler2D(sampler(Texture));
    _c0041 = TEX0.xy + vec2(0.00000000E+00, float(float(_offset.y)));
    _TMP8 = COMPAT_TEXTURE(_TMP83, _c0041);
    _g210027 = vec4(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z), float(_TMP8.w));
    _TMP84 = sampler2D(sampler(Texture));
    _c0043 = TEX0.xy + vec2(float(float(_offset.x)), float(float(_offset.y)));
    _TMP9 = COMPAT_TEXTURE(_TMP84, _c0043);
    _g220027 = vec4(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z), float(_TMP9.w));
    _TMP20 = dot(vec3(float(_g000027.x), float(_g000027.y), float(_g000027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP10 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g010027.x), float(_g010027.y), float(_g010027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP11 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g020027.x), float(_g020027.y), float(_g020027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP12 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g100027.x), float(_g100027.y), float(_g100027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP13 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g120027.x), float(_g120027.y), float(_g120027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP14 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g200027.x), float(_g200027.y), float(_g200027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP15 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g210027.x), float(_g210027.y), float(_g210027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP16 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g220027.x), float(_g220027.y), float(_g220027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP17 = float(_TMP20);
    _Gx0027 = -(vec4(_TMP10, _TMP10, _TMP10, _TMP10) + 2.00000000E+00*vec4(_TMP13, _TMP13, _TMP13, _TMP13) + vec4(_TMP15, _TMP15, _TMP15, _TMP15)) + vec4(_TMP12, _TMP12, _TMP12, _TMP12) + 2.00000000E+00*vec4(_TMP14, _TMP14, _TMP14, _TMP14) + vec4(_TMP17, _TMP17, _TMP17, _TMP17);
    _Gy0027 = -(vec4(_TMP10, _TMP10, _TMP10, _TMP10) + 2.00000000E+00*vec4(_TMP11, _TMP11, _TMP11, _TMP11) + vec4(_TMP12, _TMP12, _TMP12, _TMP12)) + vec4(_TMP15, _TMP15, _TMP15, _TMP15) + 2.00000000E+00*vec4(_TMP16, _TMP16, _TMP16, _TMP16) + vec4(_TMP17, _TMP17, _TMP17, _TMP17);
    _TMP21 = abs(vec4(float(_Gx0027.x), float(_Gx0027.y), float(_Gx0027.z), float(_Gx0027.w)));
    _TMP18 = vec4(float(_TMP21.x), float(_TMP21.y), float(_TMP21.z), float(_TMP21.w));
    _TMP21 = abs(vec4(float(_Gy0027.x), float(_Gy0027.y), float(_Gy0027.z), float(_Gy0027.w)));
    _TMP19 = vec4(float(_TMP21.x), float(_TMP21.y), float(_TMP21.z), float(_TMP21.w));
    _color0027 = _TMP18 + _TMP19;
    _gradient = float(_color0027.x);
    _x0065 = _gradient*2.00000003E-01;
    _TMP22 = min(1.00000000E+00, _x0065);
    _TMP66 = max(0.00000000E+00, _TMP22);
    _c0073 = TEX0.xy + -6.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _TMP1*2.21600011E-03;
    _c0073 = TEX0.xy + -5.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*8.76399968E-03;
    _c0073 = TEX0.xy + -4.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*2.69949995E-02;
    _c0073 = TEX0.xy + -3.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*6.47590011E-02;
    _c0073 = TEX0.xy + -2.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*1.20985001E-01;
    _c0073 = TEX0.xy + -_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*1.76033005E-01;
    _TMP1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _sum = _sum + _TMP1*1.99470997E-01;
    _c0073 = TEX0.xy + _offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*1.76033005E-01;
    _c0073 = TEX0.xy + 2.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*1.20985001E-01;
    _c0073 = TEX0.xy + 3.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*6.47590011E-02;
    _c0073 = TEX0.xy + 4.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*2.69949995E-02;
    _c0073 = TEX0.xy + 5.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*8.76399968E-03;
    _c0073 = TEX0.xy + 6.00000000E+00*_offset.xy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0073);
    _sum = _sum + _TMP1*2.21600011E-03;
    _pixelColor = COMPAT_TEXTURE(Texture, TEX0.xy);
    _outcolor = (-_TMP66 + (_TMP66*_pixelColor)*2.00000000E+00) + _sum;
    _OUT._color1.xyz = _outcolor.xyz;
    FragColor = _OUT._color1;
    return;
} 
#endif
