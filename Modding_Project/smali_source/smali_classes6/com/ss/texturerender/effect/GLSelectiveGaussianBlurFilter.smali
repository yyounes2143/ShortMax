.class public Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;
.super Lcom/ss/texturerender/effect/GLGaussianBlurFilter;
.source "GLSelectiveGaussianBlurFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLSelectiveGaussianBlurFilter"

.field private static final oesFragmentShaderMainFunc:Ljava/lang/String; = "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n                if (repeadMode == 1) {\n                    resetCoord.y = 1.0 + resetCoord.y;\n                } else if (repeadMode == 2) {\n                    resetCoord.y = -resetCoord.y;\n                }\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n                if (repeadMode == 1) {\n                    resetCoord.y = resetCoord.y - 1.0;\n                } else if (repeadMode == 2) {\n                    resetCoord.y = 2.0 - resetCoord.y;\n                }\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}"


# instance fields
.field private final fragmentShaderEmptyFunc:Ljava/lang/String;

.field private final fragmentShaderGaussianFunc:Ljava/lang/String;

.field private final fragmentShaderMainFunc:Ljava/lang/String;

.field private final fragmentShaderParam:Ljava/lang/String;

.field private mBlurAreaParamLoc:I

.field private mDisplayHeight:F

.field private mDisplayWidth:F

.field private mDisplayX:F

.field private mDisplayY:F

.field private mEdgeSize:F

.field protected mEnableSecondPass:Z

.field private mGaussinScale:F

.field protected mInTexHeight:I

.field protected mInTexWidth:I

