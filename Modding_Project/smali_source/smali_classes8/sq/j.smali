.class public Lsq/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ltq/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltq/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ltq/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsq/j;->a:Ltq/d;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lyq/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsq/j;->b(Lyq/d;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b(Lyq/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lyq/d;->execute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, p1

    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lyq/t;->h(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lsq/j;->a:Ltq/d;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ltq/d;->cancel(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static e(Landroid/content/Context;F)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static f()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static g(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aget v3, v0, v2

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    aget v5, v0, v4

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    aget v2, v0, v2

    .line 20
    .line 21
    add-int/2addr v6, v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    aget v0, v0, v4

    .line 27
    .line 28
    add-int/2addr p0, v0

    .line 29
    invoke-direct {v1, v3, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public static h(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/2addr v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sub-int/2addr v1, v2

    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sub-int/2addr v3, p0

    .line 53
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    mul-int/2addr v1, p0

    .line 58
    sub-int p0, v0, v1

    .line 59
    .line 60
    int-to-float p0, p0

    .line 61
    int-to-float p1, v0

    .line 62
    div-float/2addr p0, p1

    .line 63
    return p0
.end method

.method public static i(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float p0, p0, v0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static j(I)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method public static k(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lsq/j;->a:Ltq/d;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ltq/d;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static l(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lsq/j;->a:Ltq/d;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1, p2}, Ltq/d;->schedule(Ljava/lang/Runnable;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static m(Ljava/lang/Object;Lyq/d;)V
    .locals 1
    .param p1    # Lyq/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TI;",
            "Lyq/d<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lsq/i;

    .line 5
    .line 6
    invoke-direct {v0, p1, p0}, Lsq/i;-><init>(Lyq/d;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static n(Landroid/app/Activity;Lio/bidmachine/rendering/model/Orientation;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/rendering/model/Orientation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Orientation;->getActivityOrientation()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x4

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static o(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "unknown"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "GONE"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string p0, "INVISIBLE"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const-string p0, "VISIBLE"

    .line 20
    .line 21
    return-object p0
.end method
