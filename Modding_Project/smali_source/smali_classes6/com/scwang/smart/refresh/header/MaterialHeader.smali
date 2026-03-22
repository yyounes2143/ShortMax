.class public Lcom/scwang/smart/refresh/header/MaterialHeader;
.super Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;
.source "MaterialHeader.java"

# interfaces
.implements Lsc/d;


# instance fields
.field protected d:Z

.field protected e:I

.field protected f:Landroid/widget/ImageView;

.field protected g:Lsc/e;

.field protected h:Lrc/a;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Landroid/graphics/Path;

.field protected m:Landroid/graphics/Paint;

.field protected n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field protected o:Z

.field protected p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smart/refresh/header/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->p:Z

    .line 5
    sget-object v2, Ltc/b;->h:Ltc/b;

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->b:Ltc/b;

    const/high16 v2, 0x42c80000    # 100.0f

    .line 6
    invoke-static {v2}, Lxc/b;->c(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    new-instance v2, Lrc/a;

    invoke-direct {v2, p0}, Lrc/a;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    const v3, -0x559934

    const/16 v4, -0x7800

    const v5, -0xff6634

    const v6, -0xbbbc

    const v7, -0x996700

    .line 8
    filled-new-array {v5, v6, v7, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lrc/a;->e([I)V

    .line 9
    new-instance v2, Lcom/scwang/smart/refresh/header/material/CircleImageView;

    const v3, -0x50506

    invoke-direct {v2, p1, v3}, Lcom/scwang/smart/refresh/header/material/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 10
    iget-object v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 12
    iget-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x42200000    # 40.0f

    .line 14
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->e:I

    .line 15
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->l:Landroid/graphics/Path;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    sget-object v2, Lrc/b;->T:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    sget p2, Lrc/b;->c0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    .line 21
    sget p2, Lrc/b;->a0:I

    iget-boolean v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->p:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->p:Z

    .line 22
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    sget v2, Lrc/b;->Z:I

    const v4, -0xee4401

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget p2, Lrc/b;->b0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v2, 0x0

    const/high16 v5, -0x1000000

    if-eqz p2, :cond_0

    .line 24
    sget p2, Lrc/b;->b0:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 25
    sget v6, Lrc/b;->W:I

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 26
    iget-object v7, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v7, p2, v3, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 27
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 28
    :cond_0
    sget p2, Lrc/b;->Y:I

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    .line 29
    sget p2, Lrc/b;->V:I

    iget-boolean v6, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->p:Z

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->p:Z

    .line 30
    sget p2, Lrc/b;->U:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    sget v6, Lrc/b;->U:I

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    :cond_1
    sget p2, Lrc/b;->X:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 33
    sget p2, Lrc/b;->X:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 34
    sget v0, Lrc/b;->W:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 35
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v4, p2, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 36
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Lsc/f;II)V
    .locals 0
    .param p1    # Lsc/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lrc/a;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lsc/f;Z)I
    .locals 0
    .param p1    # Lsc/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 4
    .line 5
    invoke-virtual {p2}, Lrc/a;->stop()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->d:Z

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public d(Lsc/f;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 0
    .param p1    # Lsc/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    sget-object p2, Lcom/scwang/smart/refresh/header/MaterialHeader$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    aget p2, p2, p3

    .line 12
    .line 13
    const/4 p3, 0x4

    .line 14
    if-eq p2, p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->d:Z

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->l:Landroid/graphics/Path;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->l:Landroid/graphics/Path;

    .line 11
    .line 12
    iget v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->j:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->l:Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    const/high16 v3, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v1, v3

    .line 29
    iget v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->j:I

    .line 30
    .line 31
    int-to-float v3, v3

    .line 32
    iget v4, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->i:I

    .line 33
    .line 34
    int-to-float v4, v4

    .line 35
    const v5, 0x3ff33333    # 1.9f

    .line 36
    .line 37
    .line 38
    mul-float/2addr v4, v5

    .line 39
    add-float/2addr v3, v4

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    int-to-float v4, v4

    .line 45
    iget v5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->j:I

    .line 46
    .line 47
    int-to-float v5, v5

    .line 48
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->l:Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    int-to-float v1, v1

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->l:Landroid/graphics/Path;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public h(Lsc/e;II)V
    .locals 0
    .param p1    # Lsc/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    invoke-interface {p1, p0, p3}, Lsc/e;->b(Lsc/a;Z)Lsc/e;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    div-int/lit8 p3, p2, 0x2

    .line 16
    .line 17
    iput p3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->j:I

    .line 18
    .line 19
    iput p3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->i:I

    .line 20
    .line 21
    :cond_1
    iput-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->g:Lsc/e;

    .line 22
    .line 23
    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->k:I

    .line 24
    .line 25
    return-void
.end method

.method public i(ZFIII)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object p5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-ne p2, p5, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->o:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->j:I

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    sub-int v0, p3, p4

    .line 20
    .line 21
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->i:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 33
    .line 34
    invoke-virtual {p1}, Lrc/a;->isRunning()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->d:Z

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 45
    .line 46
    const/high16 p2, 0x40800000    # 4.0f

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    .line 52
    if-eq p1, p5, :cond_3

    .line 53
    .line 54
    int-to-float p1, p3

    .line 55
    mul-float/2addr p1, v0

    .line 56
    int-to-float p5, p4

    .line 57
    div-float/2addr p1, p5

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    float-to-double v2, p1

    .line 67
    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    sub-double/2addr v2, v4

    .line 73
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    double-to-float p1, v2

    .line 80
    const/high16 v2, 0x40a00000    # 5.0f

    .line 81
    .line 82
    mul-float/2addr p1, v2

    .line 83
    const/high16 v2, 0x40400000    # 3.0f

    .line 84
    .line 85
    div-float/2addr p1, v2

    .line 86
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v2, p4

    .line 91
    int-to-float p4, v2

    .line 92
    mul-float v2, p5, v1

    .line 93
    .line 94
    invoke-static {p4, v2}, Ljava/lang/Math;->min(FF)F

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    div-float/2addr p4, p5

    .line 99
    const/4 p5, 0x0

    .line 100
    invoke-static {p5, p4}, Ljava/lang/Math;->max(FF)F

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    div-float/2addr p4, p2

    .line 105
    float-to-double v2, p4

    .line 106
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 107
    .line 108
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    sub-double/2addr v2, v4

    .line 113
    double-to-float p4, v2

    .line 114
    mul-float/2addr p4, v1

    .line 115
    const v2, 0x3f4ccccd    # 0.8f

    .line 116
    .line 117
    .line 118
    mul-float v3, p1, v2

    .line 119
    .line 120
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 121
    .line 122
    const/4 v5, 0x1

    .line 123
    invoke-virtual {v4, v5}, Lrc/a;->k(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 127
    .line 128
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v4, p5, v2}, Lrc/a;->i(FF)V

    .line 133
    .line 134
    .line 135
    iget-object p5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 136
    .line 137
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {p5, v2}, Lrc/a;->d(F)V

    .line 142
    .line 143
    .line 144
    const p5, 0x3ecccccd    # 0.4f

    .line 145
    .line 146
    .line 147
    mul-float/2addr p1, p5

    .line 148
    const/high16 p5, -0x41800000    # -0.25f

    .line 149
    .line 150
    add-float/2addr p1, p5

    .line 151
    mul-float/2addr p4, v1

    .line 152
    add-float/2addr p1, p4

    .line 153
    const/high16 p4, 0x3f000000    # 0.5f

    .line 154
    .line 155
    mul-float/2addr p1, p4

    .line 156
    iget-object p4, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 157
    .line 158
    invoke-virtual {p4, p1}, Lrc/a;->f(F)V

    .line 159
    .line 160
    .line 161
    :cond_3
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 162
    .line 163
    int-to-float p3, p3

    .line 164
    div-float p4, p3, v1

    .line 165
    .line 166
    iget p5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->e:I

    .line 167
    .line 168
    int-to-float p5, p5

    .line 169
    div-float/2addr p5, v1

    .line 170
    add-float/2addr p4, p5

    .line 171
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    .line 172
    .line 173
    .line 174
    move-result p4

    .line 175
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 176
    .line 177
    .line 178
    mul-float/2addr p3, p2

    .line 179
    iget p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->e:I

    .line 180
    .line 181
    int-to-float p2, p2

    .line 182
    div-float/2addr p3, p2

    .line 183
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 188
    .line 189
    .line 190
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 23
    .line 24
    .line 25
    move-result p5

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    iget p5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->j:I

    .line 30
    .line 31
    if-lez p5, :cond_1

    .line 32
    .line 33
    div-int/lit8 v1, p4, 0x2

    .line 34
    .line 35
    sub-int/2addr p5, v1

    .line 36
    div-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    div-int/lit8 p3, p3, 0x2

    .line 39
    .line 40
    sub-int v1, p2, p3

    .line 41
    .line 42
    add-int/2addr p2, p3

    .line 43
    add-int/2addr p4, p5

    .line 44
    invoke-virtual {p1, v1, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 48
    .line 49
    const/4 p3, 0x1

    .line 50
    invoke-virtual {p2, p3}, Lrc/a;->k(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    const p4, 0x3f4ccccd    # 0.8f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3, p4}, Lrc/a;->i(FF)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->h:Lrc/a;

    .line 63
    .line 64
    const/high16 p3, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Lrc/a;->d(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    div-int/lit8 p2, p2, 0x2

    .line 77
    .line 78
    div-int/lit8 p3, p3, 0x2

    .line 79
    .line 80
    sub-int p5, p2, p3

    .line 81
    .line 82
    neg-int p4, p4

    .line 83
    add-int/2addr p2, p3

    .line 84
    invoke-virtual {p1, p5, p4, p2, v0}, Landroid/view/View;->layout(IIII)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->e:I

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->e:I

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->m:Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget p1, p1, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
