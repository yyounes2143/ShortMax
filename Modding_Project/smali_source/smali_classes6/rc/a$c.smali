.class Lrc/a$c;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:D

.field r:I

.field s:I

.field t:I

.field final synthetic u:Lrc/a;


# direct methods
.method constructor <init>(Lrc/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lrc/a$c;->u:Lrc/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lrc/a$c;->a:Landroid/graphics/RectF;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lrc/a$c;->b:Landroid/graphics/Paint;

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lrc/a$c;->c:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lrc/a$c;->d:F

    .line 29
    .line 30
    iput v1, p0, Lrc/a$c;->e:F

    .line 31
    .line 32
    iput v1, p0, Lrc/a$c;->f:F

    .line 33
    .line 34
    const/high16 v1, 0x40a00000    # 5.0f

    .line 35
    .line 36
    iput v1, p0, Lrc/a$c;->g:F

    .line 37
    .line 38
    const/high16 v1, 0x40200000    # 2.5f

    .line 39
    .line 40
    iput v1, p0, Lrc/a$c;->h:F

    .line 41
    .line 42
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lrc/a$c;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 15
    .line 16
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget v0, p0, Lrc/a$c;->h:F

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    div-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    iget v1, p0, Lrc/a$c;->p:F

    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    iget-wide v1, p0, Lrc/a$c;->q:D

    .line 35
    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    mul-double/2addr v1, v5

    .line 43
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    float-to-double v5, v5

    .line 48
    add-double/2addr v1, v5

    .line 49
    double-to-float v1, v1

    .line 50
    iget-wide v5, p0, Lrc/a$c;->q:D

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    mul-double/2addr v5, v2

    .line 57
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    float-to-double v2, v2

    .line 62
    add-double/2addr v5, v2

    .line 63
    double-to-float v2, v5

    .line 64
    iget-object v3, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 71
    .line 72
    iget v5, p0, Lrc/a$c;->r:I

    .line 73
    .line 74
    int-to-float v5, v5

    .line 75
    iget v6, p0, Lrc/a$c;->p:F

    .line 76
    .line 77
    mul-float/2addr v5, v6

    .line 78
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 82
    .line 83
    iget v4, p0, Lrc/a$c;->r:I

    .line 84
    .line 85
    int-to-float v4, v4

    .line 86
    iget v5, p0, Lrc/a$c;->p:F

    .line 87
    .line 88
    mul-float/2addr v4, v5

    .line 89
    const/high16 v6, 0x40000000    # 2.0f

    .line 90
    .line 91
    div-float/2addr v4, v6

    .line 92
    iget v6, p0, Lrc/a$c;->s:I

    .line 93
    .line 94
    int-to-float v6, v6

    .line 95
    mul-float/2addr v6, v5

    .line 96
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 100
    .line 101
    sub-float/2addr v1, v0

    .line 102
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lrc/a$c;->c:Landroid/graphics/Paint;

    .line 111
    .line 112
    iget v1, p0, Lrc/a$c;->t:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    add-float/2addr p2, p3

    .line 118
    const/high16 p3, 0x40a00000    # 5.0f

    .line 119
    .line 120
    sub-float/2addr p2, p3

    .line 121
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lrc/a$c;->o:Landroid/graphics/Path;

    .line 133
    .line 134
    iget-object p3, p0, Lrc/a$c;->c:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    return-void
.end method

.method private d()I
    .locals 2

    .line 1
    iget v0, p0, Lrc/a$c;->j:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lrc/a$c;->i:[I

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    rem-int/2addr v0, v1

    .line 9
    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lrc/a$c;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lrc/a$c;->h:F

    .line 7
    .line 8
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lrc/a$c;->d:F

    .line 12
    .line 13
    iget v2, p0, Lrc/a$c;->f:F

    .line 14
    .line 15
    add-float/2addr v0, v2

    .line 16
    const/high16 v3, 0x43b40000    # 360.0f

    .line 17
    .line 18
    mul-float v6, v0, v3

    .line 19
    .line 20
    iget v0, p0, Lrc/a$c;->e:F

    .line 21
    .line 22
    add-float/2addr v0, v2

    .line 23
    mul-float/2addr v0, v3

    .line 24
    sub-float v7, v0, v6

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    cmpl-float v0, v7, v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lrc/a$c;->b:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget v2, p0, Lrc/a$c;->t:I

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    iget-object v5, p0, Lrc/a$c;->b:Landroid/graphics/Paint;

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    move v2, v6

    .line 43
    move v3, v7

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-direct {p0, p1, v6, v7, p2}, Lrc/a$c;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lrc/a$c;->i:[I

    .line 2
    .line 3
    invoke-direct {p0}, Lrc/a$c;->d()I

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

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lrc/a$c;->i:[I

    .line 2
    .line 3
    iget v1, p0, Lrc/a$c;->j:I

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc/a$c;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lrc/a$c;->h(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lrc/a$c;->k:F

    .line 3
    .line 4
    iput v0, p0, Lrc/a$c;->l:F

    .line 5
    .line 6
    iput v0, p0, Lrc/a$c;->m:F

    .line 7
    .line 8
    iput v0, p0, Lrc/a$c;->d:F

    .line 9
    .line 10
    iput v0, p0, Lrc/a$c;->e:F

    .line 11
    .line 12
    iput v0, p0, Lrc/a$c;->f:F

    .line 13
    .line 14
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iput p1, p0, Lrc/a$c;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lrc/a$c;->i:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    iput p1, p0, Lrc/a$c;->t:I

    .line 8
    .line 9
    return-void
.end method

.method public i(II)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iget-wide v0, p0, Lrc/a$c;->q:D

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmpg-double p2, v0, v2

    .line 11
    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    if-lez p2, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    cmpg-float p2, p1, p2

    .line 18
    .line 19
    if-gez p2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    div-float/2addr p1, v2

    .line 23
    float-to-double p1, p1

    .line 24
    sub-double/2addr p1, v0

    .line 25
    :goto_0
    double-to-float p1, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    iget p1, p0, Lrc/a$c;->g:F

    .line 28
    .line 29
    div-float/2addr p1, v2

    .line 30
    float-to-double p1, p1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    goto :goto_0

    .line 36
    :goto_2
    iput p1, p0, Lrc/a$c;->h:F

    .line 37
    .line 38
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget v0, p0, Lrc/a$c;->d:F

    .line 2
    .line 3
    iput v0, p0, Lrc/a$c;->k:F

    .line 4
    .line 5
    iget v0, p0, Lrc/a$c;->e:F

    .line 6
    .line 7
    iput v0, p0, Lrc/a$c;->l:F

    .line 8
    .line 9
    iget v0, p0, Lrc/a$c;->f:F

    .line 10
    .line 11
    iput v0, p0, Lrc/a$c;->m:F

    .line 12
    .line 13
    return-void
.end method
