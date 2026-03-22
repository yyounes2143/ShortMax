.class public Lcom/ss/texturerender/effect/GLGaussianBlurFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLGaussianBlurFilter.java"


# static fields
.field private static final BASE_RESOLUTION:I = 0x2a300

.field private static final DEFAULT_SIGMA:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLGaussianBlurFilter"

.field private static final MAX_SIGMA:F = 26.0f


# instance fields
.field private mBlurRadius:I

.field private mBlurRadiusLoc:I

.field private mGaussianAlpha:F

.field private mGaussianAlphaLoc:I

.field private mGaussianWeights:[F

.field private mGaussianWeightsLoc:I

.field private mIsGaussianWeightsSet:Z

.field protected mProcessStage:I

.field private mScaleRatio:F

.field protected mSigma:F

.field private mTexH:I

.field private mTexW:I

.field private mTexelHeightOffset:F

.field private mTexelOffsetLoc:I

.field private mTexelWidthOffset:F

.field private final vertexDefaultShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nuniform float gaussianAlpha;\nvoid main() {\n    vec4 sum = texture2D(sTexture, vTextureCoord) * gaussianWeights[0];\n    for (int i = 1; i <= radius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, vTextureCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, vTextureCoord - stepOffset) * gaussianWeights[i];\n    }\n    gl_FragColor = vec4(sum.rgb, gaussianAlpha);\n}\n"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->vertexDefaultShader:Ljava/lang/String;

    .line 9
    .line 10
    const/high16 p1, 0x40000000    # 2.0f

    .line 11
    .line 12
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mIsGaussianWeightsSet:Z

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeightsLoc:I

    .line 19
    .line 20
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelOffsetLoc:I

    .line 21
    .line 22
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadiusLoc:I

    .line 23
    .line 24
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlphaLoc:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelWidthOffset:F

    .line 28
    .line 29
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelHeightOffset:F

    .line 30
    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    .line 33
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlpha:F

    .line 34
    .line 35
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 36
    .line 37
    const/4 p1, 0x6

    .line 38
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 39
    .line 40
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "new GLGaussianBlurFilter,this:"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "TR_GLGaussianBlurFilter"

    .line 60
    .line 61
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private getGaussianWeight(FI)D
    .locals 8

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 3
    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 5
    .line 6
    .line 7
    move-result-wide v4

    .line 8
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double/2addr v4, v6

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    div-double/2addr v6, v4

    .line 21
    int-to-double p1, p2

    .line 22
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    neg-double p1, p1

    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    mul-double/2addr v0, v2

    .line 32
    div-double/2addr p1, v0

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    mul-double/2addr v6, p1

    .line 38
    return-wide v6
.end method

