.class public Lcom/airbnb/lottie/model/layer/e;
.super Lcom/airbnb/lottie/model/layer/a;
.source "ShapeLayer.java"


# instance fields
.field private final E:Lt0/d;

.field private final F:Lcom/airbnb/lottie/model/layer/b;

.field private G:Lu0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/b;Lcom/airbnb/lottie/i;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/e;->F:Lcom/airbnb/lottie/model/layer/b;

    .line 5
    .line 6
    new-instance p3, Lz0/k;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->o()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "__container"

    .line 14
    .line 15
    invoke-direct {p3, v1, p2, v0}, Lz0/k;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lt0/d;

    .line 19
    .line 20
    invoke-direct {p2, p1, p0, p3, p4}, Lt0/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lz0/k;Lcom/airbnb/lottie/i;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lt0/d;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p2, p1, p3}, Lt0/d;->g(Ljava/util/List;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->z()Lc1/j;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    new-instance p1, Lu0/c;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->z()Lc1/j;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p0, p0, p2}, Lu0/c;-><init>(Lu0/a$b;Lcom/airbnb/lottie/model/layer/a;Lc1/j;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 52
    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method protected J(Lx0/d;ILjava/util/List;Lx0/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/d;",
            "I",
            "Ljava/util/List<",
            "Lx0/d;",
            ">;",
            "Lx0/d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lt0/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/d;->b(Lx0/d;ILjava/util/List;Lx0/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lt0/d;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0, p3}, Lt0/d;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(Ljava/lang/Object;Le1/c;)V
    .locals 1
    .param p2    # Le1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

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
    sget-object v0, Lcom/airbnb/lottie/q0;->e:Ljava/lang/Integer;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lu0/c;->b(Le1/c;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/q0;->J:Ljava/lang/Float;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lu0/c;->e(Le1/c;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/q0;->K:Ljava/lang/Float;

    .line 29
    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lu0/c;->c(Le1/c;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/q0;->L:Ljava/lang/Float;

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lu0/c;->d(Le1/c;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/q0;->M:Ljava/lang/Float;

    .line 53
    .line 54
    if-ne p1, v0, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lu0/c;->g(Le1/c;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/utils/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->G:Lu0/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p2, p3}, Lu0/c;->a(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/a;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lt0/d;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/d;->i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public x()Lz0/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->x()Lz0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->F:Lcom/airbnb/lottie/model/layer/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/a;->x()Lz0/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
