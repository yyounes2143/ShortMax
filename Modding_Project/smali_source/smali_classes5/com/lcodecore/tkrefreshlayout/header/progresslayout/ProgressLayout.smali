.class public Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;
.super Landroid/widget/FrameLayout;
.source "ProgressLayout.java"

# interfaces
.implements Lcc/b;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

.field private d:Ldc/a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 6
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->a:I

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 7
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->b:I

    .line 8
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e()V

    const/4 p1, 0x1

    .line 9
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x41a00000    # 20.0f

    .line 8
    .line 9
    const v3, -0x50506

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v3, v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;-><init>(Landroid/content/Context;IF)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 16
    .line 17
    new-instance v0, Ldc/a;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p0}, Ldc/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ldc/a;->k(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    const/4 v1, -0x2

    .line 48
    const/16 v2, 0x11

    .line 49
    .line 50
    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 p2, 0xff

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ldc/a;->setAlpha(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 24
    .line 25
    const/high16 p2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 31
    .line 32
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ldc/a;->j(F)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 41
    .line 42
    invoke-virtual {p1}, Ldc/a;->start()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public b(FFF)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    .line 3
    .line 4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpl-float p3, p1, p2

    .line 7
    .line 8
    if-ltz p3, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public c(Lcc/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lcc/c;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public d(FFF)V
    .locals 4

    .line 1
    iget-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    .line 7
    .line 8
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 9
    .line 10
    const/16 p3, 0x4c

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Ldc/a;->setAlpha(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpl-float p3, p1, p2

    .line 32
    .line 33
    if-ltz p3, :cond_2

    .line 34
    .line 35
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 36
    .line 37
    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 41
    .line 42
    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 47
    .line 48
    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 52
    .line 53
    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 54
    .line 55
    .line 56
    :goto_0
    cmpg-float p3, p1, p2

    .line 57
    .line 58
    if-gtz p3, :cond_3

    .line 59
    .line 60
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 61
    .line 62
    const/high16 v0, 0x43330000    # 179.0f

    .line 63
    .line 64
    mul-float/2addr v0, p1

    .line 65
    const/high16 v1, 0x42980000    # 76.0f

    .line 66
    .line 67
    add-float/2addr v0, v1

    .line 68
    float-to-int v0, v0

    .line 69
    invoke-virtual {p3, v0}, Ldc/a;->setAlpha(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    float-to-double v0, p1

    .line 73
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    sub-double/2addr v0, v2

    .line 79
    const-wide/16 v2, 0x0

    .line 80
    .line 81
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    double-to-float p1, v0

    .line 86
    const/high16 p3, 0x40a00000    # 5.0f

    .line 87
    .line 88
    mul-float/2addr p1, p3

    .line 89
    const/high16 p3, 0x40400000    # 3.0f

    .line 90
    .line 91
    div-float/2addr p1, p3

    .line 92
    const p3, 0x3f4ccccd    # 0.8f

    .line 93
    .line 94
    .line 95
    mul-float v0, p1, p3

    .line 96
    .line 97
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-virtual {v1, v2, p3}, Ldc/a;->p(FF)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 108
    .line 109
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p3, p2}, Ldc/a;->j(F)V

    .line 114
    .line 115
    .line 116
    const p2, 0x3ecccccd    # 0.4f

    .line 117
    .line 118
    .line 119
    mul-float/2addr p1, p2

    .line 120
    const/high16 p2, -0x41800000    # -0.25f

    .line 121
    .line 122
    add-float/2addr p1, p2

    .line 123
    const/high16 p2, 0x3f000000    # 0.5f

    .line 124
    .line 125
    mul-float/2addr p1, p2

    .line 126
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 127
    .line 128
    invoke-virtual {p2, p1}, Ldc/a;->m(F)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldc/a;->stop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v1, 0xff

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ldc/a;->setAlpha(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 46
    .line 47
    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a;->l([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    new-array v1, v1, [I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p1

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setColorSchemeColors([I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ldc/a;->k(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/high16 v1, 0x42600000    # 56.0f

    .line 18
    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    .line 21
    mul-float/2addr v0, v1

    .line 22
    float-to-int v0, v0

    .line 23
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->a:I

    .line 24
    .line 25
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->b:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 29
    .line 30
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .line 32
    mul-float/2addr v0, v1

    .line 33
    float-to-int v0, v0

    .line 34
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->a:I

    .line 35
    .line 36
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->b:I

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ldc/a;->s(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Ldc/a;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
