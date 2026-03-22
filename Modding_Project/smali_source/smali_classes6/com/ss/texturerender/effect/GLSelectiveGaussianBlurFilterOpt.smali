.class public Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;
.super Lcom/ss/texturerender/effect/GLGaussianBlurFilter;
.source "GLSelectiveGaussianBlurFilterOpt.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLSelectiveGaussianBlurFilterOPT"


# instance fields
.field private final fragmentShaderEmptyFunc:Ljava/lang/String;

.field private final fragmentShaderGaussianFunc:Ljava/lang/String;

.field private final fragmentShaderMainFunc:Ljava/lang/String;

.field private final fragmentShaderParam:Ljava/lang/String;

.field private mDisplayHeight:F

.field private mDisplayWidth:F

.field private mDisplayX:F

.field private mDisplayY:F

.field protected mEnableSecondPass:Z

.field private mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

.field private mGauBlurLongTexLength:I

.field private mGaussianBlurTexHeight:I

.field private mGaussianBlurTexWidth:I

.field public mHeightFit:I

.field private mHeightFitLoc:I

.field protected mInTexHeight:I

.field protected mInTexWidth:I

.field protected mLayoutCoord:[F

.field private mLayoutCoordLoc:I

.field private mProcessStageLoc:I

.field private mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;-><init>(I)V

    .line 2
    .line 3
    .line 4
    const-string p1, "precision mediump float;\n varying vec2 vTextureCoord;\n uniform sampler2D sTexture;\n uniform float gaussianAlpha;\n uniform vec4 layoutCoord;//x,y,w,h\n uniform int processStage;//0:stage1;1:stage2\n uniform int heightFit;//SurfaceRatio > TexRatio\n"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->fragmentShaderParam:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, " void main() {\n     vec2 resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n    if (processStage == 0)\n    {\n        if (heightFit == 1) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (vTextureCoord.y <= middleY) {\n                float ycoord = -(((vTextureCoord.y / middleY * layoutCoord.y) - layoutCoord.y) / layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            } else {\n                float ycoord =\n                    2.0 - ((((vTextureCoord.y - middleY) / (1.0 - middleY) * (1.0 - layoutCoord.y - layoutCoord.w) +\n                            (layoutCoord.y + layoutCoord.w)) -\n                           layoutCoord.y) /\n                              layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            }\n        } else {\n            resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n        }\n    }\n    vec4 oriColor = texture2D(sTexture, resetCoord);\n    gl_FragColor = gaussianBlurKernel(oriColor, resetCoord);\n }"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->fragmentShaderMainFunc:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo p1, "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    int curRadius = radius;\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n"

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->fragmentShaderGaussianFunc:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo p1, "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n"

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->fragmentShaderEmptyFunc:Ljava/lang/String;

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayX:F

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoordLoc:I

    .line 31
    .line 32
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mProcessStageLoc:I

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mEnableSecondPass:Z

    .line 36
    .line 37
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexHeight:I

    .line 38
    .line 39
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexWidth:I

    .line 40
    .line 41
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceHeight:I

    .line 42
    .line 43
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 44
    .line 45
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 48
    .line 49
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 50
    .line 51
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 52
    .line 53
    const/16 p1, 0x140

    .line 54
    .line 55
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGauBlurLongTexLength:I

    .line 56
    .line 57
    iput v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFit:I

    .line 58
    .line 59
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFitLoc:I

    .line 60
    .line 61
    const/16 p1, 0xf

    .line 62
    .line 63
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 64
    .line 65
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "new GLSelectiveGaussianBlurFilter,this:"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/AbsEffect;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "TR_GLSelectiveGaussianBlurFilterOPT"

    .line 89
    .line 90
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private _genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 6

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/16 v3, 0x1908

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(IIIII)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1
.end method

.method private _genTexture(III)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 7

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    const/16 v5, 0x1908

    const v6, 0x8368

    const v4, 0x8059

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(IIIII)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1
.end method

.method private _genTexture(IIIII)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 13

    const/16 v0, 0xde1

    .line 4
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->genTexture(I)I

    move-result v3

    .line 5
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    move/from16 v6, p3

    move v7, p1

    move v8, p2

    move/from16 v10, p4

    move/from16 v11, p5

    .line 6
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 7
    new-instance v0, Lcom/ss/texturerender/effect/EffectTexture;

    const/4 v2, 0x0

    const/16 v6, 0xde1

    move-object v1, v0

    move v4, p1

    move v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIIIIII)V

    move-object v1, p0

    .line 8
    iget v2, v1, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genTexture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TR_GLSelectiveGaussianBlurFilterOPT"

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private _releaseEffectTex(Lcom/ss/texturerender/effect/EffectTexture;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "onTextureReturn delTex:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "TR_GLSelectiveGaussianBlurFilterOPT"

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private cacluGauBlurTexSize(FFI)V
    .locals 1

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    cmpl-float p1, p1, p2

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceHeight:I

    .line 8
    .line 9
    int-to-float p1, p1

    .line 10
    iget p3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 11
    .line 12
    int-to-float v0, p3

    .line 13
    mul-float/2addr v0, p2

    .line 14
    sub-float/2addr p1, v0

    .line 15
    int-to-float p2, p3

    .line 16
    cmpl-float p2, p1, p2

    .line 17
    .line 18
    if-lez p2, :cond_0

    .line 19
    .line 20
    iget p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGauBlurLongTexLength:I

    .line 21
    .line 22
    iput p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    int-to-float p3, p3

    .line 26
    div-float/2addr p3, p1

    .line 27
    mul-float/2addr p2, p3

    .line 28
    float-to-int p1, p2

    .line 29
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGauBlurLongTexLength:I

    .line 33
    .line 34
    iput p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 35
    .line 36
    int-to-float p2, p2

    .line 37
    int-to-float p3, p3

    .line 38
    div-float/2addr p1, p3

    .line 39
    mul-float/2addr p2, p1

    .line 40
    float-to-int p1, p2

    .line 41
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method private updateLayoutCoord(FFIF[F)V
    .locals 6

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    cmpl-float p3, p1, p2

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-ltz p3, :cond_0

    .line 13
    .line 14
    div-float/2addr p2, p1

    .line 15
    aput v3, p5, v4

    .line 16
    .line 17
    sub-float p1, v5, p2

    .line 18
    .line 19
    mul-float/2addr p1, p4

    .line 20
    aput p1, p5, v2

    .line 21
    .line 22
    aput v5, p5, v1

    .line 23
    .line 24
    aput p2, p5, v0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    div-float/2addr p1, p2

    .line 28
    sub-float p2, v5, p1

    .line 29
    .line 30
    mul-float/2addr p2, p4

    .line 31
    aput p2, p5, v4

    .line 32
    .line 33
    aput v3, p5, v2

    .line 34
    .line 35
    aput p1, p5, v1

    .line 36
    .line 37
    aput v5, p5, v0

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected genTexture()Lcom/ss/texturerender/effect/EffectTexture;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 10
    .line 11
    const-string v1, "TR_GLSelectiveGaussianBlurFilterOPT"

    .line 12
    .line 13
    const-string v2, "gaussianBlur size invaild"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 19
    .line 20
    const/16 v1, 0x82

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 34
    .line 35
    if-ne v0, v3, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 44
    .line 45
    if-eq v0, v3, :cond_5

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_releaseEffectTex(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 61
    .line 62
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-direct {p0, v2, v3, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(III)Lcom/ss/texturerender/effect/EffectTexture;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 76
    .line 77
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 78
    .line 79
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 84
    .line 85
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_6
    const/4 v3, 0x1

    .line 89
    if-ne v0, v3, :cond_b

    .line 90
    .line 91
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 100
    .line 101
    if-ne v0, v3, :cond_7

    .line 102
    .line 103
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 110
    .line 111
    if-eq v0, v3, :cond_a

    .line 112
    .line 113
    :cond_7
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_releaseEffectTex(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 121
    .line 122
    :cond_8
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 127
    .line 128
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-direct {p0, v2, v3, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(III)Lcom/ss/texturerender/effect/EffectTexture;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_9
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 142
    .line 143
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 144
    .line 145
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 150
    .line 151
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_b
    return-object v2
.end method

.method public getSecondGauBlurTexture()Lcom/ss/texturerender/effect/EffectTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2af9

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float p1, p1, v0

    .line 15
    .line 16
    const-string v0, "precision mediump float;\n varying vec2 vTextureCoord;\n uniform sampler2D sTexture;\n uniform float gaussianAlpha;\n uniform vec4 layoutCoord;//x,y,w,h\n uniform int processStage;//0:stage1;1:stage2\n uniform int heightFit;//SurfaceRatio > TexRatio\n"

    .line 17
    .line 18
    const-string v1, " void main() {\n     vec2 resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n    if (processStage == 0)\n    {\n        if (heightFit == 1) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (vTextureCoord.y <= middleY) {\n                float ycoord = -(((vTextureCoord.y / middleY * layoutCoord.y) - layoutCoord.y) / layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            } else {\n                float ycoord =\n                    2.0 - ((((vTextureCoord.y - middleY) / (1.0 - middleY) * (1.0 - layoutCoord.y - layoutCoord.w) +\n                            (layoutCoord.y + layoutCoord.w)) -\n                           layoutCoord.y) /\n                              layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            }\n        } else {\n            resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n        }\n    }\n    vec4 oriColor = texture2D(sTexture, resetCoord);\n    gl_FragColor = gaussianBlurKernel(oriColor, resetCoord);\n }"

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    int curRadius = radius;\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 2

    .line 1
    const/16 v0, 0xde1

    .line 2
    .line 3
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 4
    .line 5
    const-string/jumbo v0, "strength"

    .line 6
    .line 7
    .line 8
    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [F

    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 24
    .line 25
    :cond_0
    const-string/jumbo v0, "x"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayX:F

    .line 40
    .line 41
    const-string/jumbo v0, "y"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayY:F

    .line 49
    .line 50
    const-string/jumbo v0, "width"

    .line 51
    .line 52
    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayWidth:F

    .line 60
    .line 61
    const-string v0, "height"

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayHeight:F

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "aspect_ratio"

    .line 71
    .line 72
    const/high16 v1, 0x3f000000    # 0.5f

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 79
    .line 80
    :goto_0
    const-string v0, "s_gau_blur_tex_len"

    .line 81
    .line 82
    const/16 v1, 0x140

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGauBlurLongTexLength:I

    .line 89
    .line 90
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->init(Landroid/os/Bundle;)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 97
    .line 98
    const-string v1, "layoutCoord"

    .line 99
    .line 100
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoordLoc:I

    .line 105
    .line 106
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 107
    .line 108
    const-string v1, "processStage"

    .line 109
    .line 110
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mProcessStageLoc:I

    .line 115
    .line 116
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 117
    .line 118
    const-string v1, "heightFit"

    .line 119
    .line 120
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFitLoc:I

    .line 125
    .line 126
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 127
    .line 128
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    .line 130
    .line 131
    return p1
.end method

.method public onDrawFrameBefore()I
    .locals 13

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayX:F

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    cmpg-float v5, v0, v5

    .line 13
    .line 14
    if-gez v5, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceHeight:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    .line 21
    mul-float/2addr v0, v5

    .line 22
    iget v6, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 23
    .line 24
    int-to-float v6, v6

    .line 25
    div-float v8, v0, v6

    .line 26
    .line 27
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexHeight:I

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    mul-float/2addr v0, v5

    .line 31
    iget v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexWidth:I

    .line 32
    .line 33
    int-to-float v5, v5

    .line 34
    div-float v9, v0, v5

    .line 35
    .line 36
    iget v11, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 37
    .line 38
    iget-object v12, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    move-object v7, p0

    .line 42
    invoke-direct/range {v7 .. v12}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->updateLayoutCoord(FFIF[F)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 47
    .line 48
    aput v0, v5, v4

    .line 49
    .line 50
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayY:F

    .line 51
    .line 52
    aput v0, v5, v3

    .line 53
    .line 54
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayWidth:F

    .line 55
    .line 56
    aput v0, v5, v2

    .line 57
    .line 58
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mDisplayHeight:F

    .line 59
    .line 60
    aput v0, v5, v1

    .line 61
    .line 62
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoordLoc:I

    .line 63
    .line 64
    iget-object v5, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mLayoutCoord:[F

    .line 65
    .line 66
    aget v4, v5, v4

    .line 67
    .line 68
    aget v3, v5, v3

    .line 69
    .line 70
    aget v2, v5, v2

    .line 71
    .line 72
    aget v1, v5, v1

    .line 73
    .line 74
    invoke-static {v0, v4, v3, v2, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mProcessStageLoc:I

    .line 78
    .line 79
    if-ltz v0, :cond_2

    .line 80
    .line 81
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFitLoc:I

    .line 87
    .line 88
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFit:I

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "filter glDrawArrays before,type:"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->onDrawFrameBefore()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    return v0
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexWidth:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexHeight:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceHeight:I

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    mul-float/2addr v0, v1

    .line 33
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    div-float/2addr v0, v2

    .line 37
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexHeight:I

    .line 38
    .line 39
    int-to-float v2, v2

    .line 40
    mul-float/2addr v2, v1

    .line 41
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexWidth:I

    .line 42
    .line 43
    int-to-float v1, v1

    .line 44
    div-float/2addr v2, v1

    .line 45
    cmpl-float v0, v0, v2

    .line 46
    .line 47
    if-ltz v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFit:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mHeightFit:I

    .line 55
    .line 56
    :goto_0
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    move-object v1, p0

    .line 60
    move-object v2, p1

    .line 61
    move-object v3, p2

    .line 62
    invoke-virtual/range {v1 .. v6}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->processWithTwoPass(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;ZZZ)Lcom/ss/texturerender/effect/EffectTexture;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_releaseEffectTex(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mFirstGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->_releaseEffectTex(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSecondGauBlurTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 2

    .line 1
    iget p1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceHeight:I

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mSurfaceWidth:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr p1, v1

    .line 16
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexHeight:I

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mInTexWidth:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v1, v0

    .line 24
    invoke-direct {p0, p1, v1, p2}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->cacluGauBlurTexSize(FFI)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexWidth:I

    .line 28
    .line 29
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 30
    .line 31
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOpt;->mGaussianBlurTexHeight:I

    .line 32
    .line 33
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 34
    .line 35
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 36
    .line 37
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 38
    .line 39
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 40
    .line 41
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 42
    .line 43
    return p2
.end method
