.class Ldc/a$d;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Path;

.field private q:F

.field private r:D

.field private s:I

.field private t:I

.field private u:I

.field private final v:Landroid/graphics/Paint;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldc/a$d;->a:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldc/a$d;->b:Landroid/graphics/Paint;

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Ldc/a$d;->c:Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput v2, p0, Ldc/a$d;->e:F

    .line 27
    .line 28
    iput v2, p0, Ldc/a$d;->f:F

    .line 29
    .line 30
    iput v2, p0, Ldc/a$d;->g:F

    .line 31
    .line 32
    const/high16 v2, 0x40a00000    # 5.0f

    .line 33
    .line 34
    iput v2, p0, Ldc/a$d;->h:F

    .line 35
    .line 36
    const/high16 v2, 0x40200000    # 2.5f

    .line 37
    .line 38
    iput v2, p0, Ldc/a$d;->i:F

    .line 39
    .line 40
    new-instance v2, Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Ldc/a$d;->v:Landroid/graphics/Paint;

    .line 47
    .line 48
    iput-object p1, p0, Ldc/a$d;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 49
    .line 50
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ldc/a$d;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ldc/a$d;->p:Landroid/graphics/Path;

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
    iput-object v0, p0, Ldc/a$d;->p:Landroid/graphics/Path;

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
    iget v0, p0, Ldc/a$d;->i:F

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    div-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    iget v1, p0, Ldc/a$d;->q:F

    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    iget-wide v1, p0, Ldc/a$d;->r:D

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
    iget-wide v5, p0, Ldc/a$d;->r:D

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
    iget-object v3, p0, Ldc/a$d;->p:Landroid/graphics/Path;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Ldc/a$d;->p:Landroid/graphics/Path;

    .line 71
    .line 72
    iget v5, p0, Ldc/a$d;->s:I

    .line 73
    .line 74
    int-to-float v5, v5

    .line 75
    iget v6, p0, Ldc/a$d;->q:F

    .line 76
    .line 77
    mul-float/2addr v5, v6

    .line 78
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Ldc/a$d;->p:Landroid/graphics/Path;

    .line 82
    .line 83
    iget v4, p0, Ldc/a$d;->s:I

    .line 84
    .line 85
    int-to-float v4, v4

    .line 86
    iget v5, p0, Ldc/a$d;->q:F

    .line 87
    .line 88
    mul-float/2addr v4, v5

    .line 89
    const/high16 v6, 0x40000000    # 2.0f

    .line 90
    .line 91
    div-float/2addr v4, v6

    .line 92
    iget v6, p0, Ldc/a$d;->t:I

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
    iget-object v3, p0, Ldc/a$d;->p:Landroid/graphics/Path;

    .line 100
    .line 101
    sub-float/2addr v1, v0

    .line 102
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Ldc/a$d;->p:Landroid/graphics/Path;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Ldc/a$d;->c:Landroid/graphics/Paint;

    .line 111
    .line 112
    iget v1, p0, Ldc/a$d;->x:I

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
    iget-object p2, p0, Ldc/a$d;->p:Landroid/graphics/Path;

    .line 133
    .line 134
    iget-object p3, p0, Ldc/a$d;->c:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    return-void
.end method

