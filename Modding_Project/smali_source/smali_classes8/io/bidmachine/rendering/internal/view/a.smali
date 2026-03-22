.class public Lio/bidmachine/rendering/internal/view/a;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    cmpg-float p1, p1, p2

    .line 8
    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v1, p1

    .line 21
    int-to-float v2, v0

    .line 22
    div-float v3, v1, v2

    .line 23
    .line 24
    iget v4, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    .line 25
    .line 26
    div-float v3, v4, v3

    .line 27
    .line 28
    const/high16 v5, 0x3f800000    # 1.0f

    .line 29
    .line 30
    sub-float/2addr v3, v5

    .line 31
    cmpl-float p2, v3, p2

    .line 32
    .line 33
    if-lez p2, :cond_1

    .line 34
    .line 35
    div-float/2addr v1, v4

    .line 36
    float-to-int v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    mul-float/2addr v2, v4

    .line 39
    float-to-int p1, v2

    .line 40
    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 41
    .line 42
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setVideoAspectRatio(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    .line 7
    .line 8
    cmpl-float v0, v0, p1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput p1, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method
