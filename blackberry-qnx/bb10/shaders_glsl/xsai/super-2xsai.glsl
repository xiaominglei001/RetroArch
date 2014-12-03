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
vec4 _r0008;
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
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0008;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0008;
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
float _TMP25;
float _TMP26;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
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
input_dummy _IN1;
vec2 _c0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0062;
vec2 _c0064;
vec2 _c0066;
int _x0132;
int _y0132;
int _r0132;
int _x0134;
int _y0134;
int _r0134;
int _x0136;
int _y0136;
int _r0136;
int _x0138;
int _y0138;
int _r0138;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    output_dummy _OUT;
    vec2 _ps;
    vec2 _dx;
    vec2 _dy;
    vec2 _g1;
    vec2 _g2;
    vec2 _pixcoord;
    vec2 _fp;
    vec2 _pC4;
    vec2 _pC8;
    vec3 _C0;
    vec3 _C1;
    vec3 _C2;
    vec3 _D3;
    vec3 _C3;
    vec3 _C4;
    vec3 _C5;
    vec3 _D4;
    vec3 _C6;
    vec3 _C7;
    vec3 _C8;
    vec3 _D5;
    vec3 _D0;
    vec3 _D1;
    vec3 _D2;
    vec3 _D6;
    vec3 _p00;
    vec3 _p10;
    vec3 _p01;
    vec3 _p11;
    float _c0;
    float _c1;
    float _c2;
    float _c3;
    float _c4;
    float _c5;
    float _c6;
    float _c7;
    float _c8;
    float _d0;
    float _d1;
    float _d2;
    float _d3;
    float _d4;
    float _d5;
    float _d6;
    int _r1;
    _ps = vec2(9.99000013E-01/TextureSize.x, 9.99000013E-01/TextureSize.y);
    _dx = vec2(float(_ps.x), 0.00000000E+00);
    _dy = vec2(0.00000000E+00, float(_ps.y));
    _g1 = vec2(float(_ps.x), float(_ps.y));
    _g2 = vec2(float(-_ps.x), float(_ps.y));
    _pixcoord = TEX0.xy/_ps;
    _fp = fract(_pixcoord);
    _pC4 = TEX0.xy - _fp*_ps;
    _pC8 = _pC4 + vec2(float(_g1.x), float(_g1.y));
    _c0036 = _pC4 - vec2(float(_g1.x), float(_g1.y));
    _TMP0 = COMPAT_TEXTURE(Texture, _c0036);
    _C0 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _c0038 = _pC4 - vec2(float(_dy.x), float(_dy.y));
    _TMP1 = COMPAT_TEXTURE(Texture, _c0038);
    _C1 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0040 = _pC4 - vec2(float(_g2.x), float(_g2.y));
    _TMP2 = COMPAT_TEXTURE(Texture, _c0040);
    _C2 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0042 = (_pC4 - vec2(float(_g2.x), float(_g2.y))) + vec2(float(_dx.x), float(_dx.y));
    _TMP3 = COMPAT_TEXTURE(Texture, _c0042);
    _D3 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _c0044 = _pC4 - vec2(float(_dx.x), float(_dx.y));
    _TMP4 = COMPAT_TEXTURE(Texture, _c0044);
    _C3 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(Texture, _pC4);
    _C4 = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0048 = _pC4 + vec2(float(_dx.x), float(_dx.y));
    _TMP6 = COMPAT_TEXTURE(Texture, _c0048);
    _C5 = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0050 = _pC8 - vec2(float(_g2.x), float(_g2.y));
    _TMP7 = COMPAT_TEXTURE(Texture, _c0050);
    _D4 = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0052 = _pC4 + vec2(float(_g2.x), float(_g2.y));
    _TMP8 = COMPAT_TEXTURE(Texture, _c0052);
    _C6 = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0054 = _pC4 + vec2(float(_dy.x), float(_dy.y));
    _TMP9 = COMPAT_TEXTURE(Texture, _c0054);
    _C7 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0056 = _pC4 + vec2(float(_g1.x), float(_g1.y));
    _TMP10 = COMPAT_TEXTURE(Texture, _c0056);
    _C8 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0058 = _pC8 + vec2(float(_dx.x), float(_dx.y));
    _TMP11 = COMPAT_TEXTURE(Texture, _c0058);
    _D5 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0060 = _pC4 + vec2(float(_g2.x), float(_g2.y)) + vec2(float(_dy.x), float(_dy.y));
    _TMP12 = COMPAT_TEXTURE(Texture, _c0060);
    _D0 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _c0062 = _pC8 + vec2(float(_g2.x), float(_g2.y));
    _TMP13 = COMPAT_TEXTURE(Texture, _c0062);
    _D1 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _c0064 = _pC8 + vec2(float(_dy.x), float(_dy.y));
    _TMP14 = COMPAT_TEXTURE(Texture, _c0064);
    _D2 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _c0066 = _pC8 + vec2(float(_g1.x), float(_g1.y));
    _TMP15 = COMPAT_TEXTURE(Texture, _c0066);
    _D6 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP26 = dot(vec3(float(_C0.x), float(_C0.y), float(_C0.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c0 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c1 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C2.x), float(_C2.y), float(_C2.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c2 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C3.x), float(_C3.y), float(_C3.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c3 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c4 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C5.x), float(_C5.y), float(_C5.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c5 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C6.x), float(_C6.y), float(_C6.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c6 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C7.x), float(_C7.y), float(_C7.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c7 = float(_TMP25);
    _TMP26 = dot(vec3(float(_C8.x), float(_C8.y), float(_C8.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _c8 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d0 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D1.x), float(_D1.y), float(_D1.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d1 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D2.x), float(_D2.y), float(_D2.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d2 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D3.x), float(_D3.y), float(_D3.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d3 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D4.x), float(_D4.y), float(_D4.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d4 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D5.x), float(_D5.y), float(_D5.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d5 = float(_TMP25);
    _TMP26 = dot(vec3(float(_D6.x), float(_D6.y), float(_D6.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP25 = float(_TMP26);
    _d6 = float(_TMP25);
    if (_c7 == _c5 && _c4 != _c8) { 
        _p01 = vec3(float(_C7.x), float(_C7.y), float(_C7.z));
        _p11 = _p01;
    } else {
        if (_c4 == _c8 && _c7 != _c5) { 
            _p01 = vec3(float(_C4.x), float(_C4.y), float(_C4.z));
            _p11 = _p01;
        } else {
            if (_c4 == _c8 && _c7 == _c5) { 
                _x0132 = 0;
                _y0132 = 0;
                _r0132 = 0;
                if (_c5 == _c6) { 
                    _x0132 = 1;
                } else {
                    if (_c4 == _c6) { 
                        _y0132 = 1;
                    } 
                } 
                if (_c5 == _d1) { 
                    _x0132 = _x0132 + 1;
                } else {
                    if (_c4 == _d1) { 
                        _y0132 = _y0132 + 1;
                    } 
                } 
                if (_x0132 <= 1) { 
                    _r0132 = 1;
                } 
                if (_y0132 <= 1) { 
                    _r0132 = _r0132 - 1;
                } 
                _x0134 = 0;
                _y0134 = 0;
                _r0134 = 0;
                if (_c5 == _c3) { 
                    _x0134 = 1;
                } else {
                    if (_c4 == _c3) { 
                        _y0134 = 1;
                    } 
                } 
                if (_c5 == _c1) { 
                    _x0134 = _x0134 + 1;
                } else {
                    if (_c4 == _c1) { 
                        _y0134 = _y0134 + 1;
                    } 
                } 
                if (_x0134 <= 1) { 
                    _r0134 = 1;
                } 
                if (_y0134 <= 1) { 
                    _r0134 = _r0134 - 1;
                } 
                _r1 = _r0132 + _r0134;
                _x0136 = 0;
                _y0136 = 0;
                _r0136 = 0;
                if (_c5 == _d2) { 
                    _x0136 = 1;
                } else {
                    if (_c4 == _d2) { 
                        _y0136 = 1;
                    } 
                } 
                if (_c5 == _d5) { 
                    _x0136 = _x0136 + 1;
                } else {
                    if (_c4 == _d5) { 
                        _y0136 = _y0136 + 1;
                    } 
                } 
                if (_x0136 <= 1) { 
                    _r0136 = 1;
                } 
                if (_y0136 <= 1) { 
                    _r0136 = _r0136 - 1;
                } 
                _r1 = _r1 + _r0136;
                _x0138 = 0;
                _y0138 = 0;
                _r0138 = 0;
                if (_c5 == _c2) { 
                    _x0138 = 1;
                } else {
                    if (_c4 == _c2) { 
                        _y0138 = 1;
                    } 
                } 
                if (_c5 == _d4) { 
                    _x0138 = _x0138 + 1;
                } else {
                    if (_c4 == _d4) { 
                        _y0138 = _y0138 + 1;
                    } 
                } 
                if (_x0138 <= 1) { 
                    _r0138 = 1;
                } 
                if (_y0138 <= 1) { 
                    _r0138 = _r0138 - 1;
                } 
                _r1 = _r1 + _r0138;
                if (_r1 > 0) { 
                    _p01 = vec3(float(_C5.x), float(_C5.y), float(_C5.z));
                    _p11 = _p01;
                } else {
                    if (_r1 < 0) { 
                        _p01 = vec3(float(_C4.x), float(_C4.y), float(_C4.z));
                        _p11 = _p01;
                    } else {
                        _p01 = vec3(float((5.00000000E-01*(_C4 + _C5)).x), float((5.00000000E-01*(_C4 + _C5)).y), float((5.00000000E-01*(_C4 + _C5)).z));
                        _p11 = _p01;
                    } 
                } 
            } else {
                if (_c5 == _c8 && _c8 == _d1 && _c7 != _d2 && _c8 != _d0) { 
                    _p11 = vec3(float((2.50000000E-01*(3.00000000E+00*_C8 + _C7)).x), float((2.50000000E-01*(3.00000000E+00*_C8 + _C7)).y), float((2.50000000E-01*(3.00000000E+00*_C8 + _C7)).z));
                } else {
                    if (_c4 == _c7 && _c7 == _d2 && _d1 != _c8 && _c7 != _d6) { 
                        _p11 = vec3(float((2.50000000E-01*(3.00000000E+00*_C7 + _C8)).x), float((2.50000000E-01*(3.00000000E+00*_C7 + _C8)).y), float((2.50000000E-01*(3.00000000E+00*_C7 + _C8)).z));
                    } else {
                        _p11 = vec3(float((5.00000000E-01*(_C7 + _C8)).x), float((5.00000000E-01*(_C7 + _C8)).y), float((5.00000000E-01*(_C7 + _C8)).z));
                    } 
                } 
                if (_c5 == _c8 && _c5 == _c1 && _c4 != _c2 && _c5 != _c0) { 
                    _p01 = vec3(float((2.50000000E-01*(3.00000000E+00*_C5 + _C4)).x), float((2.50000000E-01*(3.00000000E+00*_C5 + _C4)).y), float((2.50000000E-01*(3.00000000E+00*_C5 + _C4)).z));
                } else {
                    if (_c4 == _c7 && _c4 == _c2 && _c1 != _c5 && _c4 != _d3) { 
                        _p01 = vec3(float((2.50000000E-01*(3.00000000E+00*_C4 + _C5)).x), float((2.50000000E-01*(3.00000000E+00*_C4 + _C5)).y), float((2.50000000E-01*(3.00000000E+00*_C4 + _C5)).z));
                    } else {
                        _p01 = vec3(float((5.00000000E-01*(_C4 + _C5)).x), float((5.00000000E-01*(_C4 + _C5)).y), float((5.00000000E-01*(_C4 + _C5)).z));
                    } 
                } 
            } 
        } 
    } 
    if (_c4 == _c8 && _c7 != _c5 && _c3 == _c4 && _c4 != _d2) { 
        _p10 = vec3(float((5.00000000E-01*(_C7 + _C4)).x), float((5.00000000E-01*(_C7 + _C4)).y), float((5.00000000E-01*(_C7 + _C4)).z));
    } else {
        if (_c4 == _c6 && _c5 == _c4 && _c3 != _c7 && _c4 != _d0) { 
            _p10 = vec3(float((5.00000000E-01*(_C7 + _C4)).x), float((5.00000000E-01*(_C7 + _C4)).y), float((5.00000000E-01*(_C7 + _C4)).z));
        } else {
            _p10 = vec3(float(_C7.x), float(_C7.y), float(_C7.z));
        } 
    } 
    if (_c7 == _c5 && _c4 != _c8 && _c6 == _c7 && _c7 != _c2) { 
        _p00 = vec3(float((5.00000000E-01*(_C7 + _C4)).x), float((5.00000000E-01*(_C7 + _C4)).y), float((5.00000000E-01*(_C7 + _C4)).z));
    } else {
        if (_c3 == _c7 && _c8 == _c7 && _c6 != _c4 && _c7 != _c0) { 
            _p00 = vec3(float((5.00000000E-01*(_C7 + _C4)).x), float((5.00000000E-01*(_C7 + _C4)).y), float((5.00000000E-01*(_C7 + _C4)).z));
        } else {
            _p00 = vec3(float(_C4.x), float(_C4.y), float(_C4.z));
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.y < 5.00000000E-01) { 
            _p10 = _p00;
        } 
    } else {
        if (_fp.y < 5.00000000E-01) { 
            _p10 = _p01;
        } else {
            _p10 = _p11;
        } 
    } 
    _OUT._color1 = vec4(_p10.x, _p10.y, _p10.z, 1.00000000E+00);
    FragColor = _OUT._color1;
    return;
} 
#endif