.field protected mLayoutCoord:[F

.field private mLayoutCoordLoc:I

.field private mProcessStageLoc:I

.field protected mRepeatLoc:I

.field private mRepeatType:I

.field private mSTMatrix:[F

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected mUsedProcessStage:I

.field private muSTMatrixHandle:I

.field private final oesFragmentShader:Ljava/lang/String;

.field private final oesVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;-><init>(I)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->oesVertexShader:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\nuniform int repeadMode;//1:normal;2:mirror;3:clamp to edge;\n"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->oesFragmentShader:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\n"

    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->fragmentShaderParam:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}\n"

    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->fragmentShaderMainFunc:Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo p1, "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord, float edgeCoeff) {\n    int curRadius = int(float(radius) * edgeCoeff);\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = curRadius + 1; i <= radius; i++) {\n        sum += 2.0 * oriColor * gaussianWeights[i];\n    }\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n"

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->fragmentShaderGaussianFunc:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo p1, "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n"

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->fragmentShaderEmptyFunc:Ljava/lang/String;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEdgeSize:F

    .line 33
    .line 34
    const/high16 p1, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayX:F

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 40
    .line 41
    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoordLoc:I

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatType:I

    .line 46
    .line 47
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mProcessStageLoc:I

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mGaussinScale:F

    .line 52
    .line 53
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mBlurAreaParamLoc:I

    .line 54
    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    new-array v0, v0, [F

    .line 58
    .line 59
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSTMatrix:[F

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEnableSecondPass:Z

    .line 63
    .line 64
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatLoc:I

    .line 65
    .line 66
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mInTexHeight:I

    .line 67
    .line 68
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mInTexWidth:I

    .line 69
    .line 70
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceHeight:I

    .line 71
    .line 72
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceWidth:I

    .line 73
    .line 74
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mUsedProcessStage:I

    .line 75
    .line 76
    const/16 p1, 0xf

    .line 77
    .line 78
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 79
    .line 80
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "new GLSelectiveGaussianBlurFilter,this:"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/AbsEffect;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "TR_GLSelectiveGaussianBlurFilter"

    .line 104
    .line 105
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
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
    if-lez p3, :cond_0

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
.method public getStringOption(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x2af8

    .line 2
    .line 3
    const v1, 0x8d65

    .line 4
    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const/16 v0, 0x2af9

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\nuniform int repeadMode;//1:normal;2:mirror;3:clamp to edge;\n"

    .line 18
    .line 19
    const-string v0, "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n                if (repeadMode == 1) {\n                    resetCoord.y = 1.0 + resetCoord.y;\n                } else if (repeadMode == 2) {\n                    resetCoord.y = -resetCoord.y;\n                }\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n                if (repeadMode == 1) {\n                    resetCoord.y = resetCoord.y - 1.0;\n                } else if (repeadMode == 2) {\n                    resetCoord.y = 2.0 - resetCoord.y;\n                }\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p1, "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\n"

    .line 23
    .line 24
    const-string v0, "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}\n"

    .line 25
    .line 26
    :goto_0
    iget v1, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 27
    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    cmpl-float v1, v1, v2

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatType:I

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string/jumbo p1, "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord, float edgeCoeff) {\n    int curRadius = int(float(radius) * edgeCoeff);\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = curRadius + 1; i <= radius; i++) {\n        sum += 2.0 * oriColor * gaussianWeights[i];\n    }\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string/jumbo p1, "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 85
    .line 86
    if-ne v0, v1, :cond_5

    .line 87
    .line 88
    const-string/jumbo p1, "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->getStringOption(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "texture_type"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 9
    .line 10
    const-string/jumbo v0, "strength"

    .line 11
    .line 12
    .line 13
    const/high16 v1, -0x40800000    # -1.0f

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mSigma:F

    .line 20
    .line 21
    const-string v0, "repeat_type"

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatType:I

    .line 29
    .line 30
    const-string v0, "edge_size"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEdgeSize:F

    .line 38
    .line 39
    const-string/jumbo v0, "x"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayX:F

    .line 55
    .line 56
    const-string/jumbo v0, "y"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayY:F

    .line 64
    .line 65
    const-string/jumbo v0, "width"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayWidth:F

    .line 73
    .line 74
    const-string v0, "height"

    .line 75
    .line 76
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayHeight:F

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "aspect_ratio"

    .line 84
    .line 85
    const/high16 v2, 0x3f000000    # 0.5f

    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 92
    .line 93
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 94
    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const/4 v0, 0x4

    .line 98
    new-array v0, v0, [F

    .line 99
    .line 100
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 101
    .line 102
    :cond_1
    :goto_0
    const-string v0, "scale"

    .line 103
    .line 104
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    div-float/2addr v3, v0

    .line 109
    iput v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mGaussinScale:F

    .line 110
    .line 111
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->init(Landroid/os/Bundle;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 118
    .line 119
    const-string v2, "layoutCoord"

    .line 120
    .line 121
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoordLoc:I

    .line 126
    .line 127
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 128
    .line 129
    const-string v2, "processStage"

    .line 130
    .line 131
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mProcessStageLoc:I

    .line 136
    .line 137
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 138
    .line 139
    const-string v2, "blurAreaParam"

    .line 140
    .line 141
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mBlurAreaParamLoc:I

    .line 146
    .line 147
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 148
    .line 149
    const-string/jumbo v2, "uSTMatrix"

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->muSTMatrixHandle:I

    .line 157
    .line 158
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 159
    .line 160
    const-string v2, "repeadMode"

    .line 161
    .line 162
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatLoc:I

    .line 167
    .line 168
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 169
    .line 170
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 171
    .line 172
    .line 173
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatLoc:I

    .line 174
    .line 175
    if-ltz v0, :cond_3

    .line 176
    .line 177
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 178
    .line 179
    const v3, 0x8d65

    .line 180
    .line 181
    .line 182
    if-ne v2, v3, :cond_3

    .line 183
    .line 184
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatType:I

    .line 185
    .line 186
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 187
    .line 188
    .line 189
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mBlurAreaParamLoc:I

    .line 190
    .line 191
    if-ltz v0, :cond_4

    .line 192
    .line 193
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEdgeSize:F

    .line 194
    .line 195
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mGaussinScale:F

    .line 196
    .line 197
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 198
    .line 199
    .line 200
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayX:F

    .line 201
    .line 202
    cmpl-float v1, v0, v1

    .line 203
    .line 204
    if-ltz v1, :cond_5

    .line 205
    .line 206
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoordLoc:I

    .line 207
    .line 208
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayY:F

    .line 209
    .line 210
    iget v3, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayWidth:F

    .line 211
    .line 212
    iget v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayHeight:F

    .line 213
    .line 214
    invoke-static {v1, v0, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 215
    .line 216
    .line 217
    :cond_5
    return p1
.end method

.method public onDrawFrameBefore()I
    .locals 13

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 2
    .line 3
    const v1, 0x8d65

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->muSTMatrixHandle:I

    .line 13
    .line 14
    if-ltz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSTMatrix:[F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->muSTMatrixHandle:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSTMatrix:[F

    .line 26
    .line 27
    invoke-static {v0, v4, v5, v1, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mRepeatType:I

    .line 32
    .line 33
    const/16 v1, 0x2803

    .line 34
    .line 35
    const/16 v6, 0x2802

    .line 36
    .line 37
    const/16 v7, 0xde1

    .line 38
    .line 39
    if-ne v0, v3, :cond_1

    .line 40
    .line 41
    const v0, 0x8370

    .line 42
    .line 43
    .line 44
    invoke-static {v7, v6, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    const v0, 0x812f

    .line 54
    .line 55
    .line 56
    invoke-static {v7, v6, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 57
    .line 58
    .line 59
    invoke-static {v7, v1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/16 v0, 0x2901

    .line 64
    .line 65
    invoke-static {v7, v6, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mDisplayX:F

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    cmpg-float v0, v0, v1

    .line 75
    .line 76
    if-gez v0, :cond_5

    .line 77
    .line 78
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 79
    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceHeight:I

    .line 83
    .line 84
    int-to-float v0, v0

    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    .line 87
    mul-float/2addr v0, v1

    .line 88
    iget v6, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceWidth:I

    .line 89
    .line 90
    int-to-float v6, v6

    .line 91
    div-float v8, v0, v6

    .line 92
    .line 93
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mInTexHeight:I

    .line 94
    .line 95
    int-to-float v0, v0

    .line 96
    mul-float/2addr v0, v1

    .line 97
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mInTexWidth:I

    .line 98
    .line 99
    int-to-float v1, v1

    .line 100
    div-float v9, v0, v1

    .line 101
    .line 102
    iget v11, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 103
    .line 104
    iget-object v12, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    move-object v7, p0

    .line 108
    invoke-direct/range {v7 .. v12}, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->updateLayoutCoord(FFIF[F)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoordLoc:I

    .line 112
    .line 113
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mLayoutCoord:[F

    .line 114
    .line 115
    aget v5, v1, v5

    .line 116
    .line 117
    aget v4, v1, v4

    .line 118
    .line 119
    aget v3, v1, v3

    .line 120
    .line 121
    aget v1, v1, v2

    .line 122
    .line 123
    invoke-static {v0, v5, v4, v3, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mProcessStageLoc:I

    .line 127
    .line 128
    if-ltz v0, :cond_6

    .line 129
    .line 130
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mUsedProcessStage:I

    .line 131
    .line 132
    iget v2, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 133
    .line 134
    if-eq v1, v2, :cond_6

    .line 135
    .line 136
    int-to-float v1, v2

    .line 137
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 138
    .line 139
    .line 140
    iget v0, p0, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->mProcessStage:I

    .line 141
    .line 142
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mUsedProcessStage:I

    .line 143
    .line 144
    :cond_6
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->onDrawFrameBefore()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
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
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mInTexWidth:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mInTexHeight:I

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
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceWidth:I

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
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceHeight:I

    .line 28
    .line 29
    iget-boolean v4, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mEnableSecondPass:Z

    .line 30
    .line 31
    iget-boolean v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    move-object v1, p0

    .line 35
    move-object v2, p1

    .line 36
    move-object v3, p2

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/ss/texturerender/effect/GLGaussianBlurFilter;->processWithTwoPass(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;ZZZ)Lcom/ss/texturerender/effect/EffectTexture;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceWidth:I

    .line 5
    .line 6
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 7
    .line 8
    iget p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceHeight:I

    .line 9
    .line 10
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 13
    .line 14
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceHeight:I

    .line 18
    .line 19
    int-to-float p2, p2

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    mul-float/2addr p2, v1

    .line 23
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceWidth:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    div-float/2addr p2, v2

    .line 27
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    mul-float/2addr v2, v1

    .line 33
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v2, v1

    .line 39
    cmpl-float v1, p2, v2

    .line 40
    .line 41
    const/high16 v2, 0x3f000000    # 0.5f

    .line 42
    .line 43
    if-lez v1, :cond_1

    .line 44
    .line 45
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceWidth:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 56
    .line 57
    int-to-float p1, p1

    .line 58
    mul-float/2addr p1, p2

    .line 59
    add-float/2addr p1, v2

    .line 60
    float-to-int p1, p1

    .line 61
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilter;->mSurfaceHeight:I

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 75
    .line 76
    int-to-float p1, p1

    .line 77
    div-float/2addr p1, p2

    .line 78
    add-float/2addr p1, v2

    .line 79
    float-to-int p1, p1

    .line 80
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 81
    .line 82
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 83
    .line 84
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 85
    .line 86
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 87
    .line 88
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 89
    .line 90
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 91
    .line 92
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 93
    .line 94
    :goto_1
    return v0
.end method
