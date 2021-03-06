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
float _TMP61;
float _TMP60;
float _TMP59;
vec3 _TMP70;
vec3 _TMP58;
vec3 _TMP57;
vec3 _TMP56;
vec3 _TMP55;
vec3 _TMP54;
vec3 _TMP53;
vec3 _TMP52;
vec3 _TMP51;
vec4 _TMP50;
vec4 _TMP49;
vec4 _TMP48;
vec4 _TMP41;
vec4 _TMP40;
vec4 _TMP71;
bvec4 _TMP39;
bvec4 _TMP38;
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
float _TMP69;
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
vec2 _x0085;
vec4 _r0129;
vec4 _r0139;
vec4 _r0149;
vec4 _r0159;
vec4 _r0169;
vec4 _r0179;
vec4 _TMP190;
vec4 _a0193;
vec4 _TMP196;
vec4 _a0199;
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
vec4 _x0299;
vec4 _TMP300;
vec4 _x0309;
vec4 _TMP310;
vec4 _TMP318;
vec4 _a0321;
vec4 _TMP322;
vec4 _a0325;
vec4 _TMP326;
vec4 _a0329;
vec4 _TMP330;
vec4 _a0333;
vec4 _TMP334;
vec4 _a0337;
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
vec4 _TMP364;
vec4 _a0367;
vec4 _TMP368;
vec4 _a0371;
vec4 _TMP372;
vec4 _a0375;
vec4 _TMP376;
vec4 _a0379;
vec4 _TMP380;
vec4 _a0383;
float _t0393;
float _t0395;
vec3 _df0397;
vec3 _a0399;
vec3 _df0401;
vec3 _a0403;
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
    bvec4 _interp_restriction_lv3_left;
    bvec4 _interp_restriction_lv3_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    bvec4 _nc15;
    bvec4 _nc75;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec4 _fx3_left;
    vec4 _fx3_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A3;
    vec3 _B3;
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
    vec4 _c3;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _fx15;
    vec4 _fx75;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _final15;
    vec4 _final75;
    vec4 _maximo;
    vec3 _res;
    _x0085 = TEX0.xy*TextureSize;
    _fp = fract(_x0085);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, VARt1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, VARt2.xw);
    _A3 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, VARt2.yw);
    _B3 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
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
    _TMP69 = dot(vec3(float(_B3.x), float(_B3.y), float(_B3.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0129.x = float(_TMP69);
    _TMP69 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0129.y = float(_TMP69);
    _TMP69 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0129.z = float(_TMP69);
    _TMP69 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0129.w = float(_TMP69);
    _b1 = vec4(float(_r0129.x), float(_r0129.y), float(_r0129.z), float(_r0129.w));
    _TMP69 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0139.x = float(_TMP69);
    _TMP69 = dot(vec3(float(_A3.x), float(_A3.y), float(_A3.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0139.y = float(_TMP69);
    _TMP69 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0139.z = float(_TMP69);
    _TMP69 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0139.w = float(_TMP69);
    _c3 = vec4(float(_r0139.x), float(_r0139.y), float(_r0139.z), float(_r0139.w));
    _TMP69 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0149.x = float(_TMP69);
    _TMP69 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0149.y = float(_TMP69);
    _TMP69 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0149.z = float(_TMP69);
    _TMP69 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0149.w = float(_TMP69);
    _e1 = vec4(float(_r0149.x), float(_r0149.y), float(_r0149.z), float(_r0149.w));
    _TMP69 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0159.x = float(_TMP69);
    _TMP69 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0159.y = float(_TMP69);
    _TMP69 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0159.z = float(_TMP69);
    _TMP69 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0159.w = float(_TMP69);
    _i4 = vec4(float(_r0159.x), float(_r0159.y), float(_r0159.z), float(_r0159.w));
    _TMP69 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0169.x = float(_TMP69);
    _TMP69 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0169.y = float(_TMP69);
    _TMP69 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0169.z = float(_TMP69);
    _TMP69 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0169.w = float(_TMP69);
    _i5 = vec4(float(_r0169.x), float(_r0169.y), float(_r0169.z), float(_r0169.w));
    _TMP69 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0179.x = float(_TMP69);
    _TMP69 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0179.y = float(_TMP69);
    _TMP69 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0179.z = float(_TMP69);
    _TMP69 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0179.w = float(_TMP69);
    _h5 = vec4(float(_r0179.x), float(_r0179.y), float(_r0179.z), float(_r0179.w));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _fx3_left = vec4( 6.00000000E+00, -2.00000000E+00, -6.00000000E+00, 2.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 6.00000000E+00, -2.00000000E+00, -6.00000000E+00)*_fp.x;
    _fx3_up = vec4( 2.00000000E+00, -6.00000000E+00, -2.00000000E+00, 6.00000000E+00)*_fp.y + vec4( 6.00000000E+00, 2.00000000E+00, -6.00000000E+00, -2.00000000E+00)*_fp.x;
    _a0193 = _b1.wxyz - _b1;
    _TMP190 = abs(_a0193);
    _TMP27 = bvec4(_TMP190.x < 1.00000000E+01, _TMP190.y < 1.00000000E+01, _TMP190.z < 1.00000000E+01, _TMP190.w < 1.00000000E+01);
    _a0199 = _b1.zwxy - _b1.yzwx;
    _TMP196 = abs(_a0199);
    _TMP28 = bvec4(_TMP196.x < 1.00000000E+01, _TMP196.y < 1.00000000E+01, _TMP196.z < 1.00000000E+01, _TMP196.w < 1.00000000E+01);
    _a0205 = _e1 - _c3.wxyz;
    _TMP202 = abs(_a0205);
    _TMP29 = bvec4(_TMP202.x < 1.00000000E+01, _TMP202.y < 1.00000000E+01, _TMP202.z < 1.00000000E+01, _TMP202.w < 1.00000000E+01);
    _a0211 = _b1.wxyz - _i4;
    _TMP208 = abs(_a0211);
    _TMP30 = bvec4(_TMP208.x < 1.00000000E+01, _TMP208.y < 1.00000000E+01, _TMP208.z < 1.00000000E+01, _TMP208.w < 1.00000000E+01);
    _a0217 = _b1.zwxy - _i5;
    _TMP214 = abs(_a0217);
    _TMP31 = bvec4(_TMP214.x < 1.00000000E+01, _TMP214.y < 1.00000000E+01, _TMP214.z < 1.00000000E+01, _TMP214.w < 1.00000000E+01);
    _a0223 = _e1 - _c3.zwxy;
    _TMP220 = abs(_a0223);
    _TMP32 = bvec4(_TMP220.x < 1.00000000E+01, _TMP220.y < 1.00000000E+01, _TMP220.z < 1.00000000E+01, _TMP220.w < 1.00000000E+01);
    _a0229 = _e1 - _c3;
    _TMP226 = abs(_a0229);
    _TMP33 = bvec4(_TMP226.x < 1.00000000E+01, _TMP226.y < 1.00000000E+01, _TMP226.z < 1.00000000E+01, _TMP226.w < 1.00000000E+01);
    _a0235 = _b1 - _i4.yzwx;
    _TMP232 = abs(_a0235);
    _TMP34 = bvec4(_TMP232.x < 1.00000000E+01, _TMP232.y < 1.00000000E+01, _TMP232.z < 1.00000000E+01, _TMP232.w < 1.00000000E+01);
    _a0241 = _b1.yzwx - _i5.wxyz;
    _TMP238 = abs(_a0241);
    _TMP35 = bvec4(_TMP238.x < 1.00000000E+01, _TMP238.y < 1.00000000E+01, _TMP238.z < 1.00000000E+01, _TMP238.w < 1.00000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || _TMP29.x && !_TMP30.x && !_TMP31.x || _TMP32.x || _TMP33.x) && (_b1.w != _h5.y && _b1.w != _c3.w || _b1.z != _h5.x && _b1.z != _c3.w || _b1.z != _c3.z || _b1.w != _c3.x || _TMP34.x && _TMP35.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || _TMP29.y && !_TMP30.y && !_TMP31.y || _TMP32.y || _TMP33.y) && (_b1.x != _h5.z && _b1.x != _c3.x || _b1.w != _h5.y && _b1.w != _c3.x || _b1.w != _c3.w || _b1.x != _c3.y || _TMP34.y && _TMP35.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || _TMP29.z && !_TMP30.z && !_TMP31.z || _TMP32.z || _TMP33.z) && (_b1.y != _h5.w && _b1.y != _c3.y || _b1.x != _h5.z && _b1.x != _c3.y || _b1.x != _c3.x || _b1.y != _c3.z || _TMP34.z && _TMP35.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || _TMP29.w && !_TMP30.w && !_TMP31.w || _TMP32.w || _TMP33.w) && (_b1.z != _h5.x && _b1.z != _c3.z || _b1.y != _h5.w && _b1.y != _c3.z || _b1.y != _c3.y || _b1.z != _c3.w || _TMP34.w && _TMP35.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c3.z && _b1.y != _c3.z, _e1.y != _c3.w && _b1.z != _c3.w, _e1.z != _c3.x && _b1.w != _c3.x, _e1.w != _c3.y && _b1.x != _c3.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c3.x && _b1.x != _c3.x, _e1.y != _c3.y && _b1.y != _c3.y, _e1.z != _c3.z && _b1.z != _c3.z, _e1.w != _c3.w && _b1.w != _c3.w);
    _a0247 = _c3.zwxy - _i5.wxyz;
    _TMP244 = abs(_a0247);
    _TMP36 = bvec4(_TMP244.x < 2.00000000E+00, _TMP244.y < 2.00000000E+00, _TMP244.z < 2.00000000E+00, _TMP244.w < 2.00000000E+00);
    _a0253 = _h5.wxyz - _i5.wxyz;
    _TMP250 = abs(_a0253);
    _TMP37 = bvec4(_TMP250.x < 2.00000000E+00, _TMP250.y < 2.00000000E+00, _TMP250.z < 2.00000000E+00, _TMP250.w < 2.00000000E+00);
    _interp_restriction_lv3_left = bvec4(_TMP36.x && !_TMP37.x, _TMP36.y && !_TMP37.y, _TMP36.z && !_TMP37.z, _TMP36.w && !_TMP37.w);
    _a0259 = _c3 - _i4.yzwx;
    _TMP256 = abs(_a0259);
    _TMP38 = bvec4(_TMP256.x < 2.00000000E+00, _TMP256.y < 2.00000000E+00, _TMP256.z < 2.00000000E+00, _TMP256.w < 2.00000000E+00);
    _a0265 = _h5.zwxy - _i4.yzwx;
    _TMP262 = abs(_a0265);
    _TMP39 = bvec4(_TMP262.x < 2.00000000E+00, _TMP262.y < 2.00000000E+00, _TMP262.z < 2.00000000E+00, _TMP262.w < 2.00000000E+00);
    _interp_restriction_lv3_up = bvec4(_TMP38.x && !_TMP39.x, _TMP38.y && !_TMP39.y, _TMP38.z && !_TMP39.z, _TMP38.w && !_TMP39.w);
    _x0269 = (_fx - vec4( 1.10000002E+00, 9.99999940E-02, -8.99999976E-01, 9.99999940E-02))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP71 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0269);
    _TMP270 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _fx45 = _TMP270*_TMP270*(3.00000000E+00 - 2.00000000E+00*_TMP270);
    _x0279 = (_fx_left - vec4( 6.00000024E-01, 6.00000024E-01, -8.99999976E-01, -4.00000006E-01))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 8.00000012E-01);
    _TMP71 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0279);
    _TMP280 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _fx30 = _TMP280*_TMP280*(3.00000000E+00 - 2.00000000E+00*_TMP280);
    _x0289 = (_fx_up - vec4( 1.60000002E+00, -4.00000006E-01, -1.39999998E+00, 9.99999940E-02))/vec4( 8.00000072E-01, 8.00000012E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP71 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0289);
    _TMP290 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _fx60 = _TMP290*_TMP290*(3.00000000E+00 - 2.00000000E+00*_TMP290);
    _x0299 = (_fx3_left - vec4( 4.59999990E+00, 2.59999990E+00, -3.40000010E+00, -1.39999998E+00))/vec4( 8.00000191E-01, 8.00000191E-01, 8.00000191E-01, 7.99999952E-01);
    _TMP71 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0299);
    _TMP300 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _fx15 = _TMP300*_TMP300*(3.00000000E+00 - 2.00000000E+00*_TMP300);
    _x0309 = (_fx3_up - vec4( 4.59999990E+00, -1.39999998E+00, -3.40000010E+00, 2.59999990E+00))/vec4( 8.00000191E-01, 7.99999952E-01, 8.00000191E-01, 8.00000191E-01);
    _TMP71 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0309);
    _TMP310 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _fx75 = _TMP310*_TMP310*(3.00000000E+00 - 2.00000000E+00*_TMP310);
    _a0321 = _e1 - _c3;
    _TMP318 = abs(_a0321);
    _a0325 = _e1 - _c3.zwxy;
    _TMP322 = abs(_a0325);
    _a0329 = _c3.wxyz - _h5;
    _TMP326 = abs(_a0329);
    _a0333 = _c3.wxyz - _h5.yzwx;
    _TMP330 = abs(_a0333);
    _a0337 = _b1.zwxy - _b1.wxyz;
    _TMP334 = abs(_a0337);
    _TMP40 = _TMP318 + _TMP322 + _TMP326 + _TMP330 + 4.00000000E+00*_TMP334;
    _a0343 = _b1.zwxy - _b1.yzwx;
    _TMP340 = abs(_a0343);
    _a0347 = _b1.zwxy - _i5;
    _TMP344 = abs(_a0347);
    _a0351 = _b1.wxyz - _i4;
    _TMP348 = abs(_a0351);
    _a0355 = _b1.wxyz - _b1;
    _TMP352 = abs(_a0355);
    _a0359 = _e1 - _c3.wxyz;
    _TMP356 = abs(_a0359);
    _TMP41 = _TMP340 + _TMP344 + _TMP348 + _TMP352 + 4.00000000E+00*_TMP356;
    _edr = bvec4(_TMP40.x < _TMP41.x && _interp_restriction_lv1.x, _TMP40.y < _TMP41.y && _interp_restriction_lv1.y, _TMP40.z < _TMP41.z && _interp_restriction_lv1.z, _TMP40.w < _TMP41.w && _interp_restriction_lv1.w);
    _a0363 = _b1.wxyz - _c3.zwxy;
    _TMP360 = abs(_a0363);
    _a0367 = _b1.zwxy - _c3;
    _TMP364 = abs(_a0367);
    _edr_left = bvec4((2.00000000E+00*_TMP360).x <= _TMP364.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP360).y <= _TMP364.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP360).z <= _TMP364.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP360).w <= _TMP364.w && _interp_restriction_lv2_left.w);
    _a0371 = _b1.wxyz - _c3.zwxy;
    _TMP368 = abs(_a0371);
    _a0375 = _b1.zwxy - _c3;
    _TMP372 = abs(_a0375);
    _edr_up = bvec4(_TMP368.x >= (2.00000000E+00*_TMP372).x && _interp_restriction_lv2_up.x, _TMP368.y >= (2.00000000E+00*_TMP372).y && _interp_restriction_lv2_up.y, _TMP368.z >= (2.00000000E+00*_TMP372).z && _interp_restriction_lv2_up.z, _TMP368.w >= (2.00000000E+00*_TMP372).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _nc15 = bvec4(_edr.x && _edr_left.x && _interp_restriction_lv3_left.x && bool(_fx15.x), _edr.y && _edr_left.y && _interp_restriction_lv3_left.y && bool(_fx15.y), _edr.z && _edr_left.z && _interp_restriction_lv3_left.z && bool(_fx15.z), _edr.w && _edr_left.w && _interp_restriction_lv3_left.w && bool(_fx15.w));
    _nc75 = bvec4(_edr.x && _edr_up.x && _interp_restriction_lv3_up.x && bool(_fx75.x), _edr.y && _edr_up.y && _interp_restriction_lv3_up.y && bool(_fx75.y), _edr.z && _edr_up.z && _interp_restriction_lv3_up.z && bool(_fx75.z), _edr.w && _edr_up.w && _interp_restriction_lv3_up.w && bool(_fx75.w));
    _a0379 = _e1 - _b1.wxyz;
    _TMP376 = abs(_a0379);
    _a0383 = _e1 - _b1.zwxy;
    _TMP380 = abs(_a0383);
    _px = bvec4(_TMP376.x <= _TMP380.x, _TMP376.y <= _TMP380.y, _TMP376.z <= _TMP380.z, _TMP376.w <= _TMP380.w);
    _nc = bvec4(_nc75.x || _nc15.x || _nc30.x || _nc60.x || _nc45.x, _nc75.y || _nc15.y || _nc30.y || _nc60.y || _nc45.y, _nc75.z || _nc15.z || _nc30.z || _nc60.z || _nc45.z, _nc75.w || _nc15.w || _nc30.w || _nc60.w || _nc45.w);
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _final15 = vec4(float(_nc15.x), float(_nc15.y), float(_nc15.z), float(_nc15.w))*_fx15;
    _final75 = vec4(float(_nc75.x), float(_nc75.y), float(_nc75.z), float(_nc75.w))*_fx75;
    _TMP48 = max(_final15, _final75);
    _TMP49 = max(_final30, _final60);
    _TMP50 = max(_TMP48, _TMP49);
    _maximo = max(_TMP50, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP51 = _F;
        } else {
            _TMP51 = _H;
        } 
        _pix1 = _TMP51;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP52 = _B3;
            } else {
                _TMP52 = _F;
            } 
            _pix1 = _TMP52;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP53 = _D;
                } else {
                    _TMP53 = _B3;
                } 
                _pix1 = _TMP53;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP54 = _H;
                    } else {
                        _TMP54 = _D;
                    } 
                    _pix1 = _TMP54;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP55 = _H;
        } else {
            _TMP55 = _D;
        } 
        _pix2 = _TMP55;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP56 = _D;
            } else {
                _TMP56 = _B3;
            } 
            _pix2 = _TMP56;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP57 = _B3;
                } else {
                    _TMP57 = _F;
                } 
                _pix2 = _TMP57;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP58 = _F;
                    } else {
                        _TMP58 = _H;
                    } 
                    _pix2 = _TMP58;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _t0393 = float(_blend1);
    _res1 = _E + _t0393*(_pix1 - _E);
    _t0395 = float(_blend2);
    _res2 = _E + _t0395*(_pix2 - _E);
    _a0399 = _E - _res1;
    _TMP70 = abs(vec3(float(_a0399.x), float(_a0399.y), float(_a0399.z)));
    _df0397 = vec3(float(_TMP70.x), float(_TMP70.y), float(_TMP70.z));
    _TMP59 = _df0397.x + _df0397.y + _df0397.z;
    _a0403 = _E - _res2;
    _TMP70 = abs(vec3(float(_a0403.x), float(_a0403.y), float(_a0403.z)));
    _df0401 = vec3(float(_TMP70.x), float(_TMP70.y), float(_TMP70.z));
    _TMP60 = _df0401.x + _df0401.y + _df0401.z;
    _TMP61 = float((_TMP60 >= _TMP59));
    _res = _res1 + _TMP61*(_res2 - _res1);
    _ret_0 = vec4(float(_res.x), float(_res.y), float(_res.z), 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
