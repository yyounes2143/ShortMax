.class public Lt0/t;
.super Lt0/a;
.source "StrokeContent.java"


# instance fields
.field private final q:Lcom/airbnb/lottie/model/layer/a;

.field private final r:Ljava/lang/String;

.field private final s:Z

.field private final t:Lu0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lu0/a;
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


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/ShapeStroke;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

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
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->e()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

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
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->g()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->i()Ly0/d;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->j()Ly0/b;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->f()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->d()Ly0/b;

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
    iput-object p2, p0, Lt0/t;->q:Lcom/airbnb/lottie/model/layer/a;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->h()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lt0/t;->r:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->k()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lt0/t;->s:Z

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->c()Ly0/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ly0/a;->a()Lu0/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lt0/t;->t:Lu0/a;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 71
    .line 72
    .line 73
    return-void
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
    sget-object v0, Lcom/airbnb/lottie/q0;->b:Ljava/lang/Integer;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lt0/t;->t:Lu0/a;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lu0/a;->o(Le1/c;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/q0;->N:Landroid/graphics/ColorFilter;

    .line 15
    .line 16
    if-ne p1, v0, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lt0/t;->u:Lu0/a;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lt0/t;->q:Lcom/airbnb/lottie/model/layer/a;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->I(Lu0/a;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    if-nez p2, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lt0/t;->u:Lu0/a;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Lu0/t;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lu0/t;-><init>(Le1/c;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lt0/t;->u:Lu0/a;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lt0/t;->q:Lcom/airbnb/lottie/model/layer/a;

    .line 44
    .line 45
    iget-object p2, p0, Lt0/t;->t:Lu0/a;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/t;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V
    .locals 2
    .param p4    # Lcom/airbnb/lottie/utils/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lt0/t;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lt0/a;->i:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget-object v1, p0, Lt0/t;->t:Lu0/a;

    .line 9
    .line 10
    check-cast v1, Lu0/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Lu0/b;->r()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lt0/t;->u:Lu0/a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lt0/a;->i:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v0}, Lu0/a;->h()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/graphics/ColorFilter;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lt0/a;->i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