.method private updateGaussianWeights(F)V
    .locals 8

    .line 1
    const/high16 v0, 0x41d00000    # 26.0f

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 14
    .line 15
    float-to-double v0, p1

    .line 16
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    .line 23
    .line 24
    mul-double/2addr v0, v4

    .line 25
    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 26
    .line 27
    float-to-double v4, p1

    .line 28
    iget p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 29
    .line 30
    float-to-double v6, p1

    .line 31
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    mul-double/2addr v2, v6

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    mul-double/2addr v4, v2

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    mul-double/2addr v0, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    double-to-int p1, v0

    .line 60
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 61
    .line 62
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "updateGaussianWeights sigma:"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ",mBlurRadius:"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "TR_GLGaussianBlurFilter"

    .line 95
    .line 96
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    add-int/2addr p1, v0

    .line 103
    new-array p1, p1, [F

    .line 104
    .line 105
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeights:[F

    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    move v1, p1

    .line 109
    :goto_0
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 110
    .line 111
    if-gt v1, v2, :cond_0

    .line 112
    .line 113
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeights:[F

    .line 114
    .line 115
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 116
    .line 117
    invoke-direct {p0, v3, v1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->getGaussianWeight(FI)D

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    double-to-float v3, v3

    .line 122
    aput v3, v2, v1

    .line 123
    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeights:[F

    .line 128
    .line 129
    aget v1, v1, p1

    .line 130
    .line 131
    :goto_1
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 132
    .line 133
    if-gt v0, v2, :cond_1

    .line 134
    .line 135
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeights:[F

    .line 136
    .line 137
    aget v2, v2, v0

    .line 138
    .line 139
    const/high16 v3, 0x40000000    # 2.0f

    .line 140
    .line 141
    mul-float/2addr v2, v3

    .line 142
    add-float/2addr v1, v2

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    move v0, p1

    .line 147
    :goto_2
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 148
    .line 149
    if-gt v0, v2, :cond_2

    .line 150
    .line 151
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeights:[F

    .line 152
    .line 153
    aget v3, v2, v0

    .line 154
    .line 155
    div-float/2addr v3, v1

    .line 156
    aput v3, v2, v0

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mIsGaussianWeightsSet:Z

    .line 162
    .line 163
    return-void
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
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nuniform float gaussianAlpha;\nvoid main() {\n    vec4 sum = texture2D(sTexture, vTextureCoord) * gaussianWeights[0];\n    for (int i = 1; i <= radius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, vTextureCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, vTextureCoord - stepOffset) * gaussianWeights[i];\n    }\n    gl_FragColor = vec4(sum.rgb, gaussianAlpha);\n}\n"

    .line 11
    .line 12
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 3

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
    const-string v1, "gaussianWeights"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeightsLoc:I

    .line 32
    .line 33
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 34
    .line 35
    const-string/jumbo v1, "texelOffset"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelOffsetLoc:I

    .line 43
    .line 44
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 45
    .line 46
    const-string v1, "radius"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadiusLoc:I

    .line 53
    .line 54
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 55
    .line 56
    const-string v1, "gaussianAlpha"

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlphaLoc:I

    .line 63
    .line 64
    const-string/jumbo v0, "strength"

    .line 65
    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    .line 75
    cmpl-float v2, v0, v1

    .line 76
    .line 77
    if-lez v2, :cond_2

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->updateGaussianWeights(F)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->updateGaussianWeights(F)V

    .line 86
    .line 87
    .line 88
    :goto_0
    const-string v0, "alpha"

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlpha:F

    .line 95
    .line 96
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "GLGaussianBlurFilter init,this:"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "TR_GLGaussianBlurFilter"

    .line 116
    .line 117
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    return p1
.end method

.method public onDrawFrameAfter()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlpha:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpg-float v0, v0, v1

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xbe2

    .line 10
    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public onDrawFrameBefore()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mIsGaussianWeightsSet:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeightsLoc:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 12
    .line 13
    add-int/2addr v3, v2

    .line 14
    iget-object v4, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianWeights:[F

    .line 15
    .line 16
    invoke-static {v0, v3, v4, v1}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadiusLoc:I

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 24
    .line 25
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-boolean v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mIsGaussianWeightsSet:Z

    .line 29
    .line 30
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadiusLoc:I

    .line 31
    .line 32
    if-ltz v0, :cond_3

    .line 33
    .line 34
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mBlurRadius:I

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelOffsetLoc:I

    .line 40
    .line 41
    if-ltz v0, :cond_4

    .line 42
    .line 43
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelWidthOffset:F

    .line 44
    .line 45
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelHeightOffset:F

    .line 46
    .line 47
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 48
    .line 49
    .line 50
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlpha:F

    .line 51
    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpg-float v2, v0, v2

    .line 55
    .line 56
    if-gez v2, :cond_6

    .line 57
    .line 58
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mGaussianAlphaLoc:I

    .line 59
    .line 60
    if-ltz v2, :cond_5

    .line 61
    .line 62
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 63
    .line 64
    .line 65
    :cond_5
    const/16 v0, 0xbe2

    .line 66
    .line 67
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 68
    .line 69
    .line 70
    const/16 v0, 0x302

    .line 71
    .line 72
    const/16 v2, 0x303

    .line 73
    .line 74
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 75
    .line 76
    .line 77
    :cond_6
    return v1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 8

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    const/4 v5, 0x1

    .line 22
    move-object v2, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object v4, p2

    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->processWithTwoPass(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;ZZZ)Lcom/ss/texturerender/effect/EffectTexture;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object p1
.end method

.method protected processWithTwoPass(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;ZZZ)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexH:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexW:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexW:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexH:I

    .line 30
    .line 31
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexW:I

    .line 32
    .line 33
    int-to-float v1, v1

    .line 34
    mul-float/2addr v1, v2

    .line 35
    int-to-float v0, v0

    .line 36
    mul-float/2addr v1, v0

    .line 37
    const v0, 0x4828c000    # 172800.0f

    .line 38
    .line 39
    .line 40
    div-float/2addr v1, v0

    .line 41
    float-to-double v0, v1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mScaleRatio:F

    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mScaleRatio:F

    .line 54
    .line 55
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v3, "tex w:"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexW:I

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, ",h:"

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexH:I

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ",ratio:"

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mScaleRatio:F

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v3, "TR_GLGaussianBlurFilter"

    .line 98
    .line 99
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 103
    .line 104
    const/4 v1, -0x1

    .line 105
    const/4 v3, 0x0

    .line 106
    if-eq v0, v1, :cond_3

    .line 107
    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iput v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelWidthOffset:F

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    int-to-float v0, v0

    .line 118
    div-float v0, v2, v0

    .line 119
    .line 120
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mScaleRatio:F

    .line 121
    .line 122
    mul-float/2addr v0, v1

    .line 123
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelHeightOffset:F

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    int-to-float v0, v0

    .line 131
    div-float v0, v2, v0

    .line 132
    .line 133
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mScaleRatio:F

    .line 134
    .line 135
    mul-float/2addr v0, v1

    .line 136
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelWidthOffset:F

    .line 137
    .line 138
    iput v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelHeightOffset:F

    .line 139
    .line 140
    :goto_1
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-super {p0, p1, p2, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Ljava/lang/Boolean;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz p3, :cond_5

    .line 149
    .line 150
    iput v3, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelWidthOffset:F

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    int-to-float p1, p1

    .line 157
    div-float/2addr v2, p1

    .line 158
    iget p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mScaleRatio:F

    .line 159
    .line 160
    mul-float/2addr v2, p1

    .line 161
    iput v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mTexelHeightOffset:F

    .line 162
    .line 163
    if-eqz p4, :cond_4

    .line 164
    .line 165
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const/4 p2, 0x0

    .line 170
    invoke-super {p0, v0, p2, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Ljava/lang/Boolean;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 171
    .line 172
    .line 173
    move-object v0, p2

    .line 174
    goto :goto_2

    .line 175
    :cond_4
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-super {p0, v0, p2, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Ljava/lang/Boolean;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_5
    :goto_2
    return-object v0
.end method

.method public setOption(IF)V
    .locals 1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p2}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->updateGaussianWeights(F)V

    .line 3
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set strength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",this:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TR_GLGaussianBlurFilter"

    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 4
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    const-string v1, "effect_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TR_GLGaussianBlurFilter"

    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "float_value"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 8
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->updateGaussianWeights(F)V

    .line 10
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set strength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
