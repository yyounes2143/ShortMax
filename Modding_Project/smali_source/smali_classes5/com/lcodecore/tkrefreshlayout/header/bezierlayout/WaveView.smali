.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field private a:I

.field private b:I

.field c:Landroid/graphics/Path;

.field d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:Landroid/graphics/Path;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:Landroid/graphics/Paint;

    .line 14
    .line 15
    const v1, -0xe0dbda

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:Landroid/graphics/Paint;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getHeadHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getWaveHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:Landroid/graphics/Path;

    .line 10
    .line 11
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    div-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    int-to-float v1, v1

    .line 27
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:I

    .line 28
    .line 29
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:I

    .line 30
    .line 31
    add-int/2addr v3, v4

    .line 32
    int-to-float v3, v3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    int-to-float v4, v4

    .line 38
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:I

    .line 39
    .line 40
    int-to-float v5, v5

    .line 41
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:Landroid/graphics/Path;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-float v1, v1

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->c:Landroid/graphics/Path;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public setHeadHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setWaveColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setWaveHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->a:I

    .line 2
    .line 3
    return-void
.end method
