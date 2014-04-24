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
vec4 _r0010;
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
    _r0010 = VertexCoord.x*MVPMatrix[0];
    _r0010 = _r0010 + VertexCoord.y*MVPMatrix[1];
    _r0010 = _r0010 + VertexCoord.z*MVPMatrix[2];
    _r0010 = _r0010 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT.VARt1 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.VARt2 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.VARt3 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.VARt4 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.VARt5 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.VARt6 = _texCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.VARt7 = _texCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _r0010;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    VARt1 = _OUT.VARt1;
    VARt2 = _OUT.VARt2;
    VARt3 = _OUT.VARt3;
    VARt4 = _OUT.VARt4;
    VARt5 = _OUT.VARt5;
    VARt6 = _OUT.VARt6;
    VARt7 = _OUT.VARt7;
    gl_Position = vec4(float(_r0010.x), float(_r0010.y), float(_r0010.z), float(_r0010.w));
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
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec3 _TMP46;
vec4 _TMP39;
vec4 _TMP38;
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
float _TMP56;
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
vec2 _x0070;
vec4 _r0114;
vec4 _r0124;
vec4 _r0134;
vec4 _r0144;
vec4 _r0154;
vec4 _r0164;
vec4 _TMP175;
vec4 _a0178;
vec4 _TMP181;
vec4 _a0184;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP199;
vec4 _a0202;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP211;
vec4 _a0214;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP223;
vec4 _a0226;
vec4 _TMP229;
vec4 _a0232;
vec4 _TMP235;
vec4 _a0238;
vec4 _TMP241;
vec4 _a0244;
vec4 _TMP245;
vec4 _a0248;
vec4 _TMP249;
vec4 _a0252;
vec4 _TMP253;
vec4 _a0256;
vec4 _TMP257;
vec4 _a0260;
vec4 _TMP263;
vec4 _a0266;
vec4 _TMP267;
vec4 _a0270;
vec4 _TMP271;
vec4 _a0274;
vec4 _TMP275;
vec4 _a0278;
vec4 _TMP279;
vec4 _a0282;
vec4 _TMP283;
vec4 _a0286;
vec4 _TMP287;
vec4 _a0290;
vec4 _TMP291;
vec4 _a0294;
vec4 _TMP295;
vec4 _a0298;
vec4 _TMP299;
vec4 _a0302;
vec4 _TMP303;
vec4 _a0306;
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
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A2;
    vec3 _B2;
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
    vec3 _res;
    _x0070 = TEX0.xy*TextureSize;
    _fp = fract(_x0070);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, VARt1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, VARt2.xw);
    _A2 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, VARt2.yw);
    _B2 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
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
    _TMP56 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0114.x = float(_TMP56);
    _TMP56 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0114.y = float(_TMP56);
    _TMP56 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0114.z = float(_TMP56);
    _TMP56 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0114.w = float(_TMP56);
    _b1 = vec4(float(_r0114.x), float(_r0114.y), float(_r0114.z), float(_r0114.w));
    _TMP56 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.x = float(_TMP56);
    _TMP56 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.y = float(_TMP56);
    _TMP56 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.z = float(_TMP56);
    _TMP56 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.w = float(_TMP56);
    _c1 = vec4(float(_r0124.x), float(_r0124.y), float(_r0124.z), float(_r0124.w));
    _TMP56 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.x = float(_TMP56);
    _TMP56 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.y = float(_TMP56);
    _TMP56 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.z = float(_TMP56);
    _TMP56 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.w = float(_TMP56);
    _e1 = vec4(float(_r0134.x), float(_r0134.y), float(_r0134.z), float(_r0134.w));
    _TMP56 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.x = float(_TMP56);
    _TMP56 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.y = float(_TMP56);
    _TMP56 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.z = float(_TMP56);
    _TMP56 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.w = float(_TMP56);
    _i4 = vec4(float(_r0144.x), float(_r0144.y), float(_r0144.z), float(_r0144.w));
    _TMP56 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.x = float(_TMP56);
    _TMP56 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.y = float(_TMP56);
    _TMP56 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.z = float(_TMP56);
    _TMP56 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.w = float(_TMP56);
    _i5 = vec4(float(_r0154.x), float(_r0154.y), float(_r0154.z), float(_r0154.w));
    _TMP56 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.x = float(_TMP56);
    _TMP56 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.y = float(_TMP56);
    _TMP56 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.z = float(_TMP56);
    _TMP56 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.w = float(_TMP56);
    _h5 = vec4(float(_r0164.x), float(_r0164.y), float(_r0164.z), float(_r0164.w));
    _a0178 = _b1.wxyz - _b1;
    _TMP175 = abs(_a0178);
    _TMP27 = bvec4(_TMP175.x < 1.50000000E+01, _TMP175.y < 1.50000000E+01, _TMP175.z < 1.50000000E+01, _TMP175.w < 1.50000000E+01);
    _a0184 = _b1.wxyz - _c1;
    _TMP181 = abs(_a0184);
    _TMP28 = bvec4(_TMP181.x < 1.50000000E+01, _TMP181.y < 1.50000000E+01, _TMP181.z < 1.50000000E+01, _TMP181.w < 1.50000000E+01);
    _a0190 = _b1.zwxy - _b1.yzwx;
    _TMP187 = abs(_a0190);
    _TMP29 = bvec4(_TMP187.x < 1.50000000E+01, _TMP187.y < 1.50000000E+01, _TMP187.z < 1.50000000E+01, _TMP187.w < 1.50000000E+01);
    _a0196 = _b1.zwxy - _c1.zwxy;
    _TMP193 = abs(_a0196);
    _TMP30 = bvec4(_TMP193.x < 1.50000000E+01, _TMP193.y < 1.50000000E+01, _TMP193.z < 1.50000000E+01, _TMP193.w < 1.50000000E+01);
    _a0202 = _e1 - _c1.wxyz;
    _TMP199 = abs(_a0202);
    _TMP31 = bvec4(_TMP199.x < 1.50000000E+01, _TMP199.y < 1.50000000E+01, _TMP199.z < 1.50000000E+01, _TMP199.w < 1.50000000E+01);
    _a0208 = _b1.wxyz - _h5.yzwx;
    _TMP205 = abs(_a0208);
    _TMP32 = bvec4(_TMP205.x < 1.50000000E+01, _TMP205.y < 1.50000000E+01, _TMP205.z < 1.50000000E+01, _TMP205.w < 1.50000000E+01);
    _a0214 = _b1.wxyz - _i4;
    _TMP211 = abs(_a0214);
    _TMP33 = bvec4(_TMP211.x < 1.50000000E+01, _TMP211.y < 1.50000000E+01, _TMP211.z < 1.50000000E+01, _TMP211.w < 1.50000000E+01);
    _a0220 = _b1.zwxy - _h5;
    _TMP217 = abs(_a0220);
    _TMP34 = bvec4(_TMP217.x < 1.50000000E+01, _TMP217.y < 1.50000000E+01, _TMP217.z < 1.50000000E+01, _TMP217.w < 1.50000000E+01);
    _a0226 = _b1.zwxy - _i5;
    _TMP223 = abs(_a0226);
    _TMP35 = bvec4(_TMP223.x < 1.50000000E+01, _TMP223.y < 1.50000000E+01, _TMP223.z < 1.50000000E+01, _TMP223.w < 1.50000000E+01);
    _a0232 = _e1 - _c1.zwxy;
    _TMP229 = abs(_a0232);
    _TMP36 = bvec4(_TMP229.x < 1.50000000E+01, _TMP229.y < 1.50000000E+01, _TMP229.z < 1.50000000E+01, _TMP229.w < 1.50000000E+01);
    _a0238 = _e1 - _c1;
    _TMP235 = abs(_a0238);
    _TMP37 = bvec4(_TMP235.x < 1.50000000E+01, _TMP235.y < 1.50000000E+01, _TMP235.z < 1.50000000E+01, _TMP235.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || !_TMP29.x && !_TMP30.x || _TMP31.x && (!_TMP32.x && !_TMP33.x || !_TMP34.x && !_TMP35.x) || _TMP36.x || _TMP37.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || !_TMP29.y && !_TMP30.y || _TMP31.y && (!_TMP32.y && !_TMP33.y || !_TMP34.y && !_TMP35.y) || _TMP36.y || _TMP37.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || !_TMP29.z && !_TMP30.z || _TMP31.z && (!_TMP32.z && !_TMP33.z || !_TMP34.z && !_TMP35.z) || _TMP36.z || _TMP37.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || !_TMP29.w && !_TMP30.w || _TMP31.w && (!_TMP32.w && !_TMP33.w || !_TMP34.w && !_TMP35.w) || _TMP36.w || _TMP37.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c1.z && _b1.y != _c1.z, _e1.y != _c1.w && _b1.z != _c1.w, _e1.z != _c1.x && _b1.w != _c1.x, _e1.w != _c1.y && _b1.x != _c1.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c1.x && _b1.x != _c1.x, _e1.y != _c1.y && _b1.y != _c1.y, _e1.z != _c1.z && _b1.z != _c1.z, _e1.w != _c1.w && _b1.w != _c1.w);
    _a0244 = _e1 - _c1;
    _TMP241 = abs(_a0244);
    _a0248 = _e1 - _c1.zwxy;
    _TMP245 = abs(_a0248);
    _a0252 = _c1.wxyz - _h5;
    _TMP249 = abs(_a0252);
    _a0256 = _c1.wxyz - _h5.yzwx;
    _TMP253 = abs(_a0256);
    _a0260 = _b1.zwxy - _b1.wxyz;
    _TMP257 = abs(_a0260);
    _TMP38 = _TMP241 + _TMP245 + _TMP249 + _TMP253 + 4.00000000E+00*_TMP257;
    _a0266 = _b1.zwxy - _b1.yzwx;
    _TMP263 = abs(_a0266);
    _a0270 = _b1.zwxy - _i5;
    _TMP267 = abs(_a0270);
    _a0274 = _b1.wxyz - _i4;
    _TMP271 = abs(_a0274);
    _a0278 = _b1.wxyz - _b1;
    _TMP275 = abs(_a0278);
    _a0282 = _e1 - _c1.wxyz;
    _TMP279 = abs(_a0282);
    _TMP39 = _TMP263 + _TMP267 + _TMP271 + _TMP275 + 4.00000000E+00*_TMP279;
    _edr = bvec4(_TMP38.x < _TMP39.x && _interp_restriction_lv1.x, _TMP38.y < _TMP39.y && _interp_restriction_lv1.y, _TMP38.z < _TMP39.z && _interp_restriction_lv1.z, _TMP38.w < _TMP39.w && _interp_restriction_lv1.w);
    _a0286 = _b1.wxyz - _c1.zwxy;
    _TMP283 = abs(_a0286);
    _a0290 = _b1.zwxy - _c1;
    _TMP287 = abs(_a0290);
    _edr_left = bvec4((2.00000000E+00*_TMP283).x <= _TMP287.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP283).y <= _TMP287.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP283).z <= _TMP287.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP283).w <= _TMP287.w && _interp_restriction_lv2_left.w);
    _a0294 = _b1.wxyz - _c1.zwxy;
    _TMP291 = abs(_a0294);
    _a0298 = _b1.zwxy - _c1;
    _TMP295 = abs(_a0298);
    _edr_up = bvec4(_TMP291.x >= (2.00000000E+00*_TMP295).x && _interp_restriction_lv2_up.x, _TMP291.y >= (2.00000000E+00*_TMP295).y && _interp_restriction_lv2_up.y, _TMP291.z >= (2.00000000E+00*_TMP295).z && _interp_restriction_lv2_up.z, _TMP291.w >= (2.00000000E+00*_TMP295).w && _interp_restriction_lv2_up.w);
    _a0302 = _e1 - _b1.wxyz;
    _TMP299 = abs(_a0302);
    _a0306 = _e1 - _b1.zwxy;
    _TMP303 = abs(_a0306);
    _px = bvec4(_TMP299.x <= _TMP303.x, _TMP299.y <= _TMP303.y, _TMP299.z <= _TMP303.z, _TMP299.w <= _TMP303.w);
    if (_px.x) { 
        _TMP46 = _F;
    } else {
        _TMP46 = _H;
    } 
    if (_px.y) { 
        _TMP47 = _B2;
    } else {
        _TMP47 = _F;
    } 
    if (_px.z) { 
        _TMP48 = _D;
    } else {
        _TMP48 = _B2;
    } 
    if (_px.w) { 
        _TMP49 = _H;
    } else {
        _TMP49 = _D;
    } 
    _res = _E;
    if (_fp.x >= 5.00000000E-01) { 
        if (_fp.y >= 5.00000000E-01) { 
            if (_edr.x && _edr_left.x && _edr_up.x) { 
                _res = _E + 8.33496094E-01*(_TMP46 - _E);
            } else {
                if (_edr.x && (_edr_left.x || _edr_up.x)) { 
                    _res = _E + 7.50000000E-01*(_TMP46 - _E);
                } else {
                    if (_edr.y && _edr_left.y && _edr.w && _edr_up.w) { 
                        _res = _E + 2.50000000E-01*(_TMP49 - _E);
                    } else {
                        if (_edr.y && _edr_left.y) { 
                            _res = _E + 2.50000000E-01*(_TMP47 - _E);
                        } else {
                            if (_edr.w && _edr_up.w) { 
                                _res = _E + 2.50000000E-01*(_TMP49 - _E);
                            } else {
                                if (_edr.x) { 
                                    _res = _E + 5.00000000E-01*(_TMP46 - _E);
                                } 
                            } 
                        } 
                    } 
                } 
            } 
        } else {
            if (_edr.y && _edr_left.y && _edr_up.y) { 
                _res = _E + 8.33496094E-01*(_TMP47 - _E);
            } else {
                if (_edr.y && (_edr_left.y || _edr_up.y)) { 
                    _res = _E + 7.50000000E-01*(_TMP47 - _E);
                } else {
                    if (_edr.z && _edr_left.z && _edr.x && _edr_up.x) { 
                        _res = _E + 2.50000000E-01*(_TMP46 - _E);
                    } else {
                        if (_edr.z && _edr_left.z) { 
                            _res = _E + 2.50000000E-01*(_TMP48 - _E);
                        } else {
                            if (_edr.x && _edr_up.x) { 
                                _res = _E + 2.50000000E-01*(_TMP46 - _E);
                            } else {
                                if (_edr.y) { 
                                    _res = _E + 5.00000000E-01*(_TMP47 - _E);
                                } 
                            } 
                        } 
                    } 
                } 
            } 
        } 
    } else {
        if (_fp.y >= 5.00000000E-01) { 
            if (_edr.w && _edr_left.w && _edr_up.w) { 
                _res = _E + 8.33496094E-01*(_TMP49 - _E);
            } else {
                if (_edr.w && (_edr_left.w || _edr_up.w)) { 
                    _res = _E + 7.50000000E-01*(_TMP49 - _E);
                } else {
                    if (_edr.x && _edr_left.x && _edr.z && _edr_up.z) { 
                        _res = _E + 2.50000000E-01*(_TMP48 - _E);
                    } else {
                        if (_edr.x && _edr_left.x) { 
                            _res = _E + 2.50000000E-01*(_TMP46 - _E);
                        } else {
                            if (_edr.z && _edr_up.z) { 
                                _res = _E + 2.50000000E-01*(_TMP48 - _E);
                            } else {
                                if (_edr.w) { 
                                    _res = _E + 5.00000000E-01*(_TMP49 - _E);
                                } 
                            } 
                        } 
                    } 
                } 
            } 
        } else {
            if (_edr.z && _edr_left.z && _edr_up.z) { 
                _res = _E + 8.33496094E-01*(_TMP48 - _E);
            } else {
                if (_edr.z && (_edr_left.z || _edr_up.z)) { 
                    _res = _E + 7.50000000E-01*(_TMP48 - _E);
                } else {
                    if (_edr.w && _edr_left.w && _edr.y && _edr_up.y) { 
                        _res = _E + 2.50000000E-01*(_TMP47 - _E);
                    } else {
                        if (_edr.w && _edr_left.w) { 
                            _res = _E + 2.50000000E-01*(_TMP49 - _E);
                        } else {
                            if (_edr.y && _edr_up.y) { 
                                _res = _E + 2.50000000E-01*(_TMP47 - _E);
                            } else {
                                if (_edr.z) { 
                                    _res = _E + 5.00000000E-01*(_TMP48 - _E);
                                } 
                            } 
                        } 
                    } 
                } 
            } 
        } 
    } 
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
#endif
