.class public abstract Lu0/a;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/a$d;,
        Lu0/a$b;,
        Lu0/a$c;,
        Lu0/a$f;,
        Lu0/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Lu0/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/a$d<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected d:F

.field protected e:Le1/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/c<",
            "TA;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private g:F

.field private h:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le1/a<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu0/a;->a:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lu0/a;->b:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lu0/a;->d:F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lu0/a;->f:Ljava/lang/Object;

    .line 20
    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    .line 23
    iput v0, p0, Lu0/a;->g:F

    .line 24
    .line 25
    iput v0, p0, Lu0/a;->h:F

    .line 26
    .line 27
    invoke-static {p1}, Lu0/a;->q(Ljava/util/List;)Lu0/a$d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lu0/a;->c:Lu0/a$d;

    .line 32
    .line 33
    return-void
.end method

.method private g()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget v0, p0, Lu0/a;->g:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lu0/a;->c:Lu0/a$d;

    .line 10
    .line 11
    invoke-interface {v0}, Lu0/a$d;->b()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lu0/a;->g:F

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lu0/a;->g:F

    .line 18
    .line 19
    return v0
.end method

.method private static q(Ljava/util/List;)Lu0/a$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Le1/a<",
            "TT;>;>;)",
            "Lu0/a$d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lu0/a$c;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lu0/a$c;-><init>(Lu0/a$a;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    new-instance v0, Lu0/a$f;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lu0/a$f;-><init>(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Lu0/a$e;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lu0/a$e;-><init>(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public a(Lu0/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/a;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Le1/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le1/a<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "BaseKeyframeAnimation#getCurrentKeyframe"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lu0/a;->c:Lu0/a$d;

    .line 13
    .line 14
    invoke-interface {v0}, Lu0/a$d;->a()Le1/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0
.end method

.method c()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget v0, p0, Lu0/a;->h:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lu0/a;->c:Lu0/a$d;

    .line 10
    .line 11
    invoke-interface {v0}, Lu0/a$d;->e()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lu0/a;->h:F

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lu0/a;->h:F

    .line 18
    .line 19
    return v0
.end method

.method protected d()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu0/a;->b()Le1/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Le1/a;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Le1/a;->d:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lu0/a;->e()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method e()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu0/a;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lu0/a;->b()Le1/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Le1/a;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget v1, p0, Lu0/a;->d:F

    .line 19
    .line 20
    invoke-virtual {v0}, Le1/a;->f()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-float/2addr v1, v2

    .line 25
    invoke-virtual {v0}, Le1/a;->c()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0}, Le1/a;->f()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-float/2addr v2, v0

    .line 34
    div-float/2addr v1, v2

    .line 35
    return v1
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lu0/a;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu0/a;->e()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lu0/a;->e:Le1/c;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lu0/a;->c:Lu0/a$d;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lu0/a$d;->c(F)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lu0/a;->p()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lu0/a;->f:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lu0/a;->b()Le1/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, v1, Le1/a;->e:Landroid/view/animation/Interpolator;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v3, v1, Le1/a;->f:Landroid/view/animation/Interpolator;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, v1, Le1/a;->f:Landroid/view/animation/Interpolator;

    .line 43
    .line 44
    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {p0, v1, v0, v2, v3}, Lu0/a;->j(Le1/a;FFF)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lu0/a;->d()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v1, v0}, Lu0/a;->i(Le1/a;F)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    iput-object v0, p0, Lu0/a;->f:Ljava/lang/Object;

    .line 62
    .line 63
    return-object v0
.end method

.method abstract i(Le1/a;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/a<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method protected j(Le1/a;FFF)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/a<",
            "TK;>;FFF)TA;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "This animation does not support split dimensions!"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/a;->e:Le1/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public l()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "BaseKeyframeAnimation#notifyListeners"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lu0/a;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lu0/a;->a:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lu0/a$b;

    .line 28
    .line 29
    invoke-interface {v2}, Lu0/a$b;->f()V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu0/a;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public n(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "BaseKeyframeAnimation#setProgress"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lu0/a;->c:Lu0/a$d;

    .line 13
    .line 14
    invoke-interface {v0}, Lu0/a$d;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :cond_2
    invoke-direct {p0}, Lu0/a;->g()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    cmpg-float v0, p1, v0

    .line 35
    .line 36
    if-gez v0, :cond_3

    .line 37
    .line 38
    invoke-direct {p0}, Lu0/a;->g()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0}, Lu0/a;->c()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    cmpl-float v0, p1, v0

    .line 48
    .line 49
    if-lez v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lu0/a;->c()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_4
    :goto_0
    iget v0, p0, Lu0/a;->d:F

    .line 56
    .line 57
    cmpl-float v0, p1, v0

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 68
    .line 69
    .line 70
    :cond_5
    return-void

    .line 71
    :cond_6
    iput p1, p0, Lu0/a;->d:F

    .line 72
    .line 73
    iget-object v0, p0, Lu0/a;->c:Lu0/a$d;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Lu0/a$d;->d(F)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_7

    .line 80
    .line 81
    invoke-virtual {p0}, Lu0/a;->l()V

    .line 82
    .line 83
    .line 84
    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/d;->h()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_8

    .line 89
    .line 90
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    :cond_8
    return-void
.end method

.method public o(Le1/c;)V
    .locals 2
    .param p1    # Le1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/c<",
            "TA;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu0/a;->e:Le1/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Le1/c;->c(Lu0/a;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lu0/a;->e:Le1/c;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Le1/c;->c(Lu0/a;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method protected p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
