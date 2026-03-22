.class public Lt0/r;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lt0/m;
.implements Lu0/a$b;
.implements Lt0/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/airbnb/lottie/LottieDrawable;

.field private final e:Lu0/m;

.field private f:Z

.field private final g:Lt0/b;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lz0/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Lt0/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lt0/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lt0/r;->g:Lt0/b;

    .line 17
    .line 18
    invoke-virtual {p3}, Lz0/l;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lt0/r;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p3}, Lz0/l;->d()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lt0/r;->c:Z

    .line 29
    .line 30
    iput-object p1, p0, Lt0/r;->d:Lcom/airbnb/lottie/LottieDrawable;

    .line 31
    .line 32
    invoke-virtual {p3}, Lz0/l;->c()Ly0/h;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ly0/h;->d()Lu0/m;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lt0/r;->e:Lu0/m;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Lu0/a;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lu0/a;->a(Lu0/a$b;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lt0/r;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lt0/r;->d:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public b(Lx0/d;ILjava/util/List;Lx0/d;)V
    .locals 0
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
    invoke-static {p1, p2, p3, p4, p0}, Ld1/k;->k(Lx0/d;ILjava/util/List;Lx0/d;Lt0/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

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
    sget-object v0, Lcom/airbnb/lottie/q0;->S:Landroid/graphics/Path;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lt0/r;->e:Lu0/m;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lu0/a;->o(Le1/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt0/r;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt0/c;",
            ">;",
            "Ljava/util/List<",
            "Lt0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_3

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lt0/c;

    .line 14
    .line 15
    instance-of v2, v1, Lt0/u;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lt0/u;

    .line 21
    .line 22
    invoke-virtual {v2}, Lt0/u;->k()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lt0/r;->g:Lt0/b;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lt0/b;->a(Lt0/u;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p0}, Lt0/u;->b(Lu0/a$b;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    instance-of v2, v1, Lt0/s;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    new-instance p2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    :cond_1
    check-cast v1, Lt0/s;

    .line 51
    .line 52
    invoke-interface {v1, p0}, Lt0/s;->a(Lu0/a$b;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object p1, p0, Lt0/r;->e:Lu0/m;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lu0/m;->s(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt0/r;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt0/r;->e:Lu0/m;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu0/a;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lt0/r;->c:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lt0/r;->f:Z

    .line 27
    .line 28
    iget-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    iget-object v0, p0, Lt0/r;->e:Lu0/m;

    .line 32
    .line 33
    invoke-virtual {v0}, Lu0/a;->h()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/graphics/Path;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    iget-object v2, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 50
    .line 51
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lt0/r;->g:Lt0/b;

    .line 57
    .line 58
    iget-object v2, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lt0/b;->b(Landroid/graphics/Path;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v1, p0, Lt0/r;->f:Z

    .line 64
    .line 65
    iget-object v0, p0, Lt0/r;->a:Landroid/graphics/Path;

    .line 66
    .line 67
    return-object v0
.end method
