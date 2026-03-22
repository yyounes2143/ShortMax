.class public Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;
.super Ljava/lang/Object;
.source "BrownDistortion.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_BrownDistortion"


# instance fields
.field private mCoefficients:[F

.field private mTexType:I


# direct methods
.method public constructor <init>([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->mTexType:I

    .line 5
    .line 6
    array-length p2, p1

    .line 7
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->mCoefficients:[F

    .line 12
    .line 13
    iget p1, p0, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->mTexType:I

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "new BrownDistortion:"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->mCoefficients:[F

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v0, "TR_BrownDistortion"

    .line 39
    .line 40
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private distortionFactor(F)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->mCoefficients:[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v4, v1, :cond_0

    .line 10
    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    mul-float/2addr v3, p1

    .line 14
    mul-float/2addr v5, v3

    .line 15
    add-float/2addr v2, v5

    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v2
.end method


# virtual methods
.method public distort(FF)[F
    .locals 2

    .line 1
    mul-float v0, p1, p1

    .line 2
    .line 3
    mul-float v1, p2, p2

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distortionFactor(F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    mul-float/2addr p1, v0

    .line 11
    mul-float/2addr v0, p2

    .line 12
    const/4 p2, 0x2

    .line 13
    new-array p2, p2, [F

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput p1, p2, v1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    aput v0, p2, p1

    .line 20
    .line 21
    return-object p2
.end method

.method public distortInverse(FF)[F
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    mul-float v3, p1, p1

    .line 5
    .line 6
    mul-float v4, p2, p2

    .line 7
    .line 8
    add-float/2addr v3, v4

    .line 9
    float-to-double v3, v3

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    double-to-float v3, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    sub-float v5, v3, v4

    .line 17
    .line 18
    invoke-static {v4}, Ljava/lang/Math;->ulp(F)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    cmpg-float v4, v5, v4

    .line 23
    .line 24
    if-gez v4, :cond_0

    .line 25
    .line 26
    new-array v2, v2, [F

    .line 27
    .line 28
    aput p1, v2, v1

    .line 29
    .line 30
    aput p2, v2, v0

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float v4, v3, v4

    .line 36
    .line 37
    const/high16 v5, 0x40400000    # 3.0f

    .line 38
    .line 39
    div-float v5, v3, v5

    .line 40
    .line 41
    mul-float v6, v4, v4

    .line 42
    .line 43
    invoke-direct {p0, v6}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distortionFactor(F)F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    mul-float/2addr v6, v4

    .line 48
    sub-float v6, v3, v6

    .line 49
    .line 50
    :goto_0
    move v9, v5

    .line 51
    move v5, v4

    .line 52
    move v4, v9

    .line 53
    sub-float v5, v4, v5

    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const v8, 0x38d1b717    # 1.0E-4f

    .line 60
    .line 61
    .line 62
    cmpl-float v7, v7, v8

    .line 63
    .line 64
    if-lez v7, :cond_1

    .line 65
    .line 66
    mul-float v7, v4, v4

    .line 67
    .line 68
    invoke-direct {p0, v7}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distortionFactor(F)F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    mul-float/2addr v7, v4

    .line 73
    sub-float v7, v3, v7

    .line 74
    .line 75
    sub-float v6, v7, v6

    .line 76
    .line 77
    div-float/2addr v5, v6

    .line 78
    mul-float/2addr v5, v7

    .line 79
    sub-float v5, v4, v5

    .line 80
    .line 81
    move v6, v7

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    div-float/2addr v4, v3

    .line 84
    mul-float/2addr p1, v4

    .line 85
    mul-float/2addr v4, p2

    .line 86
    new-array p2, v2, [F

    .line 87
    .line 88
    aput p1, p2, v1

    .line 89
    .line 90
    aput v4, p2, v0

    .line 91
    .line 92
    return-object p2
.end method