.method private g()I
    .locals 2

    .line 1
    iget v0, p0, Ldc/a$d;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Ldc/a$d;->j:[I

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    rem-int/2addr v0, v1

    .line 9
    return v0
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/a$d;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public A(II)V
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
    iget-wide v0, p0, Ldc/a$d;->r:D

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
    iget p1, p0, Ldc/a$d;->h:F

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
    iput p1, p0, Ldc/a$d;->i:F

    .line 37
    .line 38
    return-void
.end method

.method public B(F)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a$d;->g:F

    .line 2
    .line 3
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldc/a$d;->o:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Ldc/a$d;->o:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public D(F)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a$d;->e:F

    .line 2
    .line 3
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E(F)V
    .locals 1

    .line 1
    iput p1, p0, Ldc/a$d;->h:F

    .line 2
    .line 3
    iget-object v0, p0, Ldc/a$d;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->e:F

    .line 2
    .line 3
    iput v0, p0, Ldc/a$d;->l:F

    .line 4
    .line 5
    iget v0, p0, Ldc/a$d;->f:F

    .line 6
    .line 7
    iput v0, p0, Ldc/a$d;->m:F

    .line 8
    .line 9
    iget v0, p0, Ldc/a$d;->g:F

    .line 10
    .line 11
    iput v0, p0, Ldc/a$d;->n:F

    .line 12
    .line 13
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v1, p0, Ldc/a$d;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ldc/a$d;->i:F

    .line 7
    .line 8
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Ldc/a$d;->e:F

    .line 12
    .line 13
    iget v2, p0, Ldc/a$d;->g:F

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
    iget v0, p0, Ldc/a$d;->f:F

    .line 21
    .line 22
    add-float/2addr v0, v2

    .line 23
    mul-float/2addr v0, v3

    .line 24
    sub-float v7, v0, v6

    .line 25
    .line 26
    iget-object v0, p0, Ldc/a$d;->b:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget v2, p0, Ldc/a$d;->x:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    iget-object v5, p0, Ldc/a$d;->b:Landroid/graphics/Paint;

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    move v2, v6

    .line 38
    move v3, v7

    .line 39
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v6, v7, p2}, Ldc/a$d;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Ldc/a$d;->u:I

    .line 46
    .line 47
    const/16 v1, 0xff

    .line 48
    .line 49
    if-ge v0, v1, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Ldc/a$d;->v:Landroid/graphics/Paint;

    .line 52
    .line 53
    iget v2, p0, Ldc/a$d;->w:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Ldc/a$d;->v:Landroid/graphics/Paint;

    .line 59
    .line 60
    iget v2, p0, Ldc/a$d;->u:I

    .line 61
    .line 62
    sub-int/2addr v1, v2

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    div-int/lit8 p2, p2, 0x2

    .line 79
    .line 80
    int-to-float p2, p2

    .line 81
    iget-object v2, p0, Ldc/a$d;->v:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Ldc/a$d;->r:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/a$d;->j:[I

    .line 2
    .line 3
    invoke-direct {p0}, Ldc/a$d;->g()I

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

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/a$d;->j:[I

    .line 2
    .line 3
    iget v1, p0, Ldc/a$d;->k:I

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldc/a$d;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Ldc/a$d;->x(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldc/a$d;->l:F

    .line 3
    .line 4
    iput v0, p0, Ldc/a$d;->m:F

    .line 5
    .line 6
    iput v0, p0, Ldc/a$d;->n:F

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ldc/a$d;->D(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ldc/a$d;->z(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ldc/a$d;->B(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a$d;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public r(FF)V
    .locals 0

    .line 1
    float-to-int p1, p1

    .line 2
    iput p1, p0, Ldc/a$d;->s:I

    .line 3
    .line 4
    float-to-int p1, p2

    .line 5
    iput p1, p0, Ldc/a$d;->t:I

    .line 6
    .line 7
    return-void
.end method

.method public s(F)V
    .locals 1

    .line 1
    iget v0, p0, Ldc/a$d;->q:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Ldc/a$d;->q:F

    .line 8
    .line 9
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a$d;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public u(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ldc/a$d;->r:D

    .line 2
    .line 3
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a$d;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public w(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/a$d;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public x(I)V
    .locals 1

    .line 1
    iput p1, p0, Ldc/a$d;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Ldc/a$d;->j:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    iput p1, p0, Ldc/a$d;->x:I

    .line 8
    .line 9
    return-void
.end method

.method public y([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Ldc/a$d;->j:[I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ldc/a$d;->x(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public z(F)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/a$d;->f:F

    .line 2
    .line 3
    invoke-direct {p0}, Ldc/a$d;->o()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
