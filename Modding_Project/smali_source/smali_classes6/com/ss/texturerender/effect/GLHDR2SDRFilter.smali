.class public Lcom/ss/texturerender/effect/GLHDR2SDRFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLHDR2SDRFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLHDR2SDRFilter"


# instance fields
.field private final HdrFragmentShader:Ljava/lang/String;

.field private mCMSmatrixHandle:I

.field private mHDRType:I

.field private mHDRTypeHandle:I

.field protected final mREC2020toREC709Matrix:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 3
    .line 4
    .line 5
    const-string p1, "precision highp float;\nuniform mat3 uCMSmatrix;\nuniform int hdrType;\nvec3 eotf_pq(vec3 color) {\n    color = max(color, 0.0);\n    color = pow(color, vec3(1.0/78.843750));\n    color = max(color - vec3(0.835938), 0.0) / (vec3(18.851562) - vec3(18.687500) * color);\n    color = pow(color, vec3(1.0/0.159302));\n    return color;\n}\nvec3 eotf_hlg(vec3 color) {\n    float HLG_A = 0.17883277;\n    float HLG_B = 0.28466892;\n    float HLG_C = 0.55991073;\n    vec3 mask = step(vec3(0.5), color);\n    color = mask * exp((color - vec3(HLG_C)) * vec3(1.0/HLG_A) + HLG_B) + (1.0 - mask) * vec3(4.0) * color * color;\n    color *= vec3(1.0/12.0);\n    color = clamp(color, 0.0, 1.0);\n    float lum = 0.2627 * color.r + 0.677998 * color.g + 0.059302 * color.b;\n    color = vec3(pow(lum, 0.2)) * color;\n    return color;\n}float _hable_3_0(float x) {\n    return ((x * (0.150000*x + 0.050000)+0.004000)/(x * (0.150000*x + 0.500000) + 0.060000)) - 0.066667;\n}\nvec3 toneMap(vec3 color, float peakLum) {\n    color = color * vec3(peakLum);\n    float sig = max(max(color.r, color.g), color.b);\n    float sig_peak = peakLum;\n    float luma = 0.2126368 * color.r + 0.715183 * color.g + 0.07218021 * color.b;\n    float coeff = max(sig - 0.18, 1e-6) / max(sig, 1e-6);\n    coeff = pow(coeff, 20.0);\n    sig = mix(sig, luma, coeff);\n    float sig_orig = max(sig, 1e-6);\n    sig = _hable_3_0(sig) / _hable_3_0(sig_peak);\n    sig = min(sig, 1.0);\n    color *= sig / sig_orig;\n    return color;\n}\nvec4 colorMapping(vec4 color) {\n    float peakLum = 0.0;    if (hdrType == 1) {\n        color.rgb = eotf_pq(color.rgb);\n        peakLum = 110.0;\n    } else {\n        color.rgb = eotf_hlg(color.rgb);\n        peakLum = 12.0;\n    } \n    color.rgb = uCMSmatrix * color.rgb;\n    color.rgb = toneMap(color.rgb, peakLum);\n    color.rgb = pow(color.rgb, vec3(1.0/2.2));\n    color.rgb = clamp(color.rgb, 0.0, 1.0);\n    return color;\n}\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main(void) {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = colorMapping(gl_FragColor);\n}\n"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->HdrFragmentShader:Ljava/lang/String;

    .line 8
    .line 9
    const/16 p1, 0x9

    .line 10
    .line 11
    new-array p1, p1, [F

    .line 12
    .line 13
    fill-array-data p1, :array_0

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mREC2020toREC709Matrix:[F

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mHDRType:I

    .line 20
    .line 21
    const/16 p1, 0x14

    .line 22
    .line 23
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 4
        0x3fd48b2a
        -0x4200ed73
        -0x436b48f9
        -0x40e98f55
        0x3f9102b4
        -0x4231fa0b
        -0x426ad2e3
        -0x43f73a04
        0x3f8f333c
    .end array-data
.end method


# virtual methods
.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x2af9

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "precision highp float;\nuniform mat3 uCMSmatrix;\nuniform int hdrType;\nvec3 eotf_pq(vec3 color) {\n    color = max(color, 0.0);\n    color = pow(color, vec3(1.0/78.843750));\n    color = max(color - vec3(0.835938), 0.0) / (vec3(18.851562) - vec3(18.687500) * color);\n    color = pow(color, vec3(1.0/0.159302));\n    return color;\n}\nvec3 eotf_hlg(vec3 color) {\n    float HLG_A = 0.17883277;\n    float HLG_B = 0.28466892;\n    float HLG_C = 0.55991073;\n    vec3 mask = step(vec3(0.5), color);\n    color = mask * exp((color - vec3(HLG_C)) * vec3(1.0/HLG_A) + HLG_B) + (1.0 - mask) * vec3(4.0) * color * color;\n    color *= vec3(1.0/12.0);\n    color = clamp(color, 0.0, 1.0);\n    float lum = 0.2627 * color.r + 0.677998 * color.g + 0.059302 * color.b;\n    color = vec3(pow(lum, 0.2)) * color;\n    return color;\n}float _hable_3_0(float x) {\n    return ((x * (0.150000*x + 0.050000)+0.004000)/(x * (0.150000*x + 0.500000) + 0.060000)) - 0.066667;\n}\nvec3 toneMap(vec3 color, float peakLum) {\n    color = color * vec3(peakLum);\n    float sig = max(max(color.r, color.g), color.b);\n    float sig_peak = peakLum;\n    float luma = 0.2126368 * color.r + 0.715183 * color.g + 0.07218021 * color.b;\n    float coeff = max(sig - 0.18, 1e-6) / max(sig, 1e-6);\n    coeff = pow(coeff, 20.0);\n    sig = mix(sig, luma, coeff);\n    float sig_orig = max(sig, 1e-6);\n    sig = _hable_3_0(sig) / _hable_3_0(sig_peak);\n    sig = min(sig, 1.0);\n    color *= sig / sig_orig;\n    return color;\n}\nvec4 colorMapping(vec4 color) {\n    float peakLum = 0.0;    if (hdrType == 1) {\n        color.rgb = eotf_pq(color.rgb);\n        peakLum = 110.0;\n    } else {\n        color.rgb = eotf_hlg(color.rgb);\n        peakLum = 12.0;\n    } \n    color.rgb = uCMSmatrix * color.rgb;\n    color.rgb = toneMap(color.rgb, peakLum);\n    color.rgb = pow(color.rgb, vec3(1.0/2.2));\n    color.rgb = clamp(color.rgb, 0.0, 1.0);\n    return color;\n}\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main(void) {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = colorMapping(gl_FragColor);\n}\n"

    .line 11
    .line 12
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 12
    .line 13
    const-string/jumbo v1, "super.init(bundle) != TR_OK"

    .line 14
    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 24
    .line 25
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 29
    .line 30
    const-string/jumbo v1, "uCMSmatrix"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mCMSmatrixHandle:I

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mREC2020toREC709Matrix:[F

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 47
    .line 48
    const-string v1, "hdrType"

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mHDRTypeHandle:I

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const-string v0, "hdr_type"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mHDRType:I

    .line 65
    .line 66
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "init bundle:"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v1, "TR_GLHDR2SDRFilter"

    .line 90
    .line 91
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v3
.end method

.method public onDrawFrameBefore()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mHDRTypeHandle:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mHDRType:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public setOption(II)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput p2, p0, Lcom/ss/texturerender/effect/GLHDR2SDRFilter;->mHDRType:I

    .line 10
    .line 11
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "mHDRType:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "TR_GLHDR2SDRFilter"

    .line 31
    .line 32
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
