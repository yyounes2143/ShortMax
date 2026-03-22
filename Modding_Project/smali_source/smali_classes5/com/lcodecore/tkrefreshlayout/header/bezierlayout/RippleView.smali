.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;
.super Landroid/view/View;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

.field d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public d()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-double v1, v1

    .line 14
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    int-to-double v5, v5

    .line 25
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    add-double/2addr v1, v3

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    double-to-int v1, v1

    .line 35
    div-int/lit8 v2, v1, 0x2

    .line 36
    .line 37
    filled-new-array {v0, v2}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    int-to-long v1, v1

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public getR()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

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
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    div-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setR(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setRippleEndListener(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    .line 2
    .line 3
    return-void
.end method
