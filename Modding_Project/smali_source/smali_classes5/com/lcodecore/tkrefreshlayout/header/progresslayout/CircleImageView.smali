.class public Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    mul-float/2addr p3, p1

    .line 19
    const/high16 v0, 0x40000000    # 2.0f

    .line 20
    .line 21
    mul-float/2addr p3, v0

    .line 22
    float-to-int p3, p3

    .line 23
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 24
    .line 25
    mul-float/2addr v0, p1

    .line 26
    float-to-int v0, v0

    .line 27
    const/4 v1, 0x0

    .line 28
    mul-float/2addr v1, p1

    .line 29
    float-to-int v1, v1

    .line 30
    const/high16 v2, 0x40600000    # 3.5f

    .line 31
    .line 32
    mul-float/2addr v2, p1

    .line 33
    float-to-int v2, v2

    .line 34
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 50
    .line 51
    .line 52
    const/high16 v0, 0x40800000    # 4.0f

    .line 53
    .line 54
    mul-float/2addr p1, v0

    .line 55
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView$a;

    .line 60
    .line 61
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 62
    .line 63
    invoke-direct {p1, p0, v2, p3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;II)V

    .line 64
    .line 65
    .line 66
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    .line 67
    .line 68
    invoke-direct {p3, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p0, p1, v2}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    int-to-float v1, v1

    .line 87
    int-to-float v0, v0

    .line 88
    const/high16 v3, 0x1e000000

    .line 89
    .line 90
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 91
    .line 92
    .line 93
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 94
    .line 95
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method static synthetic a(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 2
    .line 3
    return p1
.end method

.method private c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->c()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 15
    .line 16
    mul-int/lit8 p2, p2, 0x2

    .line 17
    .line 18
    add-int/2addr p1, p2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->b:I

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    add-int/2addr p2, v0

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
