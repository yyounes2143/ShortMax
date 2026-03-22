.class public final Lio/bidmachine/rendering/internal/view/c;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ltp/h;
.implements Ltp/v;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 16
    .line 17
    sget p1, Ltp/k;->c:I

    .line 18
    .line 19
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic getLineBackgroundColor$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLineColor$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLinePaint$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getPercent$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lrq/e;)V
    .locals 1
    .param p1    # Lrq/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appearanceParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrq/e;->i()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lrq/e;->o()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public e(JJF)V
    .locals 0

    .line 1
    iput p5, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getLineBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLinePaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr v1, v2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    add-float/2addr v1, v2

    .line 37
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v3, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v4, v2

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v0

    .line 54
    int-to-float v6, v2

    .line 55
    iget-object v8, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 56
    .line 57
    move-object v3, p1

    .line 58
    move v5, v1

    .line 59
    move v7, v1

    .line 60
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 64
    .line 65
    iget v3, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    .line 69
    .line 70
    int-to-float v0, v0

    .line 71
    iget v2, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    .line 72
    .line 73
    mul-float/2addr v0, v2

    .line 74
    const/16 v2, 0x64

    .line 75
    .line 76
    int-to-float v2, v2

    .line 77
    div-float/2addr v0, v2

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    int-to-float v4, v2

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-float v2, v2

    .line 88
    add-float v6, v2, v0

    .line 89
    .line 90
    iget-object v8, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 91
    .line 92
    move-object v3, p1

    .line 93
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    int-to-float p2, p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setLineBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPercent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    .line 2
    .line 3
    return-void
.end method
