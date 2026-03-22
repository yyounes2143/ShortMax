.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;
.super Landroid/widget/FrameLayout;
.source "BezierLayout.java"

# interfaces
.implements Lcc/b;


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

.field c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

.field d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

.field e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Lcc/i;->a:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    .line 17
    .line 18
    sget v0, Lcc/h;->a:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    .line 29
    .line 30
    sget v0, Lcc/h;->e:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    .line 41
    .line 42
    sget v0, Lcc/h;->f:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    .line 53
    .line 54
    sget v0, Lcc/h;->g:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 63
    .line 64
    const/16 v0, 0x8

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 2
    .line 3
    float-to-int p2, p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getWaveHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v4, -0x64

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/16 v2, -0x12c

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    filled-new-array/range {v0 .. v5}, [I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$a;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 41
    .line 42
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    const-wide/16 v0, 0x320

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x2

    .line 61
    new-array p1, p1, [F

    .line 62
    .line 63
    fill-array-data p1, :array_0

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 93
    .line 94
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    const-wide/16 v0, 0x12c

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(FFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f(FF)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    mul-float/2addr p3, v2

    .line 10
    float-to-int p3, p3

    .line 11
    invoke-virtual {v0, p3}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sub-float v2, p1, v1

    .line 18
    .line 19
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    mul-float/2addr p2, v0

    .line 24
    float-to-int p2, p2

    .line 25
    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 34
    .line 35
    const/high16 p3, 0x41f00000    # 30.0f

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f(FF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    mul-float/2addr p1, p3

    .line 42
    float-to-int p1, p1

    .line 43
    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public c(Lcc/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 26
    .line 27
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$d;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$d;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;Lcc/c;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setRippleEndListener(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public d(FFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-virtual {p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f(FF)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    mul-float/2addr p3, v3

    .line 25
    float-to-int p3, p3

    .line 26
    invoke-virtual {v0, p3}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 27
    .line 28
    .line 29
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    sub-float v3, p1, v2

    .line 33
    .line 34
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    mul-float/2addr p2, v0

    .line 39
    float-to-int p2, p2

    .line 40
    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 49
    .line 50
    const/high16 p3, 0x41f00000    # 30.0f

    .line 51
    .line 52
    invoke-virtual {p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f(FF)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    mul-float/2addr p1, p3

    .line 57
    float-to-int p1, p1

    .line 58
    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const p2, 0x3dcccccd    # 0.1f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public f(FF)F
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x0

    .line 10
    cmpl-float v1, p2, v0

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    move v0, p2

    .line 15
    :cond_0
    cmpg-float p2, v0, p1

    .line 16
    .line 17
    if-gez p2, :cond_1

    .line 18
    .line 19
    move p1, v0

    .line 20
    :cond_1
    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->e()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setRippleColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWaveColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
