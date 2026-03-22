.class public Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;
.super Landroid/view/View;
.source "BallPulseView.java"

# interfaces
.implements Lcc/a;


# instance fields
.field private a:F

.field private b:[F

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    .line 4
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->b:[F

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d:Ljava/util/Map;

    const p2, -0x111112

    .line 6
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f:I

    const p2, -0x18a6ba

    .line 7
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 8
    invoke-static {p1, p2}, Lfc/a;->a(Landroid/content/Context;F)I

    move-result p2

    .line 9
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 11
    invoke-static {p1, p2}, Lfc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->b:[F

    .line 2
    .line 3
    return-object p0
.end method

.method private e()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v1, 0xf0

    .line 10
    .line 11
    const/16 v2, 0x168

    .line 12
    .line 13
    const/16 v3, 0x78

    .line 14
    .line 15
    filled-new-array {v3, v1, v2}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    .line 22
    new-array v3, v0, [F

    .line 23
    .line 24
    fill-array-data v3, :array_0

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-wide/16 v4, 0x2ee

    .line 32
    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 38
    .line 39
    .line 40
    aget v4, v1, v2

    .line 41
    .line 42
    int-to-long v4, v4

    .line 43
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d:Ljava/util/Map;

    .line 47
    .line 48
    new-instance v5, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;

    .line 49
    .line 50
    invoke-direct {v5, p0, v2}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(FFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(FFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_4

    .line 28
    .line 29
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setIndicatorColor(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f:I

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setIndicatorColor(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    .line 15
    .line 16
    const/high16 v2, 0x40000000    # 2.0f

    .line 17
    .line 18
    mul-float/2addr v1, v2

    .line 19
    sub-float/2addr v0, v1

    .line 20
    const/high16 v1, 0x40c00000    # 6.0f

    .line 21
    .line 22
    div-float/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    mul-float/2addr v2, v0

    .line 31
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    .line 32
    .line 33
    add-float/2addr v3, v2

    .line 34
    sub-float/2addr v1, v3

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    div-int/lit8 v3, v3, 0x2

    .line 40
    .line 41
    int-to-float v3, v3

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_0
    const/4 v5, 0x3

    .line 44
    if-ge v4, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    .line 48
    .line 49
    int-to-float v5, v4

    .line 50
    mul-float v6, v2, v5

    .line 51
    .line 52
    add-float/2addr v6, v1

    .line 53
    iget v7, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    .line 54
    .line 55
    mul-float/2addr v7, v5

    .line 56
    add-float/2addr v6, v7

    .line 57
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->b:[F

    .line 61
    .line 62
    aget v5, v5, v4

    .line 63
    .line 64
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p1, v6, v6, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAnimatingColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f:I

    .line 2
    .line 3
    return-void
.end method
