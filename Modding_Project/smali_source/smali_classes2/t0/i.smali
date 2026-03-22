.class public Lt0/i;
.super Lt0/a;
.source "GradientStrokeContent.java"


# instance fields
.field private A:Lu0/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Ljava/lang/String;

.field private final r:Z

.field private final s:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Landroid/graphics/RectF;

.field private final v:Lcom/airbnb/lottie/model/content/GradientType;

.field private final w:I

.field private final x:Lu0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a<",
            "Lz0/d;",
            "Lz0/d;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lu0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lu0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->i()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->k()Ly0/d;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->m()Ly0/b;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->h()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->c()Ly0/b;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, Lt0/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLy0/d;Ly0/b;Ljava/util/List;Ly0/b;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 44
    .line 45
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lt0/i;->s:Landroidx/collection/LongSparseArray;

    .line 49
    .line 50
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 51
    .line 52
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lt0/i;->t:Landroidx/collection/LongSparseArray;

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lt0/i;->u:Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->j()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lt0/i;->q:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->f()Lcom/airbnb/lottie/model/content/GradientType;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lt0/i;->v:Lcom/airbnb/lottie/model/content/GradientType;

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->n()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lt0/i;->r:Z

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->K()Lcom/airbnb/lottie/i;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/airbnb/lottie/i;->d()F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/high16 v0, 0x42000000    # 32.0f

    .line 91
    .line 92
    div-float/2addr p1, v0

    .line 93
    float-to-int p1, p1

    .line 94
    iput p1, p0, Lt0/i;->w:I

    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->e()Ly0/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ly0/c;->a()Lu0/a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lt0/i;->x:Lu0/a;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->l()Ly0/f;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ly0/f;->a()Lu0/a;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lt0/i;->y:Lu0/a;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->d()Ly0/f;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ly0/f;->a()Lu0/a;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lt0/i;->z:Lu0/a;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private k([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lt0/i;->A:Lu0/t;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lu0/t;->h()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Ljava/lang/Integer;

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    :goto_0
    array-length v1, p1

    .line 17
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    aget-object v1, v0, v3

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    aput v1, p1, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length p1, v0

    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    :goto_1
    array-length v1, v0

    .line 34
    if-ge v3, v1, :cond_1

    .line 35
    .line 36
    aget-object v1, v0, v3

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aput v1, p1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object p1
.end method

.method private l()I
    .locals 4

    .line 1
    iget-object v0, p0, Lt0/i;->y:Lu0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu0/a;->f()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lt0/i;->w:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lt0/i;->z:Lu0/a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lu0/a;->f()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lt0/i;->w:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lt0/i;->x:Lu0/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Lu0/a;->f()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v3, p0, Lt0/i;->w:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    mul-float/2addr v2, v3

    .line 39
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/16 v3, 0x20f

    .line 46
    .line 47
    mul-int/2addr v3, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 v3, 0x11

    .line 50
    .line 51
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    mul-int/lit8 v3, v3, 0x1f

    .line 54
    .line 55
    mul-int/2addr v3, v1

    .line 56
    :cond_1
    if-eqz v2, :cond_2

    .line 57
    .line 58
    mul-int/lit8 v3, v3, 0x1f

    .line 59
    .line 60
    mul-int/2addr v3, v2

    .line 61
    :cond_2
    return v3
.end method

.method private m()Landroid/graphics/LinearGradient;
    .locals 14

    .line 1
    invoke-direct {p0}, Lt0/i;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lt0/i;->s:Landroidx/collection/LongSparseArray;

    .line 6
    .line 7
    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/LinearGradient;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lt0/i;->y:Lu0/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lu0/a;->h()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget-object v1, p0, Lt0/i;->z:Lu0/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lu0/a;->h()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget-object v4, p0, Lt0/i;->x:Lu0/a;

    .line 34
    .line 35
    invoke-virtual {v4}, Lu0/a;->h()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lz0/d;

    .line 40
    .line 41
    invoke-virtual {v4}, Lz0/d;->d()[I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {p0, v5}, Lt0/i;->k([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-virtual {v4}, Lz0/d;->e()[F

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 54
    .line 55
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 62
    .line 63
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 64
    .line 65
    move-object v6, v0

    .line 66
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lt0/i;->s:Landroidx/collection/LongSparseArray;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method private n()Landroid/graphics/RadialGradient;
    .locals 13

    .line 1
    invoke-direct {p0}, Lt0/i;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lt0/i;->t:Landroidx/collection/LongSparseArray;

    .line 6
    .line 7
    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/RadialGradient;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lt0/i;->y:Lu0/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lu0/a;->h()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget-object v1, p0, Lt0/i;->z:Lu0/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lu0/a;->h()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget-object v4, p0, Lt0/i;->x:Lu0/a;

    .line 34
    .line 35
    invoke-virtual {v4}, Lu0/a;->h()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lz0/d;

    .line 40
    .line 41
    invoke-virtual {v4}, Lz0/d;->d()[I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {p0, v5}, Lt0/i;->k([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v4}, Lz0/d;->e()[F

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 54
    .line 55
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    sub-float/2addr v0, v7

    .line 62
    float-to-double v4, v0

    .line 63
    sub-float/2addr v1, v8

    .line 64
    float-to-double v0, v1

    .line 65
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    double-to-float v9, v0

    .line 70
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 71
    .line 72
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 73
    .line 74
    move-object v6, v0

    .line 75
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lt0/i;->t:Landroidx/collection/LongSparseArray;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/Object;Le1/c;)V
    .locals 1
    .param p2    # Le1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le1/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lt0/a;->e(Ljava/lang/Object;Le1/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/q0;->O:[Ljava/lang/Integer;

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lt0/i;->A:Lu0/t;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lt0/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->I(Lu0/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lt0/i;->A:Lu0/t;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Lu0/t;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lu0/t;-><init>(Le1/c;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lt0/i;->A:Lu0/t;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lt0/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 34
    .line 35
    iget-object p2, p0, Lt0/i;->A:Lu0/t;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/i;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lt0/i;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lt0/i;->u:Landroid/graphics/RectF;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p2, v1}, Lt0/a;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lt0/i;->v:Lcom/airbnb/lottie/model/content/GradientType;

    .line 13
    .line 14
    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lt0/i;->m()Landroid/graphics/LinearGradient;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0}, Lt0/i;->n()Landroid/graphics/RadialGradient;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    iget-object v1, p0, Lt0/a;->i:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lt0/a;->i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
