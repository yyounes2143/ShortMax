.class public final Liq/c;
.super Liq/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Lrq/k;)V
    .locals 1
    .param p1    # Lrq/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "algorithmParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Liq/a;-><init>(Lrq/k;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final h(Landroid/graphics/Bitmap;)F
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    mul-int/2addr v2, v3

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-array v3, v3, [I

    .line 32
    .line 33
    invoke-virtual {v1}, Lkotlin/ranges/d;->c()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v1}, Lkotlin/ranges/d;->d()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v12, 0x0

    .line 42
    if-gt v4, v1, :cond_2

    .line 43
    .line 44
    move v13, v4

    .line 45
    move v14, v12

    .line 46
    move v15, v14

    .line 47
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v11, 0x1

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object/from16 v4, p1

    .line 59
    .line 60
    move-object v5, v3

    .line 61
    move v9, v13

    .line 62
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lkotlin/ranges/d;->c()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v0}, Lkotlin/ranges/d;->d()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-gt v4, v5, :cond_0

    .line 74
    .line 75
    :goto_1
    aget v6, v3, v4

    .line 76
    .line 77
    move-object/from16 v7, p0

    .line 78
    .line 79
    invoke-virtual {v7, v6}, Liq/a;->a(I)F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    add-float/2addr v14, v6

    .line 84
    mul-float/2addr v6, v6

    .line 85
    add-float/2addr v15, v6

    .line 86
    if-eq v4, v5, :cond_1

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_0
    move-object/from16 v7, p0

    .line 92
    .line 93
    :cond_1
    if-eq v13, v1, :cond_3

    .line 94
    .line 95
    add-int/lit8 v13, v13, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move-object/from16 v7, p0

    .line 99
    .line 100
    move v14, v12

    .line 101
    move v15, v14

    .line 102
    :cond_3
    int-to-float v0, v2

    .line 103
    div-float/2addr v14, v0

    .line 104
    div-float/2addr v15, v0

    .line 105
    mul-float/2addr v14, v14

    .line 106
    sub-float/2addr v15, v14

    .line 107
    cmpg-float v0, v15, v12

    .line 108
    .line 109
    if-gez v0, :cond_4

    .line 110
    .line 111
    return v12

    .line 112
    :cond_4
    float-to-double v0, v15

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    double-to-float v0, v0

    .line 118
    return v0
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Liq/c;->h(Landroid/graphics/Bitmap;)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Liq/a;->d()Lrq/k;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lrq/k;->a()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    cmpg-float v0, p1, v0

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, p1, v1}, Liq/a;->e(Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method
