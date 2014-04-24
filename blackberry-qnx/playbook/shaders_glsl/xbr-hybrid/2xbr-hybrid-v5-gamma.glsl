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
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0011;
vec4 _v0011;
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
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _v0011 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _r0011 = _v0011.x*MVPMatrix[0];
    _r0011 = _r0011 + _v0011.y*MVPMatrix[1];
    _r0011 = _r0011 + _v0011.z*MVPMatrix[2];
    _r0011 = _r0011 + _v0011.w*MVPMatrix[3];
    _OUT._position1 = vec4(float(_r0011.x), float(_r0011.y), float(_r0011.z), float(_r0011.w));
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT.VARt1 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.VARt2 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.VARt3 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.VARt4 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.VARt5 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.VARt6 = _texCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.VARt7 = _texCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    VARt1 = _OUT.VARt1;
    VARt2 = _OUT.VARt2;
    VARt3 = _OUT.VARt3;
    VARt4 = _OUT.VARt4;
    VARt5 = _OUT.VARt5;
    VARt6 = _OUT.VARt6;
    VARt7 = _OUT.VARt7;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
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
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
vec4 _ret_0;
vec3 _TMP64;
vec3 _TMP78;
vec3 _TMP82;
vec3 _TMP81;
float _TMP77;
float _TMP76;
float _TMP75;
float _TMP80;
vec3 _TMP62;
vec3 _TMP60;
vec3 _TMP58;
vec3 _TMP56;
vec4 _TMP55;
bvec4 _TMP54;
vec4 _TMP53;
bvec4 _TMP50;
vec3 _TMP72;
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec3 _TMP46;
vec4 _TMP39;
vec4 _TMP38;
vec4 _TMP83;
bvec4 _TMP37;
bvec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
float _TMP79;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
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
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0097;
vec4 _r0141;
vec4 _r0151;
vec4 _r0161;
vec4 _r0171;
vec4 _r0181;
vec4 _r0191;
vec4 _TMP202;
vec4 _a0205;
vec4 _TMP208;
vec4 _a0211;
vec4 _TMP214;
vec4 _a0217;
vec4 _TMP220;
vec4 _a0223;
vec4 _TMP226;
vec4 _a0229;
vec4 _TMP232;
vec4 _a0235;
vec4 _TMP238;
vec4 _a0241;
vec4 _TMP244;
vec4 _a0247;
vec4 _TMP250;
vec4 _a0253;
vec4 _TMP256;
vec4 _a0259;
vec4 _TMP262;
vec4 _a0265;
vec4 _x0269;
vec4 _TMP270;
vec4 _x0279;
vec4 _TMP280;
vec4 _x0289;
vec4 _TMP290;
vec4 _TMP298;
vec4 _a0301;
vec4 _TMP302;
vec4 _a0305;
vec4 _TMP306;
vec4 _a0309;
vec4 _TMP310;
vec4 _a0313;
vec4 _TMP314;
vec4 _a0317;
vec4 _TMP320;
vec4 _a0323;
vec4 _TMP324;
vec4 _a0327;
vec4 _TMP328;
vec4 _a0331;
vec4 _TMP332;
vec4 _a0335;
vec4 _TMP336;
vec4 _a0339;
vec4 _TMP340;
vec4 _a0343;
vec4 _TMP344;
vec4 _a0347;
vec4 _TMP348;
vec4 _a0351;
vec4 _TMP352;
vec4 _a0355;
vec4 _TMP356;
vec4 _a0359;
vec4 _TMP360;
vec4 _a0363;
vec3 _b0367;
vec3 _b0371;
vec3 _TMP372;
vec3 _a0373;
vec3 _b0381;
vec3 _b0385;
vec3 _TMP386;
vec3 _a0387;
vec4 _t0393;
vec4 _TMP396;
vec4 _a0399;
vec4 _t0403;
vec4 _TMP406;
vec4 _a0409;
float _t0431;
vec3 _TMP440;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A4;
    vec3 _B4;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _G5;
    vec3 _H5;
    vec3 _I5;
    vec3 _A0;
    vec3 _D0;
    vec3 _G0;
    vec3 _C4;
    vec3 _F4;
    vec3 _I4;
    vec4 _b1;
    vec4 _c1;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec3 _res;
    vec3 _n1;
    vec3 _n2;
    vec3 _n3;
    vec3 _n4;
    vec3 _s;
    vec3 _aa;
    vec3 _bb;
    vec3 _cc;
    vec3 _dd;
    vec3 _t;
    vec3 _m;
    vec3 _s1;
    vec3 _s0;
    float _blend;
    vec3 _pix;
    vec4 _r1;
    bool _yeseq3;
    bvec4 _yes;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    _x0097 = TEX0.xy*TextureSize;
    _fp = fract(_x0097);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, VARt1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, VARt2.xw);
    _A4 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, VARt2.yw);
    _B4 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(Texture, VARt2.zw);
    _C = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP6 = COMPAT_TEXTURE(Texture, VARt3.xw);
    _D = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP7 = COMPAT_TEXTURE(Texture, VARt3.yw);
    _E = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = COMPAT_TEXTURE(Texture, VARt3.zw);
    _F = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP9 = COMPAT_TEXTURE(Texture, VARt4.xw);
    _G = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP10 = COMPAT_TEXTURE(Texture, VARt4.yw);
    _H = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = COMPAT_TEXTURE(Texture, VARt4.zw);
    _I = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = COMPAT_TEXTURE(Texture, VARt5.xw);
    _G5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP13 = COMPAT_TEXTURE(Texture, VARt5.yw);
    _H5 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _TMP14 = COMPAT_TEXTURE(Texture, VARt5.zw);
    _I5 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP15 = COMPAT_TEXTURE(Texture, VARt6.xy);
    _A0 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP16 = COMPAT_TEXTURE(Texture, VARt6.xz);
    _D0 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP17 = COMPAT_TEXTURE(Texture, VARt6.xw);
    _G0 = vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z));
    _TMP18 = COMPAT_TEXTURE(Texture, VARt7.xy);
    _C4 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _TMP19 = COMPAT_TEXTURE(Texture, VARt7.xz);
    _F4 = vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z));
    _TMP20 = COMPAT_TEXTURE(Texture, VARt7.xw);
    _I4 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP79 = dot(vec3(float(_B4.x), float(_B4.y), float(_B4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.x = float(_TMP79);
    _TMP79 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.y = float(_TMP79);
    _TMP79 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.z = float(_TMP79);
    _TMP79 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.w = float(_TMP79);
    _b1 = vec4(float(_r0141.x), float(_r0141.y), float(_r0141.z), float(_r0141.w));
    _TMP79 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.x = float(_TMP79);
    _TMP79 = dot(vec3(float(_A4.x), float(_A4.y), float(_A4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.y = float(_TMP79);
    _TMP79 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.z = float(_TMP79);
    _TMP79 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.w = float(_TMP79);
    _c1 = vec4(float(_r0151.x), float(_r0151.y), float(_r0151.z), float(_r0151.w));
    _TMP79 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0161.x = float(_TMP79);
    _TMP79 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0161.y = float(_TMP79);
    _TMP79 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0161.z = float(_TMP79);
    _TMP79 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0161.w = float(_TMP79);
    _e1 = vec4(float(_r0161.x), float(_r0161.y), float(_r0161.z), float(_r0161.w));
    _TMP79 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0171.x = float(_TMP79);
    _TMP79 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0171.y = float(_TMP79);
    _TMP79 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0171.z = float(_TMP79);
    _TMP79 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0171.w = float(_TMP79);
    _i4 = vec4(float(_r0171.x), float(_r0171.y), float(_r0171.z), float(_r0171.w));
    _TMP79 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0181.x = float(_TMP79);
    _TMP79 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0181.y = float(_TMP79);
    _TMP79 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0181.z = float(_TMP79);
    _TMP79 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0181.w = float(_TMP79);
    _i5 = vec4(float(_r0181.x), float(_r0181.y), float(_r0181.z), float(_r0181.w));
    _TMP79 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0191.x = float(_TMP79);
    _TMP79 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0191.y = float(_TMP79);
    _TMP79 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0191.z = float(_TMP79);
    _TMP79 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0191.w = float(_TMP79);
    _h5 = vec4(float(_r0191.x), float(_r0191.y), float(_r0191.z), float(_r0191.w));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0205 = _b1.wxyz - _b1;
    _TMP202 = abs(_a0205);
    _TMP27 = bvec4(_TMP202.x < 1.50000000E+01, _TMP202.y < 1.50000000E+01, _TMP202.z < 1.50000000E+01, _TMP202.w < 1.50000000E+01);
    _a0211 = _b1.wxyz - _c1;
    _TMP208 = abs(_a0211);
    _TMP28 = bvec4(_TMP208.x < 1.50000000E+01, _TMP208.y < 1.50000000E+01, _TMP208.z < 1.50000000E+01, _TMP208.w < 1.50000000E+01);
    _a0217 = _b1.zwxy - _b1.yzwx;
    _TMP214 = abs(_a0217);
    _TMP29 = bvec4(_TMP214.x < 1.50000000E+01, _TMP214.y < 1.50000000E+01, _TMP214.z < 1.50000000E+01, _TMP214.w < 1.50000000E+01);
    _a0223 = _b1.zwxy - _c1.zwxy;
    _TMP220 = abs(_a0223);
    _TMP30 = bvec4(_TMP220.x < 1.50000000E+01, _TMP220.y < 1.50000000E+01, _TMP220.z < 1.50000000E+01, _TMP220.w < 1.50000000E+01);
    _a0229 = _e1 - _c1.wxyz;
    _TMP226 = abs(_a0229);
    _TMP31 = bvec4(_TMP226.x < 1.50000000E+01, _TMP226.y < 1.50000000E+01, _TMP226.z < 1.50000000E+01, _TMP226.w < 1.50000000E+01);
    _a0235 = _b1.wxyz - _h5.yzwx;
    _TMP232 = abs(_a0235);
    _TMP32 = bvec4(_TMP232.x < 1.50000000E+01, _TMP232.y < 1.50000000E+01, _TMP232.z < 1.50000000E+01, _TMP232.w < 1.50000000E+01);
    _a0241 = _b1.wxyz - _i4;
    _TMP238 = abs(_a0241);
    _TMP33 = bvec4(_TMP238.x < 1.50000000E+01, _TMP238.y < 1.50000000E+01, _TMP238.z < 1.50000000E+01, _TMP238.w < 1.50000000E+01);
    _a0247 = _b1.zwxy - _h5;
    _TMP244 = abs(_a0247);
    _TMP34 = bvec4(_TMP244.x < 1.50000000E+01, _TMP244.y < 1.50000000E+01, _TMP244.z < 1.50000000E+01, _TMP244.w < 1.50000000E+01);
    _a0253 = _b1.zwxy - _i5;
    _TMP250 = abs(_a0253);
    _TMP35 = bvec4(_TMP250.x < 1.50000000E+01, _TMP250.y < 1.50000000E+01, _TMP250.z < 1.50000000E+01, _TMP250.w < 1.50000000E+01);
    _a0259 = _e1 - _c1.zwxy;
    _TMP256 = abs(_a0259);
    _TMP36 = bvec4(_TMP256.x < 1.50000000E+01, _TMP256.y < 1.50000000E+01, _TMP256.z < 1.50000000E+01, _TMP256.w < 1.50000000E+01);
    _a0265 = _e1 - _c1;
    _TMP262 = abs(_a0265);
    _TMP37 = bvec4(_TMP262.x < 1.50000000E+01, _TMP262.y < 1.50000000E+01, _TMP262.z < 1.50000000E+01, _TMP262.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || !_TMP29.x && !_TMP30.x || _TMP31.x && (!_TMP32.x && !_TMP33.x || !_TMP34.x && !_TMP35.x) || _TMP36.x || _TMP37.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || !_TMP29.y && !_TMP30.y || _TMP31.y && (!_TMP32.y && !_TMP33.y || !_TMP34.y && !_TMP35.y) || _TMP36.y || _TMP37.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || !_TMP29.z && !_TMP30.z || _TMP31.z && (!_TMP32.z && !_TMP33.z || !_TMP34.z && !_TMP35.z) || _TMP36.z || _TMP37.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || !_TMP29.w && !_TMP30.w || _TMP31.w && (!_TMP32.w && !_TMP33.w || !_TMP34.w && !_TMP35.w) || _TMP36.w || _TMP37.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c1.z && _b1.y != _c1.z, _e1.y != _c1.w && _b1.z != _c1.w, _e1.z != _c1.x && _b1.w != _c1.x, _e1.w != _c1.y && _b1.x != _c1.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c1.x && _b1.x != _c1.x, _e1.y != _c1.y && _b1.y != _c1.y, _e1.z != _c1.z && _b1.z != _c1.z, _e1.w != _c1.w && _b1.w != _c1.w);
    _x0269 = _fx - vec4( 1.00000000E+00, 0.00000000E+00, -1.00000000E+00, 0.00000000E+00);
    _TMP83 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0269);
    _TMP270 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP83);
    _fx45 = _TMP270*_TMP270*(3.00000000E+00 - 2.00000000E+00*_TMP270);
    _x0279 = _fx_left - vec4( 5.00000000E-01, 5.00000000E-01, -1.00000000E+00, -5.00000000E-01);
    _TMP83 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0279);
    _TMP280 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP83);
    _fx30 = _TMP280*_TMP280*(3.00000000E+00 - 2.00000000E+00*_TMP280);
    _x0289 = _fx_up - vec4( 1.50000000E+00, -5.00000000E-01, -1.50000000E+00, 0.00000000E+00);
    _TMP83 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0289);
    _TMP290 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP83);
    _fx60 = _TMP290*_TMP290*(3.00000000E+00 - 2.00000000E+00*_TMP290);
    _a0301 = _e1 - _c1;
    _TMP298 = abs(_a0301);
    _a0305 = _e1 - _c1.zwxy;
    _TMP302 = abs(_a0305);
    _a0309 = _c1.wxyz - _h5;
    _TMP306 = abs(_a0309);
    _a0313 = _c1.wxyz - _h5.yzwx;
    _TMP310 = abs(_a0313);
    _a0317 = _b1.zwxy - _b1.wxyz;
    _TMP314 = abs(_a0317);
    _TMP38 = _TMP298 + _TMP302 + _TMP306 + _TMP310 + 4.00000000E+00*_TMP314;
    _a0323 = _b1.zwxy - _b1.yzwx;
    _TMP320 = abs(_a0323);
    _a0327 = _b1.zwxy - _i5;
    _TMP324 = abs(_a0327);
    _a0331 = _b1.wxyz - _i4;
    _TMP328 = abs(_a0331);
    _a0335 = _b1.wxyz - _b1;
    _TMP332 = abs(_a0335);
    _a0339 = _e1 - _c1.wxyz;
    _TMP336 = abs(_a0339);
    _TMP39 = _TMP320 + _TMP324 + _TMP328 + _TMP332 + 4.00000000E+00*_TMP336;
    _edr = bvec4((_TMP38 + 3.50000000E+00).x < _TMP39.x && _interp_restriction_lv1.x, (_TMP38 + 3.50000000E+00).y < _TMP39.y && _interp_restriction_lv1.y, (_TMP38 + 3.50000000E+00).z < _TMP39.z && _interp_restriction_lv1.z, (_TMP38 + 3.50000000E+00).w < _TMP39.w && _interp_restriction_lv1.w);
    _a0343 = _b1.wxyz - _c1.zwxy;
    _TMP340 = abs(_a0343);
    _a0347 = _b1.zwxy - _c1;
    _TMP344 = abs(_a0347);
    _edr_left = bvec4((2.00000000E+00*_TMP340).x <= _TMP344.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP340).y <= _TMP344.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP340).z <= _TMP344.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP340).w <= _TMP344.w && _interp_restriction_lv2_left.w);
    _a0351 = _b1.wxyz - _c1.zwxy;
    _TMP348 = abs(_a0351);
    _a0355 = _b1.zwxy - _c1;
    _TMP352 = abs(_a0355);
    _edr_up = bvec4(_TMP348.x >= (2.00000000E+00*_TMP352).x && _interp_restriction_lv2_up.x, _TMP348.y >= (2.00000000E+00*_TMP352).y && _interp_restriction_lv2_up.y, _TMP348.z >= (2.00000000E+00*_TMP352).z && _interp_restriction_lv2_up.z, _TMP348.w >= (2.00000000E+00*_TMP352).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0359 = _e1 - _b1.wxyz;
    _TMP356 = abs(_a0359);
    _a0363 = _e1 - _b1.zwxy;
    _TMP360 = abs(_a0363);
    _px = bvec4(_TMP356.x <= _TMP360.x, _TMP356.y <= _TMP360.y, _TMP356.z <= _TMP360.z, _TMP356.w <= _TMP360.w);
    _res = _E;
    _n1 = vec3(float(_B11.x), float(_B11.y), float(_B11.z));
    _n2 = vec3(float(_B4.x), float(_B4.y), float(_B4.z));
    _s = vec3(float(_E.x), float(_E.y), float(_E.z));
    _n3 = vec3(float(_H.x), float(_H.y), float(_H.z));
    _n4 = vec3(float(_H5.x), float(_H5.y), float(_H5.z));
    _aa = _n2 - _n1;
    _bb = _s - _n2;
    _cc = _n3 - _s;
    _dd = _n4 - _n3;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s.x < 5.00000000E-01 ? (2.00000000E+00*_s).x : (2.00000000E+00*(1.00000000E+00 - _s)).x, _s.y < 5.00000000E-01 ? (2.00000000E+00*_s).y : (2.00000000E+00*(1.00000000E+00 - _s)).y, _s.z < 5.00000000E-01 ? (2.00000000E+00*_s).z : (2.00000000E+00*(1.00000000E+00 - _s)).z);
    _TMP46 = abs(_bb);
    _b0367 = 6.49999976E-01*_TMP46;
    _m = min(_m, _b0367);
    _TMP47 = abs(_cc);
    _b0371 = 6.49999976E-01*_TMP47;
    _m = min(_m, _b0371);
    _a0373 = -_m;
    _TMP72 = min(_m, _t);
    _TMP372 = max(_a0373, _TMP72);
    _s1 = (2.00000000E+00*_fp.y - 1.00000000E+00)*_TMP372 + _s;
    _n1 = vec3(float(_D0.x), float(_D0.y), float(_D0.z));
    _n2 = vec3(float(_D.x), float(_D.y), float(_D.z));
    _n3 = vec3(float(_F.x), float(_F.y), float(_F.z));
    _n4 = vec3(float(_F4.x), float(_F4.y), float(_F4.z));
    _aa = _n2 - _n1;
    _bb = _s1 - _n2;
    _cc = _n3 - _s1;
    _dd = _n4 - _n3;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s1.x < 5.00000000E-01 ? (2.00000000E+00*_s1).x : (2.00000000E+00*(1.00000000E+00 - _s1)).x, _s1.y < 5.00000000E-01 ? (2.00000000E+00*_s1).y : (2.00000000E+00*(1.00000000E+00 - _s1)).y, _s1.z < 5.00000000E-01 ? (2.00000000E+00*_s1).z : (2.00000000E+00*(1.00000000E+00 - _s1)).z);
    _TMP48 = abs(_bb);
    _b0381 = 6.49999976E-01*_TMP48;
    _m = min(_m, _b0381);
    _TMP49 = abs(_cc);
    _b0385 = 6.49999976E-01*_TMP49;
    _m = min(_m, _b0385);
    _a0387 = -_m;
    _TMP72 = min(_m, _t);
    _TMP386 = max(_a0387, _TMP72);
    _s0 = (2.00000000E+00*_fp.x - 1.00000000E+00)*_TMP386 + _s1;
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _blend = 0.00000000E+00;
    _t0393 = vec4(float(_edr.x), float(_edr.y), float(_edr.z), float(_edr.w));
    _r1 = _e1 + _t0393*(_b1.wxyz - _e1);
    _yeseq3 = false;
    _a0399 = _r1 - _e1;
    _TMP396 = abs(_a0399);
    _TMP50 = bvec4(_TMP396.x < 5.00000000E+00, _TMP396.y < 5.00000000E+00, _TMP396.z < 5.00000000E+00, _TMP396.w < 5.00000000E+00);
    if (_TMP50.x && _TMP50.y && _TMP50.z && _TMP50.w) { 
        _yeseq3 = true;
        _res = vec3(float(_s0.x), float(_s0.y), float(_s0.z));
        _pix = _res;
    } else {
        _pix = _E;
    } 
    _t0403 = vec4(float(_px.x), float(_px.y), float(_px.z), float(_px.w));
    _TMP53 = _b1.wxyz + _t0403*(_b1.zwxy - _b1.wxyz);
    _a0409 = _e1 - _TMP53;
    _TMP406 = abs(_a0409);
    _TMP54 = bvec4(_TMP406.x < 2.00000000E+00, _TMP406.y < 2.00000000E+00, _TMP406.z < 2.00000000E+00, _TMP406.w < 2.00000000E+00);
    _yes = bvec4(_yeseq3 && _TMP54.x, _yeseq3 && _TMP54.y, _yeseq3 && _TMP54.z, _yeseq3 && _TMP54.w);
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP55 = max(_final30, _final60);
    _maximo = max(_TMP55, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP56 = _F;
        } else {
            _TMP56 = _H;
        } 
        _pix = _TMP56;
        _blend = _maximo.x;
        if (_yes.x) { 
            _res = vec3(float(_s0.x), float(_s0.y), float(_s0.z));
            _pix = _res;
        } else {
            _res = _E;
        } 
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP58 = _B4;
            } else {
                _TMP58 = _F;
            } 
            _pix = _TMP58;
            _blend = _maximo.y;
            if (_yes.y) { 
                _res = vec3(float(_s0.x), float(_s0.y), float(_s0.z));
                _pix = _res;
            } else {
                _res = _E;
            } 
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP60 = _D;
                } else {
                    _TMP60 = _B4;
                } 
                _pix = _TMP60;
                _blend = _maximo.z;
                if (_yes.z) { 
                    _res = vec3(float(_s0.x), float(_s0.y), float(_s0.z));
                    _pix = _res;
                } else {
                    _res = _E;
                } 
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP62 = _H;
                    } else {
                        _TMP62 = _D;
                    } 
                    _pix = _TMP62;
                    _blend = _maximo.w;
                    if (_yes.w) { 
                        _res = vec3(float(_s0.x), float(_s0.y), float(_s0.z));
                        _pix = _res;
                    } else {
                        _res = _E;
                    } 
                } 
            } 
        } 
    } 
    _TMP80 = pow(float(_res.x), 2.40039062E+00);
    _TMP75 = float(_TMP80);
    _TMP80 = pow(float(_res.y), 2.40039062E+00);
    _TMP76 = float(_TMP80);
    _TMP80 = pow(float(_res.z), 2.40039062E+00);
    _TMP77 = float(_TMP80);
    _res = vec3(_TMP75, _TMP76, _TMP77);
    _TMP80 = pow(float(_pix.x), 2.40039062E+00);
    _TMP75 = float(_TMP80);
    _TMP80 = pow(float(_pix.y), 2.40039062E+00);
    _TMP76 = float(_TMP80);
    _TMP80 = pow(float(_pix.z), 2.40039062E+00);
    _TMP77 = float(_TMP80);
    _pix = vec3(_TMP75, _TMP76, _TMP77);
    _t0431 = float(_blend);
    _res = _res + _t0431*(_pix - _res);
    _TMP80 = pow(float(_res.x), 4.54589844E-01);
    _TMP75 = float(_TMP80);
    _TMP80 = pow(float(_res.y), 4.54589844E-01);
    _TMP76 = float(_TMP80);
    _TMP80 = pow(float(_res.z), 4.54589844E-01);
    _TMP77 = float(_TMP80);
    _TMP64 = vec3(_TMP75, _TMP76, _TMP77);
    _TMP81 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), vec3(float(_TMP64.x), float(_TMP64.y), float(_TMP64.z)));
    _TMP78 = vec3(float(_TMP81.x), float(_TMP81.y), float(_TMP81.z));
    _TMP82 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), vec3(float(_TMP78.x), float(_TMP78.y), float(_TMP78.z)));
    _TMP440 = vec3(float(_TMP82.x), float(_TMP82.y), float(_TMP82.z));
    _ret_0 = vec4(float(_TMP440.x), float(_TMP440.y), float(_TMP440.z), 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
