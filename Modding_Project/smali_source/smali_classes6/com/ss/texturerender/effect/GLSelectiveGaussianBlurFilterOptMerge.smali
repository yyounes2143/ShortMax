.class public Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLSelectiveGaussianBlurFilterOptMerge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLSelectiveGaussianBlurFilterOptMerge"


# instance fields
.field private mEdgeSize:F

.field private mEdgeSizeLoc:I

.field private mGaussBlurTexLoc:I

.field private mGaussianBlurTex:Lcom/ss/texturerender/effect/EffectTexture;

.field public mHeightFit:I

.field private mHeightFitLoc:I

.field protected mLayoutCoord:[F

.field private mLayoutCoordLoc:I

.field private mOffsetPixelInGauBlurTex:I

.field private mOffsetPixelLoc:I

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field private final selectiveGaussianBlurMergeShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, "precision mediump float;  \nvarying vec2 vTextureCoord;  \nuniform sampler2D sTexture;  \nuniform sampler2D sTextureGauBlur; \nuniform vec4 layoutCoord;//x,y,w,h  \nuniform float edgeSize; //gaublur gradient length  \nuniform int heightFit;  \nuniform float offsetPixel;\nfloat pointToBoxDistance(float v, float minValue, float maxValue, float edge) {\n    float distance = smoothstep(0.0, edge, abs(abs(v - (minValue + maxValue) / 2.0) - (maxValue - minValue) / 2.0));\n    return distance;\n}\n// return 1 if v inside the box, return 0 otherwise  \nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {  \n    vec2 s = step(bottomLeft, v) - (vec2(1.0,1.0) - step(v, topRight));  \n    return s.x * s.y;     \n}\nvoid main() {\n    vec2 mapTex1Coord =\n        vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x + layoutCoord.z, layoutCoord.y + layoutCoord.w);\n    if (heightFit == 1)\n    {\n        if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            float edgeInGasblurTexPersent = 1.0 / (oriBoxBottomLeft.y + (1.0 - oriBoxTopRight.y)) * edgeSize;\n            vec4 finalColor = texture2D(sTexture, mapTex1Coord);\n            if (vTextureCoord.y > oriBoxTopRight.y - edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxTopRight.y) / edgeSize * edgeInGasblurTexPersent) + offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else if (vTextureCoord.y < oriBoxBottomLeft.y + edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxBottomLeft.y) / edgeSize * edgeInGasblurTexPersent) - offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else {\n                finalColor = finalColor;\n            }\n            gl_FragColor = finalColor;\n            return;\n        } else {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (mapTex1Coord.y < 0.0) {\n                float mapTex2Coordy = vTextureCoord.y / layoutCoord.y * middleY - offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            } else if (mapTex1Coord.y >= 1.0) {\n                float mapTex2Coordy =\n                    (vTextureCoord.y - layoutCoord.y - layoutCoord.w) / (1.0 - layoutCoord.y - layoutCoord.w) * (1.0 - middleY) + middleY + offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            }\n        }\n    } else {\n        \n    }\n}"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->selectiveGaussianBlurMergeShader:Ljava/lang/String;

    .line 9
    .line 10
    const p1, 0x3c23d70a    # 0.01f

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSize:F

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoord:[F

    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussianBlurTex:Lcom/ss/texturerender/effect/EffectTexture;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFit:I

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoordLoc:I

    .line 25
    .line 26
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSizeLoc:I

    .line 27
    .line 28
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFitLoc:I

    .line 29
    .line 30
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussBlurTexLoc:I

    .line 31
    .line 32
    const/16 v0, 0x14

    .line 33
    .line 34
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mOffsetPixelInGauBlurTex:I

    .line 35
    .line 36
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mOffsetPixelLoc:I

    .line 37
    .line 38
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mSurfaceHeight:I

    .line 39
    .line 40
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mSurfaceWidth:I

    .line 41
    .line 42
    const/4 p1, 0x6

    .line 43
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 44
    .line 45
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "new GLGaussianBlurFilterMerge,this:"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "TR_GLSelectiveGaussianBlurFilterOptMerge"

    .line 65
    .line 66
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
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
    const-string p1, "precision mediump float;  \nvarying vec2 vTextureCoord;  \nuniform sampler2D sTexture;  \nuniform sampler2D sTextureGauBlur; \nuniform vec4 layoutCoord;//x,y,w,h  \nuniform float edgeSize; //gaublur gradient length  \nuniform int heightFit;  \nuniform float offsetPixel;\nfloat pointToBoxDistance(float v, float minValue, float maxValue, float edge) {\n    float distance = smoothstep(0.0, edge, abs(abs(v - (minValue + maxValue) / 2.0) - (maxValue - minValue) / 2.0));\n    return distance;\n}\n// return 1 if v inside the box, return 0 otherwise  \nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {  \n    vec2 s = step(bottomLeft, v) - (vec2(1.0,1.0) - step(v, topRight));  \n    return s.x * s.y;     \n}\nvoid main() {\n    vec2 mapTex1Coord =\n        vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x + layoutCoord.z, layoutCoord.y + layoutCoord.w);\n    if (heightFit == 1)\n    {\n        if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            float edgeInGasblurTexPersent = 1.0 / (oriBoxBottomLeft.y + (1.0 - oriBoxTopRight.y)) * edgeSize;\n            vec4 finalColor = texture2D(sTexture, mapTex1Coord);\n            if (vTextureCoord.y > oriBoxTopRight.y - edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxTopRight.y) / edgeSize * edgeInGasblurTexPersent) + offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else if (vTextureCoord.y < oriBoxBottomLeft.y + edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxBottomLeft.y) / edgeSize * edgeInGasblurTexPersent) - offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else {\n                finalColor = finalColor;\n            }\n            gl_FragColor = finalColor;\n            return;\n        } else {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (mapTex1Coord.y < 0.0) {\n                float mapTex2Coordy = vTextureCoord.y / layoutCoord.y * middleY - offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            } else if (mapTex1Coord.y >= 1.0) {\n                float mapTex2Coordy =\n                    (vTextureCoord.y - layoutCoord.y - layoutCoord.w) / (1.0 - layoutCoord.y - layoutCoord.w) * (1.0 - middleY) + middleY + offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            }\n        }\n    } else {\n        \n    }\n}"

    .line 11
    .line 12
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
    const-string v0, "edge_size"

    .line 6
    .line 7
    const v1, 0x3c23d70a    # 0.01f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSize:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoord:[F

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
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoord:[F

    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 32
    .line 33
    const-string v1, "layoutCoord"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoordLoc:I

    .line 40
    .line 41
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 42
    .line 43
    const-string v1, "edgeSize"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSizeLoc:I

    .line 50
    .line 51
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 52
    .line 53
    const-string v1, "heightFit"

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFitLoc:I

    .line 60
    .line 61
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 62
    .line 63
    const-string v1, "sTextureGauBlur"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussBlurTexLoc:I

    .line 70
    .line 71
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 72
    .line 73
    const-string v1, "offsetPixel"

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mOffsetPixelLoc:I

    .line 80
    .line 81
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 82
    .line 83
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSizeLoc:I

    .line 87
    .line 88
    if-ltz v0, :cond_2

    .line 89
    .line 90
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSize:F

    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return p1
.end method

.method public onDrawFrameAfter()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->onDrawFrameAfter()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onDrawFrameBefore()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFitLoc:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFit:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussBlurTexLoc:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    const v0, 0x84c1

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussianBlurTex:Lcom/ss/texturerender/effect/EffectTexture;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussBlurTexLoc:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoordLoc:I

    .line 38
    .line 39
    if-ltz v0, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoord:[F

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aget v3, v2, v3

    .line 45
    .line 46
    aget v4, v2, v1

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    aget v5, v2, v5

    .line 50
    .line 51
    const/4 v6, 0x3

    .line 52
    aget v2, v2, v6

    .line 53
    .line 54
    invoke-static {v0, v3, v4, v5, v2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSizeLoc:I

    .line 58
    .line 59
    if-ltz v0, :cond_3

    .line 60
    .line 61
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mEdgeSize:F

    .line 62
    .line 63
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mOffsetPixelLoc:I

    .line 67
    .line 68
    if-ltz v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussianBlurTex:Lcom/ss/texturerender/effect/EffectTexture;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget v2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mHeightFit:I

    .line 75
    .line 76
    if-ne v2, v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussianBlurTex:Lcom/ss/texturerender/effect/EffectTexture;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-float v0, v0

    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    div-float/2addr v1, v0

    .line 94
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mOffsetPixelInGauBlurTex:I

    .line 95
    .line 96
    int-to-float v0, v0

    .line 97
    mul-float/2addr v1, v0

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const/4 v1, 0x0

    .line 100
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mOffsetPixelLoc:I

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->onDrawFrameBefore()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    return v0
.end method

.method public setGaussianBlurTexture(Lcom/ss/texturerender/effect/EffectTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mGaussianBlurTex:Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    return-void
.end method

.method public setLayoutCoord([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mLayoutCoord:[F

    .line 2
    .line 3
    return-void
.end method

.method public updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mSurfaceWidth:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 4
    .line 5
    iget p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mSurfaceHeight:I

    .line 6
    .line 7
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 13
    .line 14
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 15
    .line 16
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 17
    .line 18
    return v0
.end method

.method public updateSurfaceViewPortSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mSurfaceWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/ss/texturerender/effect/GLSelectiveGaussianBlurFilterOptMerge;->mSurfaceHeight:I

    .line 4
    .line 5
    return-void
.end method
