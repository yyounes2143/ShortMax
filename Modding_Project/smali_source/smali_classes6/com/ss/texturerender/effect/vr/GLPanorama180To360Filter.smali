.class public Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;
.super Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;
.source "GLPanorama180To360Filter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GLPanorama180To360Filter"


# instance fields
.field private final fragment180to360Shader:Ljava/lang/String;

.field private mBackgroundTexHandle:I

.field private mBackgroundTexScaleHandle:I

.field private mContentTypeOffsetHandle:I

.field private mEacExpandCoefHandle:I

.field private mGlBackgroundTexture:I

.field private mInputBackTexSizeHandle:I

.field private mInputTexOffsetHandle:I

.field private mInputTexScaleHandle:I

.field private mInputTexSizeHandle:I

.field private mShaderTypeHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, "precision highp float;\n\n#define PI 3.14159265359\nuniform sampler2D sTexture;\nuniform sampler2D sBackground;\nuniform float sTextureSize;\nuniform float sBackTextureSize;\nuniform float scaleU;\nuniform float scaleV;\nuniform float offsetU;\nuniform float offsetT;\nuniform float expandCoef;\nuniform int shaderType;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\n\nvec4 vrTextureFragmentForVirtualLive() {\n    vec4 outputColor = texture2D(sBackground, vec2(vTextureCoord.x, 1.0 - vTextureCoord.y));\n    if (verPosition.z < 0.0 && abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n        vec2 st = vec2(verPosition.x / (verPosition.z * 2.0) + 0.5, verPosition.y / (verPosition.z * 2.0) + 0.5);\n        st = vec2(1.0, 1.0) - st;\n        outputColor = texture2D(sTexture, st);\n    }\n    return outputColor;\n}\n\nvec4 vrTextureFragmentFor180eac() {\n    vec4 colMain;\n    if (verPosition.z < 0.0) {\n       vec2 st;\n       float padding = 1.0/expandCoef;\n       if (abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n           st = vec2((2.0*(0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.z)) + 0.5) + 3.0)/6.0, 0.5*(4.0/PI*atan(padding * verPosition.y / verPosition.z)) + 0.5);\n           st = vec2(1.0, 1.0) - st;\n       } else if ( verPosition.x < 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.x > 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0 + 4.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.y < 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       } else if (verPosition.y > 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       }\n       colMain = texture2D(sTexture, st);\n    }\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvec4 vrTextureFragmentForGeneralUse() {\n    vec2 uvMain = vTextureCoord;\n    if (offsetT == 0.0  && offsetU ==  0.25) {\n       uvMain.x = (uvMain.x - offsetU) * 2.0;\n    } else {\n       uvMain.x = (uvMain.x - offsetU) * scaleU;\n    }\n    vec4 colMain = texture2D(sTexture, uvMain);\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvoid main()\n{\n    if (shaderType == 1) {\n        gl_FragColor = vrTextureFragmentForVirtualLive();\n    } else if (shaderType == 2) {\n        gl_FragColor = vrTextureFragmentFor180eac();\n    } else {\n        gl_FragColor = vrTextureFragmentForGeneralUse();\n    }\n}\n"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->fragment180to360Shader:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mGlBackgroundTexture:I

    .line 12
    .line 13
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "new GLPanoramaFilter,this:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "GLPanorama180To360Filter"

    .line 33
    .line 34
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method genBackgroundTexture()V
    .locals 11

    .line 1
    const/16 v0, 0xde1

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->genTexture(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mGlBackgroundTexture:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    .line 11
    .line 12
    const/16 v9, 0x1401

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    const/16 v2, 0xde1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/16 v4, 0x1908

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    const/16 v8, 0x1908

    .line 24
    .line 25
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x2af9

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "precision highp float;\n\n#define PI 3.14159265359\nuniform sampler2D sTexture;\nuniform sampler2D sBackground;\nuniform float sTextureSize;\nuniform float sBackTextureSize;\nuniform float scaleU;\nuniform float scaleV;\nuniform float offsetU;\nuniform float offsetT;\nuniform float expandCoef;\nuniform int shaderType;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\n\nvec4 vrTextureFragmentForVirtualLive() {\n    vec4 outputColor = texture2D(sBackground, vec2(vTextureCoord.x, 1.0 - vTextureCoord.y));\n    if (verPosition.z < 0.0 && abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n        vec2 st = vec2(verPosition.x / (verPosition.z * 2.0) + 0.5, verPosition.y / (verPosition.z * 2.0) + 0.5);\n        st = vec2(1.0, 1.0) - st;\n        outputColor = texture2D(sTexture, st);\n    }\n    return outputColor;\n}\n\nvec4 vrTextureFragmentFor180eac() {\n    vec4 colMain;\n    if (verPosition.z < 0.0) {\n       vec2 st;\n       float padding = 1.0/expandCoef;\n       if (abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n           st = vec2((2.0*(0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.z)) + 0.5) + 3.0)/6.0, 0.5*(4.0/PI*atan(padding * verPosition.y / verPosition.z)) + 0.5);\n           st = vec2(1.0, 1.0) - st;\n       } else if ( verPosition.x < 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.x > 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0 + 4.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.y < 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       } else if (verPosition.y > 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       }\n       colMain = texture2D(sTexture, st);\n    }\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvec4 vrTextureFragmentForGeneralUse() {\n    vec2 uvMain = vTextureCoord;\n    if (offsetT == 0.0  && offsetU ==  0.25) {\n       uvMain.x = (uvMain.x - offsetU) * 2.0;\n    } else {\n       uvMain.x = (uvMain.x - offsetU) * scaleU;\n    }\n    vec4 colMain = texture2D(sTexture, uvMain);\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvoid main()\n{\n    if (shaderType == 1) {\n        gl_FragColor = vrTextureFragmentForVirtualLive();\n    } else if (shaderType == 2) {\n        gl_FragColor = vrTextureFragmentFor180eac();\n    } else {\n        gl_FragColor = vrTextureFragmentForGeneralUse();\n    }\n}\n"

    .line 11
    .line 12
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

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
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 24
    .line 25
    const-string v0, "sBackground"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexHandle:I

    .line 32
    .line 33
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 34
    .line 35
    const-string v0, "sTextureSize"

    .line 36
    .line 37
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexSizeHandle:I

    .line 42
    .line 43
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 44
    .line 45
    const-string v0, "sBackTextureSize"

    .line 46
    .line 47
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputBackTexSizeHandle:I

    .line 52
    .line 53
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 54
    .line 55
    const-string v0, "scaleU"

    .line 56
    .line 57
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexScaleHandle:I

    .line 62
    .line 63
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 64
    .line 65
    const-string v0, "scaleV"

    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexScaleHandle:I

    .line 72
    .line 73
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 74
    .line 75
    const-string v0, "offsetU"

    .line 76
    .line 77
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexOffsetHandle:I

    .line 82
    .line 83
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 84
    .line 85
    const-string v0, "offsetT"

    .line 86
    .line 87
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mContentTypeOffsetHandle:I

    .line 92
    .line 93
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 94
    .line 95
    const-string v0, "expandCoef"

    .line 96
    .line 97
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mEacExpandCoefHandle:I

    .line 102
    .line 103
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 104
    .line 105
    const-string/jumbo v0, "shaderType"

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mShaderTypeHandle:I

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    return p1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iput-boolean v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    .line 11
    .line 12
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->handleDirectModeChange()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->handleTouchScalerChange()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 30
    .line 31
    if-eq v2, v4, :cond_3

    .line 32
    .line 33
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "error, texture miss match, accept:"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ",in:"

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/16 v4, 0xc

    .line 111
    .line 112
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-object p1

    .line 116
    :cond_3
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v3, "program error,don\'t process,filter:"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v4, "GLPanorama180To360Filter"

    .line 142
    .line 143
    invoke-static {v1, v4, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 151
    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const/16 v4, 0xd

    .line 170
    .line 171
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    return-object p1

    .line 175
    :cond_5
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 176
    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 182
    .line 183
    .line 184
    :cond_6
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 185
    .line 186
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iput v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 196
    .line 197
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    iput v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 204
    .line 205
    iget v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 206
    .line 207
    if-ne v2, v3, :cond_7

    .line 208
    .line 209
    invoke-virtual/range {p0 .. p2}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    .line 210
    .line 211
    .line 212
    :cond_7
    iget v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    .line 213
    .line 214
    const v4, 0x8892

    .line 215
    .line 216
    .line 217
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 218
    .line 219
    .line 220
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 221
    .line 222
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    .line 223
    .line 224
    const/4 v10, 0x0

    .line 225
    const/4 v6, 0x3

    .line 226
    const/16 v7, 0x1406

    .line 227
    .line 228
    const/4 v8, 0x0

    .line 229
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 230
    .line 231
    .line 232
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 233
    .line 234
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 235
    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 239
    .line 240
    .line 241
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 242
    .line 243
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 244
    .line 245
    .line 246
    iget v6, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 247
    .line 248
    iget v10, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    .line 249
    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v7, 0x2

    .line 252
    const/16 v8, 0x1406

    .line 253
    .line 254
    const/4 v9, 0x0

    .line 255
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 256
    .line 257
    .line 258
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 259
    .line 260
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 264
    .line 265
    .line 266
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirectorEnabled:Z

    .line 267
    .line 268
    const/4 v5, 0x2

    .line 269
    if-nez v4, :cond_9

    .line 270
    .line 271
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    .line 272
    .line 273
    if-eqz v4, :cond_9

    .line 274
    .line 275
    iput-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 276
    .line 277
    iget-boolean v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 278
    .line 279
    if-nez v6, :cond_c

    .line 280
    .line 281
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 282
    .line 283
    if-eqz v6, :cond_8

    .line 284
    .line 285
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 286
    .line 287
    if-eq v7, v5, :cond_8

    .line 288
    .line 289
    invoke-interface {v6, v4, v2}, Lcom/ss/texturerender/effect/vr/director/IDirector;->getView([FI)V

    .line 290
    .line 291
    .line 292
    :cond_8
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 293
    .line 294
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 295
    .line 296
    invoke-static {v4, v2, v6, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 297
    .line 298
    .line 299
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 300
    .line 301
    iget-object v11, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    const/4 v8, 0x0

    .line 305
    const/4 v10, 0x0

    .line 306
    move-object v7, v9

    .line 307
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 308
    .line 309
    .line 310
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 311
    .line 312
    iput-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    .line 313
    .line 314
    iput-boolean v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 315
    .line 316
    goto :goto_0

    .line 317
    :cond_9
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 318
    .line 319
    if-eqz v4, :cond_a

    .line 320
    .line 321
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 322
    .line 323
    if-eq v6, v5, :cond_a

    .line 324
    .line 325
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 326
    .line 327
    invoke-interface {v4, v6, v2}, Lcom/ss/texturerender/effect/vr/director/IDirector;->getView([FI)V

    .line 328
    .line 329
    .line 330
    :cond_a
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 331
    .line 332
    if-nez v4, :cond_b

    .line 333
    .line 334
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 335
    .line 336
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 337
    .line 338
    invoke-static {v4, v2, v6, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 339
    .line 340
    .line 341
    iput-boolean v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 342
    .line 343
    :cond_b
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 344
    .line 345
    if-eq v4, v5, :cond_c

    .line 346
    .line 347
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mUseInitialHeadPoseAsFront:Z

    .line 348
    .line 349
    if-eqz v4, :cond_c

    .line 350
    .line 351
    iget-object v8, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 352
    .line 353
    iget-object v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 354
    .line 355
    const/4 v11, 0x0

    .line 356
    const/4 v7, 0x0

    .line 357
    const/4 v9, 0x0

    .line 358
    move-object v6, v8

    .line 359
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 360
    .line 361
    .line 362
    :cond_c
    :goto_0
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 363
    .line 364
    invoke-static {v4, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 365
    .line 366
    .line 367
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_d

    .line 372
    .line 373
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 374
    .line 375
    if-nez v4, :cond_d

    .line 376
    .line 377
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 378
    .line 379
    if-eqz v4, :cond_e

    .line 380
    .line 381
    :cond_d
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 382
    .line 383
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 384
    .line 385
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->getDiffX()F

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 390
    .line 391
    int-to-float v7, v7

    .line 392
    add-float v8, v4, v7

    .line 393
    .line 394
    const/4 v10, 0x0

    .line 395
    const/4 v11, 0x0

    .line 396
    const/4 v7, 0x0

    .line 397
    const/high16 v9, 0x3f800000    # 1.0f

    .line 398
    .line 399
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 400
    .line 401
    .line 402
    iget-object v12, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 403
    .line 404
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 405
    .line 406
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->getDiffY()F

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 411
    .line 412
    int-to-float v6, v6

    .line 413
    sub-float v14, v4, v6

    .line 414
    .line 415
    const/high16 v16, 0x3f800000    # 1.0f

    .line 416
    .line 417
    const/16 v17, 0x0

    .line 418
    .line 419
    const/4 v13, 0x0

    .line 420
    const/4 v15, 0x0

    .line 421
    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 422
    .line 423
    .line 424
    :cond_e
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 425
    .line 426
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSpaceOrientationPitch:I

    .line 427
    .line 428
    int-to-float v8, v4

    .line 429
    const/4 v10, 0x0

    .line 430
    const/4 v11, 0x0

    .line 431
    const/4 v7, 0x0

    .line 432
    const/high16 v9, 0x3f800000    # 1.0f

    .line 433
    .line 434
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 435
    .line 436
    .line 437
    const/16 v4, 0x10

    .line 438
    .line 439
    new-array v4, v4, [F

    .line 440
    .line 441
    iget-object v8, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 442
    .line 443
    iget-object v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 444
    .line 445
    const/4 v11, 0x0

    .line 446
    const/4 v9, 0x0

    .line 447
    move-object v6, v4

    .line 448
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 449
    .line 450
    .line 451
    invoke-static {v4, v2, v4, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 452
    .line 453
    .line 454
    new-instance v6, Lcom/ss/texturerender/math/Quaternion;

    .line 455
    .line 456
    invoke-direct {v6, v4}, Lcom/ss/texturerender/math/Quaternion;-><init>([F)V

    .line 457
    .line 458
    .line 459
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 460
    .line 461
    invoke-virtual {v4, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setHeadPose(Lcom/ss/texturerender/math/Quaternion;)I

    .line 462
    .line 463
    .line 464
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 465
    .line 466
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/vr/TouchScaler;->getScale()F

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    iget v6, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 471
    .line 472
    const-string v7, "rotateMatrix"

    .line 473
    .line 474
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    iget-object v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 479
    .line 480
    invoke-static {v6, v3, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 481
    .line 482
    .line 483
    iget-object v6, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 484
    .line 485
    invoke-virtual {v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    int-to-float v6, v6

    .line 490
    const/high16 v7, 0x3f800000    # 1.0f

    .line 491
    .line 492
    mul-float/2addr v6, v7

    .line 493
    iget-object v8, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 494
    .line 495
    invoke-virtual {v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 496
    .line 497
    .line 498
    move-result v8

    .line 499
    int-to-float v8, v8

    .line 500
    div-float v12, v6, v8

    .line 501
    .line 502
    cmpl-float v6, v12, v7

    .line 503
    .line 504
    if-lez v6, :cond_f

    .line 505
    .line 506
    move v6, v12

    .line 507
    goto :goto_1

    .line 508
    :cond_f
    move v6, v7

    .line 509
    :goto_1
    iput v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    .line 510
    .line 511
    const/4 v6, 0x0

    .line 512
    if-eqz v1, :cond_11

    .line 513
    .line 514
    invoke-virtual {v0, v12}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateOutTexSize(F)V

    .line 515
    .line 516
    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->genTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    if-eqz v8, :cond_10

    .line 522
    .line 523
    invoke-virtual {v8}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 524
    .line 525
    .line 526
    move-result v9

    .line 527
    invoke-virtual {v1, v9}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    .line 528
    .line 529
    .line 530
    :cond_10
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 531
    .line 532
    iput v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 533
    .line 534
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 535
    .line 536
    iput v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 537
    .line 538
    goto :goto_2

    .line 539
    :cond_11
    move-object v8, v6

    .line 540
    :goto_2
    iget-boolean v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    .line 541
    .line 542
    const/4 v10, 0x0

    .line 543
    if-eqz v9, :cond_12

    .line 544
    .line 545
    invoke-static {v10, v10, v10, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 546
    .line 547
    .line 548
    const/16 v9, 0x4000

    .line 549
    .line 550
    invoke-static {v9}, Landroid/opengl/GLES20;->glClear(I)V

    .line 551
    .line 552
    .line 553
    :cond_12
    const v9, 0x84c0

    .line 554
    .line 555
    .line 556
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 557
    .line 558
    .line 559
    iget v9, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 560
    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 562
    .line 563
    .line 564
    move-result v11

    .line 565
    invoke-static {v9, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 566
    .line 567
    .line 568
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 569
    .line 570
    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 571
    .line 572
    .line 573
    const v9, 0x84c1

    .line 574
    .line 575
    .line 576
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 577
    .line 578
    .line 579
    const/16 v9, 0xde1

    .line 580
    .line 581
    iget v11, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mGlBackgroundTexture:I

    .line 582
    .line 583
    invoke-static {v9, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 584
    .line 585
    .line 586
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mShaderTypeHandle:I

    .line 587
    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->getShaderType()I

    .line 589
    .line 590
    .line 591
    move-result v11

    .line 592
    invoke-static {v9, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 593
    .line 594
    .line 595
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mEacExpandCoefHandle:I

    .line 596
    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->getExpandCoef()F

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    invoke-static {v9, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 602
    .line 603
    .line 604
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexHandle:I

    .line 605
    .line 606
    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 607
    .line 608
    .line 609
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 610
    .line 611
    const/high16 v11, 0x3f000000    # 0.5f

    .line 612
    .line 613
    if-ne v9, v5, :cond_13

    .line 614
    .line 615
    iget v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 616
    .line 617
    const/16 v14, 0x168

    .line 618
    .line 619
    if-ne v13, v14, :cond_13

    .line 620
    .line 621
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexSizeHandle:I

    .line 622
    .line 623
    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 624
    .line 625
    .line 626
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexScaleHandle:I

    .line 627
    .line 628
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 629
    .line 630
    .line 631
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexOffsetHandle:I

    .line 632
    .line 633
    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 634
    .line 635
    .line 636
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mContentTypeOffsetHandle:I

    .line 637
    .line 638
    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 639
    .line 640
    .line 641
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexScaleHandle:I

    .line 642
    .line 643
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 644
    .line 645
    .line 646
    goto :goto_3

    .line 647
    :cond_13
    if-ne v9, v5, :cond_14

    .line 648
    .line 649
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 650
    .line 651
    const/16 v13, 0xb4

    .line 652
    .line 653
    if-ne v5, v13, :cond_14

    .line 654
    .line 655
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexSizeHandle:I

    .line 656
    .line 657
    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 658
    .line 659
    .line 660
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexScaleHandle:I

    .line 661
    .line 662
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 663
    .line 664
    .line 665
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexOffsetHandle:I

    .line 666
    .line 667
    const/high16 v9, 0x3e800000    # 0.25f

    .line 668
    .line 669
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 670
    .line 671
    .line 672
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mContentTypeOffsetHandle:I

    .line 673
    .line 674
    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 675
    .line 676
    .line 677
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexScaleHandle:I

    .line 678
    .line 679
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 680
    .line 681
    .line 682
    goto :goto_3

    .line 683
    :cond_14
    const/4 v5, 0x4

    .line 684
    const/high16 v13, 0x40000000    # 2.0f

    .line 685
    .line 686
    if-ne v9, v5, :cond_15

    .line 687
    .line 688
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexSizeHandle:I

    .line 689
    .line 690
    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 691
    .line 692
    .line 693
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexScaleHandle:I

    .line 694
    .line 695
    invoke-static {v5, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 696
    .line 697
    .line 698
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexOffsetHandle:I

    .line 699
    .line 700
    const/high16 v9, 0x3e000000    # 0.125f

    .line 701
    .line 702
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 703
    .line 704
    .line 705
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mContentTypeOffsetHandle:I

    .line 706
    .line 707
    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 708
    .line 709
    .line 710
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexScaleHandle:I

    .line 711
    .line 712
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 713
    .line 714
    .line 715
    goto :goto_3

    .line 716
    :cond_15
    const/4 v5, 0x3

    .line 717
    if-ne v9, v5, :cond_16

    .line 718
    .line 719
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexSizeHandle:I

    .line 720
    .line 721
    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 722
    .line 723
    .line 724
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexScaleHandle:I

    .line 725
    .line 726
    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 727
    .line 728
    .line 729
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputTexOffsetHandle:I

    .line 730
    .line 731
    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 732
    .line 733
    .line 734
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mContentTypeOffsetHandle:I

    .line 735
    .line 736
    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 737
    .line 738
    .line 739
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mBackgroundTexScaleHandle:I

    .line 740
    .line 741
    invoke-static {v5, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 742
    .line 743
    .line 744
    :cond_16
    :goto_3
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mInputBackTexSizeHandle:I

    .line 745
    .line 746
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mBackTextureSize:I

    .line 747
    .line 748
    int-to-double v9, v9

    .line 749
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 750
    .line 751
    mul-double/2addr v9, v13

    .line 752
    const-wide v13, 0x4076800000000000L    # 360.0

    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    div-double/2addr v9, v13

    .line 758
    double-to-float v9, v9

    .line 759
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 760
    .line 761
    .line 762
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 763
    .line 764
    const-string/jumbo v9, "texScale"

    .line 765
    .line 766
    .line 767
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    sget-object v9, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TEXSCALE_2D:[F

    .line 772
    .line 773
    invoke-static {v5, v3, v2, v9, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 774
    .line 775
    .line 776
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 777
    .line 778
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 779
    .line 780
    iget v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    .line 781
    .line 782
    div-float v11, v5, v10

    .line 783
    .line 784
    const v13, 0x3dcccccd    # 0.1f

    .line 785
    .line 786
    .line 787
    const/high16 v14, 0x42c80000    # 100.0f

    .line 788
    .line 789
    const/4 v10, 0x0

    .line 790
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 791
    .line 792
    .line 793
    iget-object v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 794
    .line 795
    invoke-static {v5, v2, v4, v4, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 796
    .line 797
    .line 798
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 799
    .line 800
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 801
    .line 802
    iget v7, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 803
    .line 804
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 805
    .line 806
    invoke-static {v4, v5, v7, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 807
    .line 808
    .line 809
    iget-object v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 810
    .line 811
    const/high16 v19, 0x3f800000    # 1.0f

    .line 812
    .line 813
    const/16 v20, 0x0

    .line 814
    .line 815
    const/4 v11, 0x0

    .line 816
    const/4 v12, 0x0

    .line 817
    const/4 v13, 0x0

    .line 818
    const/4 v14, 0x0

    .line 819
    const/4 v15, 0x0

    .line 820
    const/16 v16, 0x0

    .line 821
    .line 822
    const/high16 v17, -0x40800000    # -1.0f

    .line 823
    .line 824
    const/16 v18, 0x0

    .line 825
    .line 826
    invoke-static/range {v10 .. v20}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 827
    .line 828
    .line 829
    iget-object v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 830
    .line 831
    invoke-virtual {v0, v4}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->draw(Ljava/nio/ShortBuffer;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 835
    .line 836
    .line 837
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 838
    .line 839
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 840
    .line 841
    .line 842
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 843
    .line 844
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 845
    .line 846
    .line 847
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 848
    .line 849
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 850
    .line 851
    .line 852
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 853
    .line 854
    const/16 v4, 0x13

    .line 855
    .line 856
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 857
    .line 858
    invoke-virtual {v2, v4, v5, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 859
    .line 860
    .line 861
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 862
    .line 863
    const-string v3, "error pano draw"

    .line 864
    .line 865
    invoke-static {v2, v3}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    if-eqz v2, :cond_17

    .line 870
    .line 871
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 872
    .line 873
    if-eqz v4, :cond_17

    .line 874
    .line 875
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 876
    .line 877
    invoke-virtual {v4, v2, v5, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 878
    .line 879
    .line 880
    :cond_17
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 881
    .line 882
    .line 883
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 884
    .line 885
    if-eqz v2, :cond_18

    .line 886
    .line 887
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 888
    .line 889
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 890
    .line 891
    .line 892
    :cond_18
    if-eqz v1, :cond_19

    .line 893
    .line 894
    invoke-virtual/range {p2 .. p2}, Lcom/ss/texturerender/effect/FrameBuffer;->unbindTexture2D()V

    .line 895
    .line 896
    .line 897
    return-object v8

    .line 898
    :cond_19
    return-object v6
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mGlBackgroundTexture:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/16 v0, 0x76

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    :try_start_0
    check-cast p2, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    instance-of v0, p2, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p2, Landroid/graphics/Bitmap;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->updateBackgroundTexture(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 38
    .line 39
    const-string v0, "GLPanorama180To360Filter"

    .line 40
    .line 41
    const-string/jumbo v1, "update background texture done"

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    monitor-exit p1

    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p2

    .line 50
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void
.end method

.method updateBackgroundTexture(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mGlBackgroundTexture:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->genBackgroundTexture()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanorama180To360Filter;->mGlBackgroundTexture:I

    .line 11
    .line 12
    const/16 v1, 0xde1

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v1, v0, p1, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
