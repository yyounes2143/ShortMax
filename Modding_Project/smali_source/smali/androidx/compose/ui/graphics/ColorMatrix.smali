.class public final Landroidx/compose/ui/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final values:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic box-impl([F)Landroidx/compose/ui/graphics/ColorMatrix;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/ColorMatrix;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/ColorMatrix;-><init>([F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static constructor-impl([F)[F
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    and-int/2addr p1, p2

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x14

    .line 6
    .line 7
    new-array p0, p0, [F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    aput v0, p0, p1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    aput p1, p0, p2

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    aput p1, p0, p2

    .line 19
    .line 20
    const/4 p2, 0x3

    .line 21
    aput p1, p0, p2

    .line 22
    .line 23
    const/4 p2, 0x4

    .line 24
    aput p1, p0, p2

    .line 25
    .line 26
    const/4 p2, 0x5

    .line 27
    aput p1, p0, p2

    .line 28
    .line 29
    const/4 p2, 0x6

    .line 30
    aput v0, p0, p2

    .line 31
    .line 32
    const/4 p2, 0x7

    .line 33
    aput p1, p0, p2

    .line 34
    .line 35
    const/16 p2, 0x8

    .line 36
    .line 37
    aput p1, p0, p2

    .line 38
    .line 39
    const/16 p2, 0x9

    .line 40
    .line 41
    aput p1, p0, p2

    .line 42
    .line 43
    const/16 p2, 0xa

    .line 44
    .line 45
    aput p1, p0, p2

    .line 46
    .line 47
    const/16 p2, 0xb

    .line 48
    .line 49
    aput p1, p0, p2

    .line 50
    .line 51
    const/16 p2, 0xc

    .line 52
    .line 53
    aput v0, p0, p2

    .line 54
    .line 55
    const/16 p2, 0xd

    .line 56
    .line 57
    aput p1, p0, p2

    .line 58
    .line 59
    const/16 p2, 0xe

    .line 60
    .line 61
    aput p1, p0, p2

    .line 62
    .line 63
    const/16 p2, 0xf

    .line 64
    .line 65
    aput p1, p0, p2

    .line 66
    .line 67
    const/16 p2, 0x10

    .line 68
    .line 69
    aput p1, p0, p2

    .line 70
    .line 71
    const/16 p2, 0x11

    .line 72
    .line 73
    aput p1, p0, p2

    .line 74
    .line 75
    const/16 p2, 0x12

    .line 76
    .line 77
    aput v0, p0, p2

    .line 78
    .line 79
    const/16 p2, 0x13

    .line 80
    .line 81
    aput p1, p0, p2

    .line 82
    .line 83
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->constructor-impl([F)[F

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public static final convertRgbToYuv-impl([F)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    const v0, 0x3e991687    # 0.299f

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput v0, p0, v1

    .line 9
    .line 10
    const v0, 0x3f1645a2    # 0.587f

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aput v0, p0, v1

    .line 15
    .line 16
    const v0, 0x3de978d5    # 0.114f

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    aput v0, p0, v1

    .line 21
    .line 22
    const v0, -0x41d335d2    # -0.16874f

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    aput v0, p0, v1

    .line 27
    .line 28
    const v0, -0x41566517    # -0.33126f

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    aput v0, p0, v1

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    const/high16 v1, 0x3f000000    # 0.5f

    .line 36
    .line 37
    aput v1, p0, v0

    .line 38
    .line 39
    const/16 v0, 0xa

    .line 40
    .line 41
    aput v1, p0, v0

    .line 42
    .line 43
    const v0, -0x4129a177    # -0.41869f

    .line 44
    .line 45
    .line 46
    const/16 v1, 0xb

    .line 47
    .line 48
    aput v0, p0, v1

    .line 49
    .line 50
    const v0, -0x42597a25    # -0.08131f

    .line 51
    .line 52
    .line 53
    const/16 v1, 0xc

    .line 54
    .line 55
    aput v0, p0, v1

    .line 56
    .line 57
    return-void
.end method

.method public static final convertYuvToRgb-impl([F)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    const v0, 0x3fb374bc    # 1.402f

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    aput v0, p0, v1

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    aput v1, p0, v0

    .line 14
    .line 15
    const v0, -0x414fcce2    # -0.34414f

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    aput v0, p0, v2

    .line 20
    .line 21
    const v0, -0x40c92e1f    # -0.71414f

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x7

    .line 25
    aput v0, p0, v2

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    aput v1, p0, v0

    .line 30
    .line 31
    const v0, 0x3fe2d0e5    # 1.772f

    .line 32
    .line 33
    .line 34
    const/16 v1, 0xb

    .line 35
    .line 36
    aput v0, p0, v1

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const/16 v1, 0xc

    .line 40
    .line 41
    aput v0, p0, v1

    .line 42
    .line 43
    return-void
.end method

.method private static final dot-Me4OoYI([F[FI[FI)F
    .locals 2

    .line 1
    const/4 p0, 0x5

    .line 2
    mul-int/2addr p2, p0

    .line 3
    aget v0, p1, p2

    .line 4
    .line 5
    aget v1, p3, p4

    .line 6
    .line 7
    mul-float/2addr v0, v1

    .line 8
    add-int/lit8 v1, p2, 0x1

    .line 9
    .line 10
    aget v1, p1, v1

    .line 11
    .line 12
    add-int/2addr p0, p4

    .line 13
    aget p0, p3, p0

    .line 14
    .line 15
    mul-float/2addr v1, p0

    .line 16
    add-float/2addr v0, v1

    .line 17
    add-int/lit8 p0, p2, 0x2

    .line 18
    .line 19
    aget p0, p1, p0

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    add-int/2addr v1, p4

    .line 24
    aget v1, p3, v1

    .line 25
    .line 26
    mul-float/2addr p0, v1

    .line 27
    add-float/2addr v0, p0

    .line 28
    add-int/lit8 p2, p2, 0x3

    .line 29
    .line 30
    aget p0, p1, p2

    .line 31
    .line 32
    const/16 p1, 0xf

    .line 33
    .line 34
    add-int/2addr p1, p4

    .line 35
    aget p1, p3, p1

    .line 36
    .line 37
    mul-float/2addr p0, p1

    .line 38
    add-float/2addr v0, p0

    .line 39
    return v0
.end method

.method public static equals-impl([FLjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/graphics/ColorMatrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/ColorMatrix;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/ColorMatrix;->unbox-impl()[F

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static final equals-impl0([F[F)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final get-impl([FII)F
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/2addr p1, p2

    .line 4
    aget p0, p0, p1

    .line 5
    .line 6
    return p0
.end method

.method public static hashCode-impl([F)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final reset-impl([F)V
    .locals 6

    .line 1
    const/4 v4, 0x6

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v5}, Lkotlin/collections/n;->E([FFIIILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    aput v1, p0, v0

    .line 14
    .line 15
    const/16 v0, 0xc

    .line 16
    .line 17
    aput v1, p0, v0

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    aput v1, p0, v0

    .line 21
    .line 22
    const/16 v0, 0x12

    .line 23
    .line 24
    aput v1, p0, v0

    .line 25
    .line 26
    return-void
.end method

.method private static final rotateInternal-impl([FFLkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    float-to-double p0, p1

    .line 5
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr p0, v0

    .line 11
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr p0, v0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    double-to-float v0, v0

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    double-to-float p0, p0

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final set-impl([FIIF)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x5

    .line 2
    .line 3
    add-int/2addr p1, p2

    .line 4
    aput p3, p0, p1

    .line 5
    .line 6
    return-void
.end method

.method public static final set-jHG-Opc([F[F)V
    .locals 8
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "src"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v6, 0xe

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p0

    .line 14
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->r([F[FIIIILjava/lang/Object;)[F

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final setToRotateBlue-impl([FF)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-float p1, v2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    double-to-float v0, v0

    .line 27
    const/4 v1, 0x6

    .line 28
    aput p1, p0, v1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput p1, p0, v1

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aput v0, p0, p1

    .line 35
    .line 36
    neg-float p1, v0

    .line 37
    const/4 v0, 0x5

    .line 38
    aput p1, p0, v0

    .line 39
    .line 40
    return-void
.end method

.method public static final setToRotateGreen-impl([FF)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-float p1, v2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    double-to-float v0, v0

    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    aput p1, p0, v1

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput p1, p0, v1

    .line 33
    .line 34
    neg-float p1, v0

    .line 35
    const/4 v1, 0x2

    .line 36
    aput p1, p0, v1

    .line 37
    .line 38
    const/16 p1, 0xa

    .line 39
    .line 40
    aput v0, p0, p1

    .line 41
    .line 42
    return-void
.end method

.method public static final setToRotateRed-impl([FF)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-float p1, v2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    double-to-float v0, v0

    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    aput p1, p0, v1

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    aput p1, p0, v1

    .line 33
    .line 34
    const/4 p1, 0x7

    .line 35
    aput v0, p0, p1

    .line 36
    .line 37
    neg-float p1, v0

    .line 38
    const/16 v0, 0xb

    .line 39
    .line 40
    aput p1, p0, v0

    .line 41
    .line 42
    return-void
.end method

.method public static final setToSaturation-impl([FF)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    int-to-float v1, v0

    .line 6
    sub-float/2addr v1, p1

    .line 7
    const v2, 0x3e5a1cac    # 0.213f

    .line 8
    .line 9
    .line 10
    mul-float/2addr v2, v1

    .line 11
    const v3, 0x3f370a3d    # 0.715f

    .line 12
    .line 13
    .line 14
    mul-float/2addr v3, v1

    .line 15
    const v4, 0x3d9374bc    # 0.072f

    .line 16
    .line 17
    .line 18
    mul-float/2addr v1, v4

    .line 19
    add-float v4, v2, p1

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aput v4, p0, v5

    .line 23
    .line 24
    aput v3, p0, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput v1, p0, v0

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    aput v2, p0, v0

    .line 31
    .line 32
    add-float v0, v3, p1

    .line 33
    .line 34
    const/4 v4, 0x6

    .line 35
    aput v0, p0, v4

    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    aput v1, p0, v0

    .line 39
    .line 40
    const/16 v0, 0xa

    .line 41
    .line 42
    aput v2, p0, v0

    .line 43
    .line 44
    const/16 v0, 0xb

    .line 45
    .line 46
    aput v3, p0, v0

    .line 47
    .line 48
    add-float/2addr v1, p1

    .line 49
    const/16 p1, 0xc

    .line 50
    .line 51
    aput v1, p0, p1

    .line 52
    .line 53
    return-void
.end method

.method public static final setToScale-impl([FFFFF)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorMatrix;->reset-impl([F)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aput p1, p0, v0

    .line 6
    .line 7
    const/4 p1, 0x6

    .line 8
    aput p2, p0, p1

    .line 9
    .line 10
    const/16 p1, 0xc

    .line 11
    .line 12
    aput p3, p0, p1

    .line 13
    .line 14
    const/16 p1, 0x12

    .line 15
    .line 16
    aput p4, p0, p1

    .line 17
    .line 18
    return-void
.end method

.method public static final timesAssign-jHG-Opc([F[F)V
    .locals 43
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "colorMatrix"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v0, v0, v2, v1, v4}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x2

    .line 21
    invoke-static {v0, v0, v2, v1, v6}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/4 v8, 0x3

    .line 26
    invoke-static {v0, v0, v2, v1, v8}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    aget v10, v0, v2

    .line 31
    .line 32
    const/4 v11, 0x4

    .line 33
    aget v12, v1, v11

    .line 34
    .line 35
    mul-float/2addr v10, v12

    .line 36
    aget v12, v0, v4

    .line 37
    .line 38
    const/16 v13, 0x9

    .line 39
    .line 40
    aget v14, v1, v13

    .line 41
    .line 42
    mul-float/2addr v12, v14

    .line 43
    add-float/2addr v10, v12

    .line 44
    aget v12, v0, v6

    .line 45
    .line 46
    const/16 v14, 0xe

    .line 47
    .line 48
    aget v15, v1, v14

    .line 49
    .line 50
    mul-float/2addr v12, v15

    .line 51
    add-float/2addr v10, v12

    .line 52
    aget v12, v0, v8

    .line 53
    .line 54
    const/16 v15, 0x13

    .line 55
    .line 56
    aget v16, v1, v15

    .line 57
    .line 58
    mul-float v12, v12, v16

    .line 59
    .line 60
    add-float/2addr v10, v12

    .line 61
    aget v12, v0, v11

    .line 62
    .line 63
    add-float/2addr v10, v12

    .line 64
    invoke-static {v0, v0, v4, v1, v2}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    invoke-static {v0, v0, v4, v1, v4}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 69
    .line 70
    .line 71
    move-result v16

    .line 72
    invoke-static {v0, v0, v4, v1, v6}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 73
    .line 74
    .line 75
    move-result v17

    .line 76
    invoke-static {v0, v0, v4, v1, v8}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 77
    .line 78
    .line 79
    move-result v18

    .line 80
    const/16 v19, 0x5

    .line 81
    .line 82
    aget v20, v0, v19

    .line 83
    .line 84
    aget v21, v1, v11

    .line 85
    .line 86
    mul-float v20, v20, v21

    .line 87
    .line 88
    const/16 v21, 0x6

    .line 89
    .line 90
    aget v22, v0, v21

    .line 91
    .line 92
    aget v23, v1, v13

    .line 93
    .line 94
    mul-float v22, v22, v23

    .line 95
    .line 96
    add-float v20, v20, v22

    .line 97
    .line 98
    const/16 v22, 0x7

    .line 99
    .line 100
    aget v23, v0, v22

    .line 101
    .line 102
    aget v24, v1, v14

    .line 103
    .line 104
    mul-float v23, v23, v24

    .line 105
    .line 106
    add-float v20, v20, v23

    .line 107
    .line 108
    const/16 v23, 0x8

    .line 109
    .line 110
    aget v24, v0, v23

    .line 111
    .line 112
    aget v25, v1, v15

    .line 113
    .line 114
    mul-float v24, v24, v25

    .line 115
    .line 116
    add-float v20, v20, v24

    .line 117
    .line 118
    aget v24, v0, v13

    .line 119
    .line 120
    add-float v20, v20, v24

    .line 121
    .line 122
    invoke-static {v0, v0, v6, v1, v2}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 123
    .line 124
    .line 125
    move-result v24

    .line 126
    invoke-static {v0, v0, v6, v1, v4}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 127
    .line 128
    .line 129
    move-result v25

    .line 130
    invoke-static {v0, v0, v6, v1, v6}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 131
    .line 132
    .line 133
    move-result v26

    .line 134
    invoke-static {v0, v0, v6, v1, v8}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 135
    .line 136
    .line 137
    move-result v27

    .line 138
    const/16 v28, 0xa

    .line 139
    .line 140
    aget v29, v0, v28

    .line 141
    .line 142
    aget v30, v1, v11

    .line 143
    .line 144
    mul-float v29, v29, v30

    .line 145
    .line 146
    const/16 v30, 0xb

    .line 147
    .line 148
    aget v31, v0, v30

    .line 149
    .line 150
    aget v32, v1, v13

    .line 151
    .line 152
    mul-float v31, v31, v32

    .line 153
    .line 154
    add-float v29, v29, v31

    .line 155
    .line 156
    const/16 v31, 0xc

    .line 157
    .line 158
    aget v32, v0, v31

    .line 159
    .line 160
    aget v33, v1, v14

    .line 161
    .line 162
    mul-float v32, v32, v33

    .line 163
    .line 164
    add-float v29, v29, v32

    .line 165
    .line 166
    const/16 v32, 0xd

    .line 167
    .line 168
    aget v33, v0, v32

    .line 169
    .line 170
    aget v34, v1, v15

    .line 171
    .line 172
    mul-float v33, v33, v34

    .line 173
    .line 174
    add-float v29, v29, v33

    .line 175
    .line 176
    aget v33, v0, v14

    .line 177
    .line 178
    add-float v29, v29, v33

    .line 179
    .line 180
    invoke-static {v0, v0, v8, v1, v2}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 181
    .line 182
    .line 183
    move-result v33

    .line 184
    invoke-static {v0, v0, v8, v1, v4}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 185
    .line 186
    .line 187
    move-result v34

    .line 188
    invoke-static {v0, v0, v8, v1, v6}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 189
    .line 190
    .line 191
    move-result v35

    .line 192
    invoke-static {v0, v0, v8, v1, v8}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI([F[FI[FI)F

    .line 193
    .line 194
    .line 195
    move-result v36

    .line 196
    const/16 v37, 0xf

    .line 197
    .line 198
    aget v38, v0, v37

    .line 199
    .line 200
    aget v39, v1, v11

    .line 201
    .line 202
    mul-float v38, v38, v39

    .line 203
    .line 204
    const/16 v39, 0x10

    .line 205
    .line 206
    aget v40, v0, v39

    .line 207
    .line 208
    aget v41, v1, v13

    .line 209
    .line 210
    mul-float v40, v40, v41

    .line 211
    .line 212
    add-float v38, v38, v40

    .line 213
    .line 214
    const/16 v40, 0x11

    .line 215
    .line 216
    aget v41, v0, v40

    .line 217
    .line 218
    aget v42, v1, v14

    .line 219
    .line 220
    mul-float v41, v41, v42

    .line 221
    .line 222
    add-float v38, v38, v41

    .line 223
    .line 224
    const/16 v41, 0x12

    .line 225
    .line 226
    aget v42, v0, v41

    .line 227
    .line 228
    aget v1, v1, v15

    .line 229
    .line 230
    mul-float v42, v42, v1

    .line 231
    .line 232
    add-float v38, v38, v42

    .line 233
    .line 234
    aget v1, v0, v15

    .line 235
    .line 236
    add-float v38, v38, v1

    .line 237
    .line 238
    aput v3, v0, v2

    .line 239
    .line 240
    aput v5, v0, v4

    .line 241
    .line 242
    aput v7, v0, v6

    .line 243
    .line 244
    aput v9, v0, v8

    .line 245
    .line 246
    aput v10, v0, v11

    .line 247
    .line 248
    aput v12, v0, v19

    .line 249
    .line 250
    aput v16, v0, v21

    .line 251
    .line 252
    aput v17, v0, v22

    .line 253
    .line 254
    aput v18, v0, v23

    .line 255
    .line 256
    aput v20, v0, v13

    .line 257
    .line 258
    aput v24, v0, v28

    .line 259
    .line 260
    aput v25, v0, v30

    .line 261
    .line 262
    aput v26, v0, v31

    .line 263
    .line 264
    aput v27, v0, v32

    .line 265
    .line 266
    aput v29, v0, v14

    .line 267
    .line 268
    aput v33, v0, v37

    .line 269
    .line 270
    aput v34, v0, v39

    .line 271
    .line 272
    aput v35, v0, v40

    .line 273
    .line 274
    aput v36, v0, v41

    .line 275
    .line 276
    aput v38, v0, v15

    .line 277
    .line 278
    return-void
.end method

.method public static toString-impl([F)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ColorMatrix(values="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x29

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/ColorMatrix;->equals-impl([FLjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getValues()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorMatrix;->hashCode-impl([F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorMatrix;->toString-impl([F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()[F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    .line 2
    .line 3
    return-object v0
.end method
