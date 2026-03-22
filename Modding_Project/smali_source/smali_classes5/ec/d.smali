.class public Lec/d;
.super Lec/b;
.source "OverScrollDecorator.java"


# instance fields
.field private c:F

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lec/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lec/b;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lec/c;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lec/d;->d:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lec/d;->e:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lec/d;->f:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lec/d;->g:Z

    .line 12
    .line 13
    new-instance p1, Lec/d$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lec/d$a;-><init>(Lec/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lec/d;->h:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic g(Lec/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lec/d;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lec/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lec/d;->d:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lec/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lec/d;->d:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lec/d;->d:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic j(Lec/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lec/d;->c:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lec/d;F)F
    .locals 0

    .line 1
    iput p1, p0, Lec/d;->c:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lec/d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lec/d;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    invoke-interface/range {v0 .. v6}, Lec/c;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lec/c;->b(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p1, v0}, Lfc/c;->h(Landroid/view/View;I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lec/d;->e:Z

    .line 25
    .line 26
    iget-object p1, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p1, v0}, Lfc/c;->g(Landroid/view/View;I)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lec/d;->f:Z

    .line 43
    .line 44
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lec/c;->c(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public d(Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, p0, Lec/d;->g:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p2, v1

    .line 15
    :goto_0
    invoke-interface {v0, p1, p2}, Lec/c;->d(Landroid/view/MotionEvent;Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-boolean v1, p0, Lec/d;->g:Z

    .line 19
    .line 20
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lec/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lec/c;->e(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public f(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lec/b;->a:Lec/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lec/c;->f(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->h()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sub-float/2addr p2, p1

    .line 26
    float-to-int p1, p2

    .line 27
    iget-object p2, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    neg-int p2, p2

    .line 34
    if-ge p1, p2, :cond_2

    .line 35
    .line 36
    iget-boolean p2, p0, Lec/d;->f:Z

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p2, p0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-le p1, p2, :cond_3

    .line 48
    .line 49
    iget-boolean p1, p0, Lec/d;->e:Z

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iput p4, p0, Lec/d;->c:F

    .line 55
    .line 56
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const p2, 0x453b8000    # 3000.0f

    .line 61
    .line 62
    .line 63
    cmpl-float p1, p1, p2

    .line 64
    .line 65
    if-ltz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lec/d;->h:Landroid/os/Handler;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lec/d;->g:Z

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lec/d;->c:F

    .line 79
    .line 80
    const/16 p1, 0x3c

    .line 81
    .line 82
    iput p1, p0, Lec/d;->d:I

    .line 83
    .line 84
    :goto_0
    return-void
.end method
