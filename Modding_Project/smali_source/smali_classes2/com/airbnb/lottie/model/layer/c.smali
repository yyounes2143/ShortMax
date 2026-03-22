.class public Lcom/airbnb/lottie/model/layer/c;
.super Lcom/airbnb/lottie/model/layer/a;
.source "ImageLayer.java"


# instance fields
.field private final E:Landroid/graphics/Paint;

.field private final F:Landroid/graphics/Rect;

.field private final G:Landroid/graphics/Rect;

.field private final H:Landroid/graphics/RectF;

.field private final I:Lcom/airbnb/lottie/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J:Lu0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lu0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lu0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M:Lcom/airbnb/lottie/utils/OffscreenLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private N:Lcom/airbnb/lottie/utils/OffscreenLayer$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls0/a;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ls0/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->H:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->Q(Ljava/lang/String;)Lcom/airbnb/lottie/m0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->z()Lc1/j;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance p1, Lu0/c;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->z()Lc1/j;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p0, p0, p2}, Lu0/c;-><init>(Lu0/a$b;Lcom/airbnb/lottie/model/layer/a;Lc1/j;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method private Q()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->K:Lu0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lu0/a;->h()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->H(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/m0;->b()Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method


# virtual methods
.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-static {}, Ld1/p;->e()F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieDrawable;->R()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/airbnb/lottie/m0;->f()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    int-to-float p3, p3

    .line 28
    mul-float/2addr p3, p2

    .line 29
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/airbnb/lottie/m0;->d()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    mul-float/2addr v1, p2

    .line 37
    invoke-virtual {p1, v0, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/c;->Q()Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    int-to-float v1, v1

    .line 52
    mul-float/2addr v1, p2

    .line 53
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    int-to-float p3, p3

    .line 58
    mul-float/2addr p3, p2

    .line 59
    invoke-virtual {p1, v0, v0, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/airbnb/lottie/m0;->f()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    int-to-float p3, p3

    .line 70
    mul-float/2addr p3, p2

    .line 71
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/airbnb/lottie/m0;->d()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    int-to-float v1, v1

    .line 78
    mul-float/2addr v1, p2

    .line 79
    invoke-virtual {p1, v0, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public e(Ljava/lang/Object;Le1/c;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->e(Ljava/lang/Object;Le1/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/q0;->N:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->J:Lu0/a;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lu0/t;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Lu0/t;-><init>(Le1/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->J:Lu0/a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/q0;->Q:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->K:Lu0/a;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Lu0/t;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lu0/t;-><init>(Le1/c;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->K:Lu0/a;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/q0;->e:Ljava/lang/Integer;

    .line 40
    .line 41
    if-ne p1, v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lu0/c;->b(Le1/c;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/q0;->J:Ljava/lang/Float;

    .line 52
    .line 53
    if-ne p1, v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Lu0/c;->e(Le1/c;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/q0;->K:Ljava/lang/Float;

    .line 64
    .line 65
    if-ne p1, v0, :cond_6

    .line 66
    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Lu0/c;->c(Le1/c;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/q0;->L:Ljava/lang/Float;

    .line 76
    .line 77
    if-ne p1, v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lu0/c;->d(Le1/c;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/q0;->M:Ljava/lang/Float;

    .line 88
    .line 89
    if-ne p1, v0, :cond_8

    .line 90
    .line 91
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 92
    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lu0/c;->g(Le1/c;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    :goto_0
    return-void
.end method

.method public u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/utils/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/c;->Q()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_9

    .line 12
    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Ld1/p;->e()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->J:Lu0/a;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v2}, Lu0/a;->h()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->L:Lu0/c;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, p2, p3}, Lu0/c;->a(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/a;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->R()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/airbnb/lottie/m0;->f()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    int-to-float v3, v3

    .line 82
    mul-float/2addr v3, v1

    .line 83
    float-to-int v3, v3

    .line 84
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lcom/airbnb/lottie/m0;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/airbnb/lottie/m0;->d()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    int-to-float v4, v4

    .line 91
    mul-float/2addr v4, v1

    .line 92
    float-to-int v1, v4

    .line 93
    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    int-to-float v3, v3

    .line 104
    mul-float/2addr v3, v1

    .line 105
    float-to-int v3, v3

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    int-to-float v4, v4

    .line 111
    mul-float/2addr v4, v1

    .line 112
    float-to-int v1, v4

    .line 113
    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    .line 115
    .line 116
    :goto_0
    if-eqz p4, :cond_4

    .line 117
    .line 118
    const/4 v5, 0x1

    .line 119
    :cond_4
    if-eqz v5, :cond_7

    .line 120
    .line 121
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->M:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    new-instance v1, Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 126
    .line 127
    invoke-direct {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->M:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 131
    .line 132
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->N:Lcom/airbnb/lottie/utils/OffscreenLayer$b;

    .line 133
    .line 134
    if-nez v1, :cond_6

    .line 135
    .line 136
    new-instance v1, Lcom/airbnb/lottie/utils/OffscreenLayer$b;

    .line 137
    .line 138
    invoke-direct {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$b;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->N:Lcom/airbnb/lottie/utils/OffscreenLayer$b;

    .line 142
    .line 143
    :cond_6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->N:Lcom/airbnb/lottie/utils/OffscreenLayer$b;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$b;->f()V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->N:Lcom/airbnb/lottie/utils/OffscreenLayer$b;

    .line 149
    .line 150
    invoke-virtual {p4, p3, v1}, Lcom/airbnb/lottie/utils/a;->d(ILcom/airbnb/lottie/utils/OffscreenLayer$b;)V

    .line 151
    .line 152
    .line 153
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->H:Landroid/graphics/RectF;

    .line 154
    .line 155
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 156
    .line 157
    iget v1, p4, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    int-to-float v1, v1

    .line 160
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 161
    .line 162
    int-to-float v2, v2

    .line 163
    iget v3, p4, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    int-to-float v3, v3

    .line 166
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 167
    .line 168
    int-to-float p4, p4

    .line 169
    invoke-virtual {p3, v1, v2, v3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    .line 171
    .line 172
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->H:Landroid/graphics/RectF;

    .line 173
    .line 174
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 175
    .line 176
    .line 177
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->M:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 178
    .line 179
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/c;->H:Landroid/graphics/RectF;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->N:Lcom/airbnb/lottie/utils/OffscreenLayer$b;

    .line 182
    .line 183
    invoke-virtual {p3, p1, p4, v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->j(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/OffscreenLayer$b;)Landroid/graphics/Canvas;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    .line 194
    .line 195
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 196
    .line 197
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 198
    .line 199
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 200
    .line 201
    .line 202
    if-eqz v5, :cond_8

    .line 203
    .line 204
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->M:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/OffscreenLayer;->e()V

    .line 207
    .line 208
    .line 209
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->M:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/OffscreenLayer;->f()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_8

    .line 216
    .line 217
    return-void

    .line 218
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    .line 220
    .line 221
    :cond_9
    :goto_1
    return-void
.end method
