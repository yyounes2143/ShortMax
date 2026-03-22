.class public Lio/bidmachine/rendering/internal/view/e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(IILandroid/view/View;Lio/bidmachine/rendering/internal/view/e$a;)V
    .locals 5
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/rendering/internal/view/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p4}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/internal/view/e$a;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v2, v0, v1

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    cmpg-float v2, v0, v3

    .line 13
    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    invoke-static {p4}, Lio/bidmachine/rendering/internal/view/e$a;->h(Lio/bidmachine/rendering/internal/view/e$a;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0, v2, p1, v4, v0}, Lio/bidmachine/rendering/internal/view/e;->a(IIIF)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 35
    .line 36
    :cond_0
    invoke-static {p4}, Lio/bidmachine/rendering/internal/view/e$a;->k(Lio/bidmachine/rendering/internal/view/e$a;)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    cmpl-float v0, p1, v1

    .line 41
    .line 42
    if-lez v0, :cond_1

    .line 43
    .line 44
    cmpg-float v0, p1, v3

    .line 45
    .line 46
    if-gez v0, :cond_1

    .line 47
    .line 48
    invoke-static {p4}, Lio/bidmachine/rendering/internal/view/e$a;->l(Lio/bidmachine/rendering/internal/view/e$a;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    invoke-virtual {p0, v0, p2, p3, p1}, Lio/bidmachine/rendering/internal/view/e;->a(IIIF)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 67
    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method a(IIIF)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v1, -0x1

    .line 6
    if-ne p1, v1, :cond_1

    .line 7
    .line 8
    move p1, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p2, -0x2

    .line 11
    if-ne p1, p2, :cond_4

    .line 12
    .line 13
    if-nez p3, :cond_2

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_2
    move p1, p3

    .line 17
    :goto_0
    if-nez p1, :cond_3

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_3
    int-to-float p1, p1

    .line 21
    mul-float/2addr p1, p4

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_4
    return-object v0
.end method

.method b(II)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int/2addr p1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr p1, v0

    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr p2, v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sub-int/2addr p2, v0

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    instance-of v3, v2, Lio/bidmachine/rendering/internal/view/e$a;

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    check-cast v2, Lio/bidmachine/rendering/internal/view/e$a;

    .line 49
    .line 50
    invoke-direct {p0, p1, p2, v1, v2}, Lio/bidmachine/rendering/internal/view/e;->c(IILandroid/view/View;Lio/bidmachine/rendering/internal/view/e$a;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/view/e;->b(II)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
