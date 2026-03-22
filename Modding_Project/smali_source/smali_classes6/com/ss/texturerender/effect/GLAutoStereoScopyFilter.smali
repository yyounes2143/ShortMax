.class public Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLAutoStereoScopyFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLAutoStereoScopyFilter"


# instance fields
.field private final fragmentShader:Ljava/lang/String;

.field private mAlphaTextureVerticesData:[F

.field private mOffsetsHandle:I

.field private mSTMatrix:[F

.field private mSTMatrixHandle:I

.field private mVideoNums:I

.field private final oesFragmentShader:Ljava/lang/String;

.field private final oesVertexShader:Ljava/lang/String;

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->vertexShader:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "#version 300 es\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->oesVertexShader:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "#version 300 es\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform sampler2D sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x, 0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->fragmentShader:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x,0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->oesFragmentShader:Ljava/lang/String;

    .line 21
    .line 22
    const/16 p1, 0x10

    .line 23
    .line 24
    new-array p1, p1, [F

    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mSTMatrix:[F

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    iput p1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mVideoNums:I

    .line 30
    .line 31
    const/16 p1, 0x64

    .line 32
    .line 33
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 37
    .line 38
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 39
    .line 40
    const-string v0, "TR_GLAutoStereoScopyFilter"

    .line 41
    .line 42
    const-string v1, "new GLAutoStereoScopyFilter"

    .line 43
    .line 44
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2af8

    .line 2
    .line 3
    const v1, 0x8d65

    .line 4
    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x2af9

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 18
    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    const-string p1, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x,0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "#version 300 es\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform sampler2D sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x, 0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}"

    .line 25
    .line 26
    :goto_0
    return-object p1

    .line 27
    :cond_2
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 28
    .line 29
    if-ne p1, v1, :cond_3

    .line 30
    .line 31
    const-string p1, "#version 300 es\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const-string p1, "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}"

    .line 35
    .line 36
    :goto_1
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-string/jumbo v3, "texture_type"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget v4, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v6, "TR_GLAutoStereoScopyFilter"

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    iget v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 20
    .line 21
    if-lez v4, :cond_0

    .line 22
    .line 23
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 24
    .line 25
    const-string v0, "inited"

    .line 26
    .line 27
    invoke-static {p1, v6, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v5

    .line 31
    :cond_0
    iget v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 32
    .line 33
    if-lez v4, :cond_1

    .line 34
    .line 35
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 36
    .line 37
    .line 38
    iput v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 39
    .line 40
    :cond_1
    iput v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 41
    .line 42
    const-string/jumbo v3, "v_nums"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mVideoNums:I

    .line 50
    .line 51
    int-to-float v4, v3

    .line 52
    div-float v4, v1, v4

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    div-float v3, v1, v3

    .line 56
    .line 57
    const/16 v7, 0x8

    .line 58
    .line 59
    new-array v7, v7, [F

    .line 60
    .line 61
    aput v2, v7, v5

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    aput v2, v7, v5

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    aput v4, v7, v5

    .line 68
    .line 69
    aput v2, v7, v0

    .line 70
    .line 71
    const/4 v0, 0x4

    .line 72
    aput v2, v7, v0

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    aput v1, v7, v0

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    aput v3, v7, v0

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    aput v1, v7, v0

    .line 82
    .line 83
    iput-object v7, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mAlphaTextureVerticesData:[F

    .line 84
    .line 85
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 90
    .line 91
    const v1, 0x8d65

    .line 92
    .line 93
    .line 94
    if-ne v0, v1, :cond_2

    .line 95
    .line 96
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 97
    .line 98
    const-string/jumbo v1, "uSTMatrix"

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mSTMatrixHandle:I

    .line 106
    .line 107
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 108
    .line 109
    const-string v1, "offsets"

    .line 110
    .line 111
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput v0, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mOffsetsHandle:I

    .line 116
    .line 117
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v2, "init texTarget:"

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v6, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return p1
.end method

.method protected initParam()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mAlphaTextureVerticesData:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    .line 5
    .line 6
    mul-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mAlphaTextureVerticesData:[F

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVerticesData:[F

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    .line 39
    .line 40
    mul-int/2addr v0, v2

    .line 41
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 58
    .line 59
    sget-object v2, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVerticesData:[F

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 0

    .line 1
    return-object p1
.end method

.method public processWithMRT(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)[Lcom/ss/texturerender/effect/EffectTexture;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 8
    .line 9
    const/16 v4, 0x7e

    .line 10
    .line 11
    invoke-virtual {v0, v4, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 18
    .line 19
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 20
    .line 21
    invoke-virtual {v0, v4, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "error, texture miss match, accept:"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ",in:"

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 v1, 0xc

    .line 111
    .line 112
    invoke-virtual {p2, v1, v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    return-object v4

    .line 116
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 117
    .line 118
    const-string v3, "TR_GLAutoStereoScopyFilter"

    .line 119
    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v0, "program error,don\'t process,filter:"

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p1, v3, p2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 147
    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const/16 v1, 0xd

    .line 170
    .line 171
    invoke-virtual {p1, v1, p2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    return-object v4

    .line 175
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 176
    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v6, "filter process start,type:"

    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 188
    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-static {v0, v5}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_6

    .line 201
    .line 202
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 203
    .line 204
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 205
    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 209
    .line 210
    const-string v1, ""

    .line 211
    .line 212
    invoke-virtual {p1, v0, p2, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    return-object v4

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 217
    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 221
    .line 222
    invoke-virtual {v0, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 223
    .line 224
    .line 225
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    .line 226
    .line 227
    .line 228
    if-eqz p2, :cond_c

    .line 229
    .line 230
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 231
    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 235
    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    :cond_8
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 239
    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v6, "error width or height, w:"

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 251
    .line 252
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v7, " h:"

    .line 256
    .line 257
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget v8, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 261
    .line 262
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v0, v3, v5}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 273
    .line 274
    if-eqz v0, :cond_9

    .line 275
    .line 276
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 277
    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 287
    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 295
    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    const/16 v6, 0xe

    .line 304
    .line 305
    invoke-virtual {v0, v6, v3, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_9
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->genTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->genTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-eqz v0, :cond_b

    .line 317
    .line 318
    if-nez v3, :cond_a

    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_a
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    invoke-virtual {v3}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    filled-new-array {v5, v6}, [I

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    sget-object v6, Lcom/ss/texturerender/effect/FrameBuffer;->GL_COLOR_ATTACHMENTS:[I

    .line 334
    .line 335
    invoke-virtual {p2, v5, v6}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2Ds([I[I)I

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_b
    :goto_0
    return-object v4

    .line 340
    :cond_c
    move-object v0, v4

    .line 341
    move-object v3, v0

    .line 342
    :goto_1
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 343
    .line 344
    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 345
    .line 346
    .line 347
    iget-boolean v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    .line 348
    .line 349
    if-eqz v5, :cond_d

    .line 350
    .line 351
    const/4 v5, 0x0

    .line 352
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 353
    .line 354
    .line 355
    const/16 v5, 0x4000

    .line 356
    .line 357
    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 358
    .line 359
    .line 360
    :cond_d
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 361
    .line 362
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 363
    .line 364
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 365
    .line 366
    iget v8, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 367
    .line 368
    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 369
    .line 370
    .line 371
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 372
    .line 373
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_POS_OFFSET:I

    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 376
    .line 377
    .line 378
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 379
    .line 380
    iget v11, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    .line 381
    .line 382
    iget-object v12, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 383
    .line 384
    const/4 v8, 0x3

    .line 385
    const/16 v9, 0x1406

    .line 386
    .line 387
    const/4 v10, 0x0

    .line 388
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 389
    .line 390
    .line 391
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 392
    .line 393
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 394
    .line 395
    .line 396
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 397
    .line 398
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    .line 399
    .line 400
    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 401
    .line 402
    .line 403
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 404
    .line 405
    iget v11, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    .line 406
    .line 407
    iget-object v12, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 408
    .line 409
    const/4 v8, 0x2

    .line 410
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 411
    .line 412
    .line 413
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 414
    .line 415
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 416
    .line 417
    .line 418
    const v5, 0x84c0

    .line 419
    .line 420
    .line 421
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 422
    .line 423
    .line 424
    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 425
    .line 426
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 431
    .line 432
    .line 433
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 434
    .line 435
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 436
    .line 437
    .line 438
    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 439
    .line 440
    const v6, 0x8d65

    .line 441
    .line 442
    .line 443
    const/4 v7, 0x1

    .line 444
    if-ne v5, v6, :cond_e

    .line 445
    .line 446
    iget-object v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 447
    .line 448
    iget-object v6, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mSTMatrix:[F

    .line 449
    .line 450
    invoke-virtual {v5, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 451
    .line 452
    .line 453
    iget v5, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mSTMatrixHandle:I

    .line 454
    .line 455
    iget-object v6, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mSTMatrix:[F

    .line 456
    .line 457
    invoke-static {v5, v7, v2, v6, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 458
    .line 459
    .line 460
    :cond_e
    iget v5, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mOffsetsHandle:I

    .line 461
    .line 462
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 463
    .line 464
    iget v8, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mVideoNums:I

    .line 465
    .line 466
    const/4 v9, 0x2

    .line 467
    if-ne v8, v9, :cond_f

    .line 468
    .line 469
    move v8, v2

    .line 470
    goto :goto_2

    .line 471
    :cond_f
    mul-int/lit8 v8, v6, 0x2

    .line 472
    .line 473
    :goto_2
    invoke-static {v5, v6, v8}, Landroid/opengl/GLES20;->glUniform2i(III)V

    .line 474
    .line 475
    .line 476
    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 477
    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    const-string v8, "filter glDrawArrays before,type:"

    .line 484
    .line 485
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget v9, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 489
    .line 490
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    invoke-static {v5, v6}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    if-nez v5, :cond_10

    .line 502
    .line 503
    const/4 v5, 0x5

    .line 504
    const/4 v6, 0x4

    .line 505
    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 506
    .line 507
    .line 508
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 509
    .line 510
    goto :goto_3

    .line 511
    :cond_10
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 512
    .line 513
    iget-object v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 514
    .line 515
    if-eqz v6, :cond_11

    .line 516
    .line 517
    iget v9, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 518
    .line 519
    new-instance v10, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    iget v8, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 528
    .line 529
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    invoke-virtual {v6, v5, v9, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_11
    :goto_3
    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 540
    .line 541
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 542
    .line 543
    .line 544
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 545
    .line 546
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 547
    .line 548
    .line 549
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 550
    .line 551
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 552
    .line 553
    .line 554
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIsCallGLfinish:I

    .line 555
    .line 556
    if-ne v2, v7, :cond_12

    .line 557
    .line 558
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 559
    .line 560
    .line 561
    :cond_12
    if-eqz p2, :cond_13

    .line 562
    .line 563
    sget-object v2, Lcom/ss/texturerender/effect/FrameBuffer;->GL_COLOR_ATTACHMENTS:[I

    .line 564
    .line 565
    invoke-virtual {p2, v2}, Lcom/ss/texturerender/effect/FrameBuffer;->unbindTexture2Ds([I)V

    .line 566
    .line 567
    .line 568
    :cond_13
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 569
    .line 570
    if-eqz p2, :cond_14

    .line 571
    .line 572
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 573
    .line 574
    invoke-virtual {p2, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 575
    .line 576
    .line 577
    :cond_14
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 578
    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    const-string v5, "filter glDrawArrays after,type:"

    .line 585
    .line 586
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 590
    .line 591
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-static {p2, v2}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 599
    .line 600
    .line 601
    move-result p2

    .line 602
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 603
    .line 604
    if-nez v2, :cond_16

    .line 605
    .line 606
    if-nez p2, :cond_16

    .line 607
    .line 608
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 609
    .line 610
    if-eqz p2, :cond_15

    .line 611
    .line 612
    const/16 v1, 0x13

    .line 613
    .line 614
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 615
    .line 616
    invoke-virtual {p2, v1, v2, v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 617
    .line 618
    .line 619
    :cond_15
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 620
    .line 621
    .line 622
    filled-new-array {v3, v0}, [Lcom/ss/texturerender/effect/EffectTexture;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    return-object p1

    .line 627
    :cond_16
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 628
    .line 629
    if-eqz p1, :cond_17

    .line 630
    .line 631
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 632
    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 642
    .line 643
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    invoke-virtual {p1, p2, v2, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 651
    .line 652
    .line 653
    :cond_17
    if-eqz v3, :cond_18

    .line 654
    .line 655
    invoke-virtual {v3}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 656
    .line 657
    .line 658
    :cond_18
    if-eqz v0, :cond_19

    .line 659
    .line 660
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 661
    .line 662
    .line 663
    :cond_19
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 664
    .line 665
    return-object v4
.end method

.method public updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/GLAutoStereoScopyFilter;->mVideoNums:I

    .line 6
    .line 7
    div-int/2addr p2, v0

    .line 8
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 15
    .line 16
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 17
    .line 18
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 19
    .line 20
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 24
    .line 25
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 26
    .line 27
    return p1
.end method
