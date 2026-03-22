.class public Lio/bidmachine/rendering/internal/view/b;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ltp/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/b$c;,
        Lio/bidmachine/rendering/internal/view/b$d;,
        Lio/bidmachine/rendering/internal/view/b$b;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/rendering/internal/view/b$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Lio/bidmachine/rendering/internal/view/b$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:B

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

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
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Lio/bidmachine/rendering/internal/view/b$c;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/bidmachine/rendering/internal/view/b$c;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Lio/bidmachine/rendering/internal/view/b$c;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/high16 v0, 0x42c80000    # 100.0f

    .line 34
    .line 35
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->m:F

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput-byte v0, p0, Lio/bidmachine/rendering/internal/view/b;->o:B

    .line 39
    .line 40
    iput-boolean v1, p0, Lio/bidmachine/rendering/internal/view/b;->p:Z

    .line 41
    .line 42
    new-instance v0, Landroid/graphics/Paint;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget v3, Ltp/k;->d:I

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    .line 66
    .line 67
    sget v4, Ltp/k;->c:I

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    .line 92
    .line 93
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    .line 97
    .line 98
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 99
    .line 100
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/b;->f(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method static synthetic c(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Lio/bidmachine/rendering/internal/view/b$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(Landroid/content/Context;)V
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
    const/high16 v0, 0x42580000    # 54.0f

    .line 7
    .line 8
    invoke-static {p1, v0}, Lsq/j;->e(Landroid/content/Context;F)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iput v1, p0, Lio/bidmachine/rendering/internal/view/b;->j:F

    .line 14
    .line 15
    invoke-static {p1, v0}, Lsq/j;->e(Landroid/content/Context;F)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->k:F

    .line 21
    .line 22
    const/high16 v0, 0x40400000    # 3.0f

    .line 23
    .line 24
    invoke-static {p1, v0}, Lsq/j;->e(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-float p1, p1

    .line 29
    iput p1, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 30
    .line 31
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->d()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-byte v0, p0, Lio/bidmachine/rendering/internal/view/b;->o:B

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lio/bidmachine/rendering/internal/view/b;->m:F

    .line 5
    .line 6
    const/high16 v2, 0x43b40000    # 360.0f

    .line 7
    .line 8
    mul-float/2addr v1, v2

    .line 9
    const v3, 0x3c23d70a    # 0.01f

    .line 10
    .line 11
    .line 12
    mul-float/2addr v1, v3

    .line 13
    sub-float/2addr v2, v1

    .line 14
    mul-float v6, v0, v2

    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 17
    .line 18
    iget-object v5, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    .line 19
    .line 20
    const/high16 v3, 0x43b40000    # 360.0f

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v0, p1

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget-object v8, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/high16 v5, 0x43870000    # 270.0f

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v3, p1

    .line 36
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/b;->n:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lio/bidmachine/rendering/internal/view/b;->j:F

    .line 8
    .line 9
    iget v2, p0, Lio/bidmachine/rendering/internal/view/b;->k:F

    .line 10
    .line 11
    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-float/2addr v3, v4

    .line 24
    const/high16 v4, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr v3, v4

    .line 27
    sub-float/2addr v2, v3

    .line 28
    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static synthetic j(Lio/bidmachine/rendering/internal/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/b;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->h:Lio/bidmachine/rendering/internal/view/b$d;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/view/b$d;->a()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(Lrq/e;)V
    .locals 3
    .param p1    # Lrq/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lrq/e;->k()Lio/bidmachine/rendering/model/FontStyleType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/FontStyleType;->getTypeface()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lrq/e;->i()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lrq/e;->p(Landroid/content/Context;)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 53
    .line 54
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Lrq/e;->o()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->d()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method b(Landroid/graphics/RectF;Z)F
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget p2, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 8
    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    mul-float/2addr p2, v0

    .line 12
    sub-float/2addr p1, p2

    .line 13
    :cond_0
    const p2, 0x3f3504f3

    .line 14
    .line 15
    .line 16
    mul-float/2addr p1, p2

    .line 17
    const p2, 0x3f666666    # 0.9f

    .line 18
    .line 19
    .line 20
    mul-float/2addr p1, p2

    .line 21
    return p1
.end method

.method d()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

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
    sub-int/2addr v1, v0

    .line 38
    int-to-float v1, v1

    .line 39
    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v3, v0

    .line 47
    int-to-float v3, v3

    .line 48
    div-float/2addr v3, v2

    .line 49
    iget-object v4, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 50
    .line 51
    int-to-float v0, v0

    .line 52
    add-float v5, v1, v0

    .line 53
    .line 54
    add-float/2addr v0, v3

    .line 55
    invoke-virtual {v4, v1, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->j:F

    .line 65
    .line 66
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->k:F

    .line 73
    .line 74
    iget v0, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 75
    .line 76
    div-float/2addr v0, v2

    .line 77
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    .line 78
    .line 79
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 80
    .line 81
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 82
    .line 83
    add-float/2addr v3, v0

    .line 84
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 85
    .line 86
    add-float/2addr v4, v0

    .line 87
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 88
    .line 89
    sub-float/2addr v5, v0

    .line 90
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 91
    .line 92
    sub-float/2addr v2, v0

    .line 93
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    .line 97
    .line 98
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->d:Landroid/graphics/RectF;

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/rendering/internal/view/b;->b(Landroid/graphics/RectF;Z)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public e(FI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-gtz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iput p1, p0, Lio/bidmachine/rendering/internal/view/b;->m:F

    .line 13
    .line 14
    :cond_1
    iput p2, p0, Lio/bidmachine/rendering/internal/view/b;->n:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->h:Lio/bidmachine/rendering/internal/view/b$d;

    .line 6
    .line 7
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Lio/bidmachine/rendering/internal/view/b$c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->i()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lio/bidmachine/rendering/internal/view/b$b;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/internal/view/b$b;-><init>(Lio/bidmachine/rendering/internal/view/b;Lio/bidmachine/rendering/internal/view/b$a;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v1, 0x10

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lsq/j;->l(Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Lio/bidmachine/rendering/internal/view/b$c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->h()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->m()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Lio/bidmachine/rendering/internal/view/b$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/lang/Runnable;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {v0}, Lsq/j;->d(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/lang/Runnable;

    .line 16
    .line 17
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    if-eqz v0, :cond_1

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
    iget v0, p0, Lio/bidmachine/rendering/internal/view/b;->n:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/b;->g(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/b;->i(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    :cond_1
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
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setClockwise(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/bidmachine/rendering/internal/view/b;->o:B

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-byte p1, p0, Lio/bidmachine/rendering/internal/view/b;->o:B

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Lio/bidmachine/rendering/internal/view/b$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/view/b$c;->b(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lio/bidmachine/rendering/internal/view/b$d;)V
    .locals 0
    .param p1    # Lio/bidmachine/rendering/internal/view/b$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/b;->h:Lio/bidmachine/rendering/internal/view/b$d;

    .line 2
    .line 3
    return-void
.end method

.method public setOnlyVisibleWork(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/view/b;->p:Z

    .line 2
    .line 3
    return-void
.end method
