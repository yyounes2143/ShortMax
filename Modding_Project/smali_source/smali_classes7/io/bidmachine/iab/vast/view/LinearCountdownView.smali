.class public Lio/bidmachine/iab/vast/view/LinearCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lsm/h;


# instance fields
.field private final a:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:I

.field private e:I


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
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 4
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 5
    sget p1, Lsm/a;->a:I

    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    .line 7
    invoke-direct {p0}, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 11
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 12
    sget p1, Lsm/a;->a:I

    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    .line 14
    invoke-direct {p0}, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

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
    invoke-static {v0, v1}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
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
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v1, v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    add-float/2addr v1, v2

    .line 32
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    .line 33
    .line 34
    iget v3, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget v3, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v4, v2

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/2addr v2, v0

    .line 56
    int-to-float v6, v2

    .line 57
    iget-object v8, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    .line 58
    .line 59
    move-object v3, p1

    .line 60
    move v5, v1

    .line 61
    move v7, v1

    .line 62
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget v3, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    int-to-float v0, v0

    .line 73
    iget v2, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    .line 74
    .line 75
    mul-float/2addr v0, v2

    .line 76
    const/high16 v2, 0x42c80000    # 100.0f

    .line 77
    .line 78
    div-float/2addr v0, v2

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    int-to-float v4, v2

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-float v2, v2

    .line 89
    add-float v6, v2, v0

    .line 90
    .line 91
    iget-object v8, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    .line 92
    .line 93
    move-object v3, p1

    .line 94
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->D()Ljava/lang/Integer;

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
    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->i()Ljava/lang/Integer;

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
    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->E(Landroid/content/Context;)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->y()Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
