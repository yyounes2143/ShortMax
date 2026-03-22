.class public final Landroidx/compose/ui/graphics/colorspace/Lab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Lab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Lab$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final D:F = 0.20689656f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Lab;->Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getLab-xdoWZVw()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move v5, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 16
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    .line 10
    .line 11
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    aget v4, v4, v1

    .line 18
    .line 19
    div-float/2addr v2, v4

    .line 20
    const/4 v4, 0x1

    .line 21
    aget v5, v0, v4

    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    aget v6, v6, v4

    .line 28
    .line 29
    div-float/2addr v5, v6

    .line 30
    const/4 v6, 0x2

    .line 31
    aget v7, v0, v6

    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aget v3, v3, v6

    .line 38
    .line 39
    div-float/2addr v7, v3

    .line 40
    const v3, 0x3c111aa7

    .line 41
    .line 42
    .line 43
    cmpl-float v8, v2, v3

    .line 44
    .line 45
    const v9, 0x3e0d3dcb

    .line 46
    .line 47
    .line 48
    const v10, 0x40f92f68

    .line 49
    .line 50
    .line 51
    const v11, 0x3eaaaaab

    .line 52
    .line 53
    .line 54
    if-lez v8, :cond_0

    .line 55
    .line 56
    float-to-double v12, v2

    .line 57
    float-to-double v14, v11

    .line 58
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 59
    .line 60
    .line 61
    move-result-wide v12

    .line 62
    double-to-float v2, v12

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    mul-float/2addr v2, v10

    .line 65
    add-float/2addr v2, v9

    .line 66
    :goto_0
    cmpl-float v8, v5, v3

    .line 67
    .line 68
    if-lez v8, :cond_1

    .line 69
    .line 70
    float-to-double v12, v5

    .line 71
    float-to-double v14, v11

    .line 72
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v12

    .line 76
    double-to-float v5, v12

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    mul-float/2addr v5, v10

    .line 79
    add-float/2addr v5, v9

    .line 80
    :goto_1
    cmpl-float v3, v7, v3

    .line 81
    .line 82
    if-lez v3, :cond_2

    .line 83
    .line 84
    float-to-double v7, v7

    .line 85
    float-to-double v9, v11

    .line 86
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    double-to-float v3, v7

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    mul-float/2addr v7, v10

    .line 93
    add-float v3, v7, v9

    .line 94
    .line 95
    :goto_2
    const/high16 v7, 0x42e80000    # 116.0f

    .line 96
    .line 97
    mul-float/2addr v7, v5

    .line 98
    const/high16 v8, 0x41800000    # 16.0f

    .line 99
    .line 100
    sub-float/2addr v7, v8

    .line 101
    const/high16 v8, 0x43fa0000    # 500.0f

    .line 102
    .line 103
    sub-float/2addr v2, v5

    .line 104
    mul-float/2addr v2, v8

    .line 105
    const/high16 v8, 0x43480000    # 200.0f

    .line 106
    .line 107
    sub-float/2addr v5, v3

    .line 108
    mul-float/2addr v5, v8

    .line 109
    const/4 v3, 0x0

    .line 110
    const/high16 v8, 0x42c80000    # 100.0f

    .line 111
    .line 112
    invoke-static {v7, v3, v8}, Lkotlin/ranges/e;->m(FFF)F

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    aput v3, v0, v1

    .line 117
    .line 118
    const/high16 v1, -0x3d000000    # -128.0f

    .line 119
    .line 120
    const/high16 v3, 0x43000000    # 128.0f

    .line 121
    .line 122
    invoke-static {v2, v1, v3}, Lkotlin/ranges/e;->m(FFF)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    aput v2, v0, v4

    .line 127
    .line 128
    invoke-static {v5, v1, v3}, Lkotlin/ranges/e;->m(FFF)F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    aput v1, v0, v6

    .line 133
    .line 134
    return-object v0
.end method

.method public getMaxValue(I)F
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x42c80000    # 100.0f

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/high16 p1, 0x43000000    # 128.0f

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/high16 p1, -0x3d000000    # -128.0f

    .line 6
    .line 7
    :goto_0
    return p1
.end method

.method public isWideGamut()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public toXyz([F)[F
    .locals 10
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/high16 v3, 0x42c80000    # 100.0f

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Lkotlin/ranges/e;->m(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    aput v1, p1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aget v2, p1, v1

    .line 20
    .line 21
    const/high16 v3, -0x3d000000    # -128.0f

    .line 22
    .line 23
    const/high16 v4, 0x43000000    # 128.0f

    .line 24
    .line 25
    invoke-static {v2, v3, v4}, Lkotlin/ranges/e;->m(FFF)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aput v2, p1, v1

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    aget v5, p1, v2

    .line 33
    .line 34
    invoke-static {v5, v3, v4}, Lkotlin/ranges/e;->m(FFF)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    aput v3, p1, v2

    .line 39
    .line 40
    aget v4, p1, v0

    .line 41
    .line 42
    const/high16 v5, 0x41800000    # 16.0f

    .line 43
    .line 44
    add-float/2addr v4, v5

    .line 45
    const/high16 v5, 0x42e80000    # 116.0f

    .line 46
    .line 47
    div-float/2addr v4, v5

    .line 48
    aget v5, p1, v1

    .line 49
    .line 50
    const v6, 0x3b03126f    # 0.002f

    .line 51
    .line 52
    .line 53
    mul-float/2addr v5, v6

    .line 54
    add-float/2addr v5, v4

    .line 55
    const v6, 0x3ba3d70a    # 0.005f

    .line 56
    .line 57
    .line 58
    mul-float/2addr v3, v6

    .line 59
    sub-float v3, v4, v3

    .line 60
    .line 61
    const v6, 0x3e53dcb1

    .line 62
    .line 63
    .line 64
    cmpl-float v7, v5, v6

    .line 65
    .line 66
    const v8, 0x3e0d3dcb

    .line 67
    .line 68
    .line 69
    const v9, 0x3e038027

    .line 70
    .line 71
    .line 72
    if-lez v7, :cond_0

    .line 73
    .line 74
    mul-float v7, v5, v5

    .line 75
    .line 76
    mul-float/2addr v7, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sub-float/2addr v5, v8

    .line 79
    mul-float v7, v5, v9

    .line 80
    .line 81
    :goto_0
    cmpl-float v5, v4, v6

    .line 82
    .line 83
    if-lez v5, :cond_1

    .line 84
    .line 85
    mul-float v5, v4, v4

    .line 86
    .line 87
    mul-float/2addr v5, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sub-float/2addr v4, v8

    .line 90
    mul-float v5, v4, v9

    .line 91
    .line 92
    :goto_1
    cmpl-float v4, v3, v6

    .line 93
    .line 94
    if-lez v4, :cond_2

    .line 95
    .line 96
    mul-float v4, v3, v3

    .line 97
    .line 98
    mul-float/2addr v4, v3

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    sub-float/2addr v3, v8

    .line 101
    mul-float v4, v3, v9

    .line 102
    .line 103
    :goto_2
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    aget v6, v6, v0

    .line 110
    .line 111
    mul-float/2addr v7, v6

    .line 112
    aput v7, p1, v0

    .line 113
    .line 114
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    aget v0, v0, v1

    .line 119
    .line 120
    mul-float/2addr v5, v0

    .line 121
    aput v5, p1, v1

    .line 122
    .line 123
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    aget v0, v0, v2

    .line 128
    .line 129
    mul-float/2addr v4, v0

    .line 130
    aput v4, p1, v2

    .line 131
    .line 132
    return-object p1
.end method
