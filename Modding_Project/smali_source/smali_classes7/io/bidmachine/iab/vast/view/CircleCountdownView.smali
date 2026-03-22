.class public Lio/bidmachine/iab/vast/view/CircleCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lsm/h;


# instance fields
.field private a:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:F

.field private g:F

.field private final h:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:F

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lsm/a;->a:I

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 3
    sget v0, Lsm/a;->c:I

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->f:F

    const v0, 0x3d924925

    .line 6
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g:F

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/high16 v0, 0x42580000    # 54.0f

    .line 9
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 10
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 11
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 12
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    sget p2, Lsm/a;->a:I

    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 16
    sget p2, Lsm/a;->c:I

    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->f:F

    const p2, 0x3d924925

    .line 19
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g:F

    .line 20
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 21
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/high16 p2, 0x42580000    # 54.0f

    .line 22
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 23
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 24
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    const/high16 p2, 0x42c80000    # 100.0f

    .line 25
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 26
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(FZ)F
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 12
    .line 13
    mul-float/2addr p2, v1

    .line 14
    sub-float/2addr v0, p2

    .line 15
    :cond_0
    div-float/2addr v0, v1

    .line 16
    float-to-double v2, v0

    .line 17
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    mul-double/2addr v2, v4

    .line 24
    double-to-float p2, v2

    .line 25
    mul-float/2addr p1, p2

    .line 26
    mul-float/2addr p1, v1

    .line 27
    sub-float/2addr p2, p1

    .line 28
    return p2
.end method

.method private b()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v1, v2

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    div-float/2addr v1, v2

    .line 41
    int-to-float v0, v0

    .line 42
    div-float v3, v0, v2

    .line 43
    .line 44
    sub-float/2addr v1, v3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    div-float/2addr v4, v2

    .line 51
    sub-float/2addr v4, v3

    .line 52
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 53
    .line 54
    add-float v5, v1, v0

    .line 55
    .line 56
    add-float/2addr v0, v4

    .line 57
    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 67
    .line 68
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    .line 75
    .line 76
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    .line 77
    .line 78
    iget-object v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 79
    .line 80
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 81
    .line 82
    iget v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 83
    .line 84
    div-float/2addr v4, v2

    .line 85
    add-float/2addr v3, v4

    .line 86
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 87
    .line 88
    add-float/2addr v2, v4

    .line 89
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 90
    .line 91
    sub-float/2addr v5, v4

    .line 92
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 93
    .line 94
    sub-float/2addr v1, v4

    .line 95
    invoke-virtual {v0, v3, v2, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x40400000    # 3.0f

    .line 7
    .line 8
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 14
    .line 15
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 14
    .line 15
    const/high16 v1, 0x43b40000    # 360.0f

    .line 16
    .line 17
    mul-float/2addr v0, v1

    .line 18
    const v2, 0x3c23d70a    # 0.01f

    .line 19
    .line 20
    .line 21
    mul-float/2addr v0, v2

    .line 22
    sub-float v5, v1, v0

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 25
    .line 26
    iget v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    iget-object v7, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 39
    .line 40
    iget-object v11, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/high16 v9, 0x43b40000    # 360.0f

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v6, p1

    .line 47
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    .line 72
    .line 73
    iget-object v7, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 74
    .line 75
    const/high16 v4, 0x43870000    # 270.0f

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v2, p1

    .line 79
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 13
    .line 14
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/RectF;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    .line 45
    .line 46
    :cond_2
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->f:F

    .line 47
    .line 48
    iget-boolean v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    .line 49
    .line 50
    invoke-direct {p0, v0, v2}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(FZ)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 55
    .line 56
    const/high16 v3, 0x40000000    # 2.0f

    .line 57
    .line 58
    div-float v3, v0, v3

    .line 59
    .line 60
    sub-float/2addr v2, v3

    .line 61
    iget v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    .line 62
    .line 63
    sub-float/2addr v4, v3

    .line 64
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    .line 79
    .line 80
    add-float v5, v2, v0

    .line 81
    .line 82
    add-float/2addr v0, v4

    .line 83
    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 87
    .line 88
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 89
    .line 90
    iget v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 91
    .line 92
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 93
    .line 94
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    .line 101
    .line 102
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    .line 103
    .line 104
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    .line 110
    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    iget-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 114
    .line 115
    if-nez p2, :cond_3

    .line 116
    .line 117
    new-instance p2, Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    .line 121
    .line 122
    iput-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 123
    .line 124
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 130
    .line 131
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 132
    .line 133
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 137
    .line 138
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    .line 144
    .line 145
    iget-object v6, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 146
    .line 147
    const/high16 v4, 0x43b40000    # 360.0f

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    const/4 v3, 0x0

    .line 151
    move-object v1, p1

    .line 152
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 17
    .line 18
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->t:I

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 37
    .line 38
    iget v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 44
    .line 45
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 46
    .line 47
    iget v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b:I

    .line 48
    .line 49
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g:F

    .line 59
    .line 60
    invoke-direct {p0, v3, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(FZ)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 68
    .line 69
    iget v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    .line 70
    .line 71
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    add-float/2addr v3, v4

    .line 84
    const/high16 v4, 0x40000000    # 2.0f

    .line 85
    .line 86
    div-float/2addr v3, v4

    .line 87
    sub-float/2addr v2, v3

    .line 88
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public g(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 12
    .line 13
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->t:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public getAccentColor()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->t:I

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->f(Landroid/graphics/Canvas;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 4
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->k()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->D()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->i()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->K()Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->E(Landroid/content/Context;)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->A(Landroid/content/Context;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->B(Landroid/content/Context;)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->z(Landroid/content/Context;)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->y()Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 121
    .line 122
    .line 123
    return-void
.end method
