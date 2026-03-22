.class Lsm/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final e:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field f:F

.field g:F

.field h:F

.field i:F

.field j:[I

.field k:I

.field l:F

.field m:F

.field n:F

.field o:F

.field p:I

.field q:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsm/c$d;->f:F

    .line 6
    .line 7
    iput v0, p0, Lsm/c$d;->g:F

    .line 8
    .line 9
    iput v0, p0, Lsm/c$d;->h:F

    .line 10
    .line 11
    const/high16 v0, 0x40a00000    # 5.0f

    .line 12
    .line 13
    iput v0, p0, Lsm/c$d;->i:F

    .line 14
    .line 15
    const/16 v0, 0xff

    .line 16
    .line 17
    iput v0, p0, Lsm/c$d;->p:I

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lsm/c$d;->a:Landroid/graphics/RectF;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lsm/c$d;->c:Landroid/graphics/Paint;

    .line 53
    .line 54
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lsm/c$d;->d:Landroid/graphics/Paint;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lsm/c$d;->e:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->p:I

    .line 2
    .line 3
    return v0
.end method

.method b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c$d;->o:F

    .line 2
    .line 3
    return-void
.end method

.method c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c$d;->p:I

    .line 2
    .line 3
    return-void
.end method

.method d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v1, p0, Lsm/c$d;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v0, p0, Lsm/c$d;->o:F

    .line 4
    .line 5
    iget v2, p0, Lsm/c$d;->i:F

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr v2, v3

    .line 10
    add-float/2addr v2, v0

    .line 11
    const/4 v4, 0x0

    .line 12
    cmpg-float v0, v0, v4

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    div-float/2addr v0, v3

    .line 30
    iget v2, p0, Lsm/c$d;->i:F

    .line 31
    .line 32
    div-float/2addr v2, v3

    .line 33
    sub-float v2, v0, v2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    sub-float/2addr v0, v2

    .line 41
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-float v4, v4

    .line 46
    sub-float/2addr v4, v2

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    int-to-float v5, v5

    .line 52
    add-float/2addr v5, v2

    .line 53
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    int-to-float p2, p2

    .line 58
    add-float/2addr p2, v2

    .line 59
    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 60
    .line 61
    .line 62
    iget p2, p0, Lsm/c$d;->f:F

    .line 63
    .line 64
    iget v0, p0, Lsm/c$d;->h:F

    .line 65
    .line 66
    add-float/2addr p2, v0

    .line 67
    const/high16 v2, 0x43b40000    # 360.0f

    .line 68
    .line 69
    mul-float/2addr p2, v2

    .line 70
    iget v4, p0, Lsm/c$d;->g:F

    .line 71
    .line 72
    add-float/2addr v4, v0

    .line 73
    mul-float/2addr v4, v2

    .line 74
    sub-float/2addr v4, p2

    .line 75
    iget-object v0, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 76
    .line 77
    iget v2, p0, Lsm/c$d;->q:I

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 83
    .line 84
    iget v2, p0, Lsm/c$d;->p:I

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Lsm/c$d;->i:F

    .line 90
    .line 91
    div-float/2addr v0, v3

    .line 92
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    div-float/2addr v6, v3

    .line 108
    iget-object v3, p0, Lsm/c$d;->d:Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-virtual {p1, v2, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    .line 112
    .line 113
    neg-float v0, v0

    .line 114
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 115
    .line 116
    .line 117
    iget-object v5, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    move-object v0, p1

    .line 121
    move v2, p2

    .line 122
    move v3, v4

    .line 123
    move v4, v6

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method e(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method f(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method g([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lsm/c$d;->j:[I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lsm/c$d;->n(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c$d;->g:F

    .line 2
    .line 3
    return-void
.end method

.method i()F
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->g:F

    .line 2
    .line 3
    return v0
.end method

.method j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c$d;->h:F

    .line 2
    .line 3
    return-void
.end method

.method k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c$d;->q:I

    .line 2
    .line 3
    return-void
.end method

.method l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsm/c$d;->j:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lsm/c$d;->o()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    return v0
.end method

.method m(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsm/c$d;->f:F

    .line 2
    .line 3
    return-void
.end method

.method n(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsm/c$d;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Lsm/c$d;->j:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    iput p1, p0, Lsm/c$d;->q:I

    .line 8
    .line 9
    return-void
.end method

.method o()I
    .locals 2

    .line 1
    iget v0, p0, Lsm/c$d;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lsm/c$d;->j:[I

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    rem-int/2addr v0, v1

    .line 9
    return v0
.end method

.method p(F)V
    .locals 1

    .line 1
    iput p1, p0, Lsm/c$d;->i:F

    .line 2
    .line 3
    iget-object v0, p0, Lsm/c$d;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method q()F
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->f:F

    .line 2
    .line 3
    return v0
.end method

.method r()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsm/c$d;->j:[I

    .line 2
    .line 3
    iget v1, p0, Lsm/c$d;->k:I

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method s()F
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->m:F

    .line 2
    .line 3
    return v0
.end method

.method t()F
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->n:F

    .line 2
    .line 3
    return v0
.end method

.method u()F
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->l:F

    .line 2
    .line 3
    return v0
.end method

.method v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsm/c$d;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lsm/c$d;->n(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method w()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsm/c$d;->l:F

    .line 3
    .line 4
    iput v0, p0, Lsm/c$d;->m:F

    .line 5
    .line 6
    iput v0, p0, Lsm/c$d;->n:F

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lsm/c$d;->m(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lsm/c$d;->h(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lsm/c$d;->j(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method x()V
    .locals 1

    .line 1
    iget v0, p0, Lsm/c$d;->f:F

    .line 2
    .line 3
    iput v0, p0, Lsm/c$d;->l:F

    .line 4
    .line 5
    iget v0, p0, Lsm/c$d;->g:F

    .line 6
    .line 7
    iput v0, p0, Lsm/c$d;->m:F

    .line 8
    .line 9
    iget v0, p0, Lsm/c$d;->h:F

    .line 10
    .line 11
    iput v0, p0, Lsm/c$d;->n:F

    .line 12
    .line 13
    return-void
.end method
