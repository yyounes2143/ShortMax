.class public Lcom/ss/texturerender/effect/vr/TouchScaler;
.super Ljava/lang/Object;
.source "TouchScaler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_TouchScaler"

.field public static final MAX_SCALE:F = 4.0f

.field public static final MIN_SCALE:F = 0.2f


# instance fields
.field private curMaxScale:F

.field private curMinScale:F

.field private mTexType:I

.field private matrix:Landroid/graphics/Matrix;

.field private values:[F


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40800000    # 4.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->curMaxScale:F

    .line 7
    .line 8
    const v0, 0x3e4ccccd    # 0.2f

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->curMinScale:F

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->matrix:Landroid/graphics/Matrix;

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->values:[F

    .line 25
    .line 26
    iput p1, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->mTexType:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->matrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->values:[F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->values:[F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/TouchScaler;->getScale()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->curMaxScale:F

    .line 10
    .line 11
    cmpl-float v3, v1, v2

    .line 12
    .line 13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    cmpg-float v3, v0, v4

    .line 18
    .line 19
    if-ltz v3, :cond_2

    .line 20
    .line 21
    :cond_0
    iget v3, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->curMinScale:F

    .line 22
    .line 23
    cmpg-float v5, v1, v3

    .line 24
    .line 25
    if-gez v5, :cond_1

    .line 26
    .line 27
    cmpl-float v4, v0, v4

    .line 28
    .line 29
    if-gtz v4, :cond_2

    .line 30
    .line 31
    :cond_1
    cmpg-float v2, v1, v2

    .line 32
    .line 33
    if-gez v2, :cond_3

    .line 34
    .line 35
    cmpl-float v2, v1, v3

    .line 36
    .line 37
    if-lez v2, :cond_3

    .line 38
    .line 39
    :cond_2
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->matrix:Landroid/graphics/Matrix;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {v2, v0, v0, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    iget p1, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->mTexType:I

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "scaleFactor:"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ",curScale:"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "TR_TouchScaler"

    .line 80
    .line 81
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setMaxScale(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x40800000    # 4.0f

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->curMaxScale:F

    .line 14
    .line 15
    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x3e4ccccd    # 0.2f

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->curMinScale:F

    .line 15
    .line 16
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/TouchScaler;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method
