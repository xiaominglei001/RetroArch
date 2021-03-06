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
COMPAT_VARYING     vec2 _CT;
COMPAT_VARYING     vec4 _position2;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct VERTEX_OUTPUT {
    vec4 _position1;
    vec2 _texCoord1;
};
struct output_dummy {
    vec4 _color;
};
struct VERTEX_INPUT {
    vec4 _position2;
    vec2 _CT;
};
VERTEX_OUTPUT _ret_0;
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
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _ret_0._position1 = _r0005;
    _ret_0._texCoord1 = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
    return;
    TEX0.xy = _ret_0._texCoord1;
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
COMPAT_VARYING     vec2 _CT;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct VERTEX_OUTPUT {
    vec2 _texCoord;
};
struct output_dummy {
    vec4 _color;
};
struct VERTEX_INPUT {
    vec2 _CT;
};
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec2 _c0008;
vec2 _c0010;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _Color;
    _c0008 = TEX0.xy - 1.00000005E-03;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0008);
    _Color = vec4( 5.00000000E-01, 5.00000000E-01, 5.00000000E-01, 1.00000000E+00) - _TMP0*2.00000000E+00;
    _c0010 = TEX0.xy + 1.00000005E-03;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0010);
    _Color = _Color + _TMP1*2.00000000E+00;
    _Color.xyz = vec3((_Color.x + _Color.y + _Color.z)/3.00000000E+00, (_Color.x + _Color.y + _Color.z)/3.00000000E+00, (_Color.x + _Color.y + _Color.z)/3.00000000E+00);
    FragColor = _Color;
    return;
} 
#endif
