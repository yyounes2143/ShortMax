.class public final Lio/bidmachine/iab/utils/CircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"

# interfaces
.implements Lsm/h;


# instance fields
.field a:Lsm/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    const/high16 v1, 0x41000000    # 8.0f

    .line 12
    .line 13
    invoke-static {p1, v1}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lsm/c;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lsm/c;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 26
    .line 27
    const/high16 p1, 0x40800000    # 4.0f

    .line 28
    .line 29
    mul-float/2addr v0, p1

    .line 30
    invoke-virtual {v1, v0}, Lsm/c;->q(F)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 34
    .line 35
    const/high16 v0, -0x10000

    .line 36
    .line 37
    filled-new-array {v0}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lsm/c;->o([I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 45
    .line 46
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lsm/c;->p(Landroid/graphics/Paint$Cap;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    int-to-float v0, v0

    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    div-float/2addr v2, v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    div-float/2addr v3, v1

    .line 30
    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    sub-int/2addr p1, p2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    sub-int/2addr p1, p2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int/2addr p2, v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int/2addr p2, v0

    .line 33
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    int-to-float p1, p1

    .line 40
    const/high16 p2, 0x40000000    # 2.0f

    .line 41
    .line 42
    div-float/2addr p1, p2

    .line 43
    iget-object p2, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 44
    .line 45
    invoke-virtual {p2}, Lsm/c;->m()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    sub-float/2addr p1, p2

    .line 50
    invoke-virtual {v0, p1}, Lsm/c;->n(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsm/c;->o([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->E(Landroid/content/Context;)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lsm/c;->q(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lsm/c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->D()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    filled-new-array {v1}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lsm/c;->o([I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->i()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
