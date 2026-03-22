.class public Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;
.super Landroid/view/View;
.source "GoogleDotView.java"

# interfaces
.implements Lcc/b;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I

.field private d:I

.field e:F

.field f:F

.field g:Z

.field h:Landroid/animation/ValueAnimator;

.field i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 4
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->c:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 6
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x40800000    # 4.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/16 v1, 0x72

    .line 28
    .line 29
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    new-array v1, v0, [F

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    const-wide/16 v2, 0x320

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 56
    .line 57
    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    new-instance v4, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$a;

    .line 66
    .line 67
    invoke-direct {v4, p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    const/4 v4, -0x1

    .line 76
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 83
    .line 84
    .line 85
    new-array v0, v0, [F

    .line 86
    .line 87
    fill-array-data v0, :array_1

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 102
    .line 103
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$b;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$b;-><init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(FFF)V
    .locals 0

    .line 1
    const/high16 p2, 0x40000000    # 2.0f

    .line 2
    .line 3
    div-float p2, p1, p2

    .line 4
    .line 5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    add-float/2addr p2, p3

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 12
    .line 13
    .line 14
    cmpg-float p1, p1, p3

    .line 15
    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public c(Lcc/c;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcc/c;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(FFF)V
    .locals 0

    .line 1
    const/high16 p2, 0x40000000    # 2.0f

    .line 2
    .line 3
    div-float/2addr p1, p2

    .line 4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    add-float/2addr p1, p2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
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
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->c:I

    .line 9
    .line 10
    div-int/2addr v0, v1

    .line 11
    add-int/lit8 v0, v0, -0xa

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->c:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_b

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 19
    .line 20
    const/16 v3, 0xff

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x1

    .line 24
    const/16 v6, 0x91

    .line 25
    .line 26
    const/16 v7, 0x69

    .line 27
    .line 28
    const/4 v8, 0x3

    .line 29
    const/4 v9, 0x2

    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    if-eq v1, v5, :cond_3

    .line 35
    .line 36
    if-eq v1, v9, :cond_2

    .line 37
    .line 38
    if-eq v1, v8, :cond_1

    .line 39
    .line 40
    if-eq v1, v4, :cond_0

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget v4, Lcc/f;->d:I

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    div-int/2addr v2, v9

    .line 69
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 70
    .line 71
    mul-int/2addr v3, v9

    .line 72
    add-int/2addr v2, v3

    .line 73
    mul-int/lit8 v3, v0, 0x2

    .line 74
    .line 75
    div-int/2addr v3, v8

    .line 76
    mul-int/2addr v3, v9

    .line 77
    add-int/2addr v2, v3

    .line 78
    int-to-float v2, v2

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    div-int/2addr v3, v9

    .line 84
    int-to-float v3, v3

    .line 85
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 86
    .line 87
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    .line 88
    .line 89
    mul-float/2addr v4, v5

    .line 90
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_1
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    sget v4, Lcc/f;->c:I

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    div-int/2addr v2, v9

    .line 122
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 123
    .line 124
    add-int/2addr v2, v3

    .line 125
    div-int/lit8 v3, v0, 0x3

    .line 126
    .line 127
    mul-int/2addr v3, v9

    .line 128
    add-int/2addr v2, v3

    .line 129
    int-to-float v2, v2

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    div-int/2addr v3, v9

    .line 135
    int-to-float v3, v3

    .line 136
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 137
    .line 138
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    .line 139
    .line 140
    mul-float/2addr v4, v5

    .line 141
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_2
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sget v4, Lcc/f;->a:I

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    div-int/2addr v2, v9

    .line 173
    int-to-float v2, v2

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    div-int/2addr v3, v9

    .line 179
    int-to-float v3, v3

    .line 180
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 181
    .line 182
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->e:F

    .line 183
    .line 184
    mul-float/2addr v4, v5

    .line 185
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 186
    .line 187
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_3
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 193
    .line 194
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    sget v4, Lcc/f;->b:I

    .line 204
    .line 205
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    div-int/2addr v2, v9

    .line 217
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 218
    .line 219
    sub-int/2addr v2, v3

    .line 220
    div-int/lit8 v3, v0, 0x3

    .line 221
    .line 222
    mul-int/2addr v3, v9

    .line 223
    sub-int/2addr v2, v3

    .line 224
    int-to-float v2, v2

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    div-int/2addr v3, v9

    .line 230
    int-to-float v3, v3

    .line 231
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 232
    .line 233
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    .line 234
    .line 235
    mul-float/2addr v4, v5

    .line 236
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 237
    .line 238
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :cond_4
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 244
    .line 245
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    .line 247
    .line 248
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    sget v4, Lcc/f;->d:I

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    div-int/2addr v2, v9

    .line 268
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 269
    .line 270
    mul-int/2addr v3, v9

    .line 271
    sub-int/2addr v2, v3

    .line 272
    mul-int/lit8 v3, v0, 0x2

    .line 273
    .line 274
    div-int/2addr v3, v8

    .line 275
    mul-int/2addr v3, v9

    .line 276
    sub-int/2addr v2, v3

    .line 277
    int-to-float v2, v2

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    div-int/2addr v3, v9

    .line 283
    int-to-float v3, v3

    .line 284
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 285
    .line 286
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    .line 287
    .line 288
    mul-float/2addr v4, v5

    .line 289
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 290
    .line 291
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :cond_5
    if-eqz v1, :cond_a

    .line 297
    .line 298
    if-eq v1, v5, :cond_9

    .line 299
    .line 300
    if-eq v1, v9, :cond_8

    .line 301
    .line 302
    if-eq v1, v8, :cond_7

    .line 303
    .line 304
    if-eq v1, v4, :cond_6

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 309
    .line 310
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    .line 312
    .line 313
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    sget v4, Lcc/f;->d:I

    .line 320
    .line 321
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    div-int/2addr v2, v9

    .line 333
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 334
    .line 335
    mul-int/2addr v3, v9

    .line 336
    add-int/2addr v2, v3

    .line 337
    mul-int/lit8 v3, v0, 0x2

    .line 338
    .line 339
    div-int/2addr v3, v8

    .line 340
    mul-int/2addr v3, v9

    .line 341
    add-int/2addr v2, v3

    .line 342
    int-to-float v2, v2

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    div-int/2addr v3, v9

    .line 348
    int-to-float v3, v3

    .line 349
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 350
    .line 351
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 352
    .line 353
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :cond_7
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 359
    .line 360
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    .line 362
    .line 363
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 364
    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    sget v4, Lcc/f;->c:I

    .line 370
    .line 371
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    div-int/2addr v2, v9

    .line 383
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 384
    .line 385
    add-int/2addr v2, v3

    .line 386
    div-int/lit8 v3, v0, 0x3

    .line 387
    .line 388
    mul-int/2addr v3, v9

    .line 389
    add-int/2addr v2, v3

    .line 390
    int-to-float v2, v2

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    div-int/2addr v3, v9

    .line 396
    int-to-float v3, v3

    .line 397
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 398
    .line 399
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 400
    .line 401
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :cond_8
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 407
    .line 408
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 409
    .line 410
    .line 411
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 412
    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    sget v4, Lcc/f;->a:I

    .line 418
    .line 419
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    div-int/2addr v2, v9

    .line 431
    int-to-float v2, v2

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    div-int/2addr v3, v9

    .line 437
    int-to-float v3, v3

    .line 438
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 439
    .line 440
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 441
    .line 442
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 443
    .line 444
    .line 445
    goto :goto_1

    .line 446
    :cond_9
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 447
    .line 448
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 449
    .line 450
    .line 451
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 452
    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    sget v4, Lcc/f;->b:I

    .line 458
    .line 459
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    div-int/2addr v2, v9

    .line 471
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 472
    .line 473
    sub-int/2addr v2, v3

    .line 474
    div-int/lit8 v3, v0, 0x3

    .line 475
    .line 476
    mul-int/2addr v3, v9

    .line 477
    sub-int/2addr v2, v3

    .line 478
    int-to-float v2, v2

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    div-int/2addr v3, v9

    .line 484
    int-to-float v3, v3

    .line 485
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 486
    .line 487
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 488
    .line 489
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 490
    .line 491
    .line 492
    goto :goto_1

    .line 493
    :cond_a
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 494
    .line 495
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    .line 497
    .line 498
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 499
    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    sget v4, Lcc/f;->d:I

    .line 505
    .line 506
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    div-int/2addr v2, v9

    .line 518
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 519
    .line 520
    mul-int/2addr v3, v9

    .line 521
    sub-int/2addr v2, v3

    .line 522
    mul-int/lit8 v3, v0, 0x2

    .line 523
    .line 524
    div-int/2addr v3, v8

    .line 525
    mul-int/2addr v3, v9

    .line 526
    sub-int/2addr v2, v3

    .line 527
    int-to-float v2, v2

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    div-int/2addr v3, v9

    .line 533
    int-to-float v3, v3

    .line 534
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 535
    .line 536
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    .line 537
    .line 538
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 539
    .line 540
    .line 541
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :cond_b
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setCir_x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    .line 2
    .line 3
    return-void
.end method
