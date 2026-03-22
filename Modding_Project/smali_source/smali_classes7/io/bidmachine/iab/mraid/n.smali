.class public Lio/bidmachine/iab/mraid/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    iput p1, p0, Lio/bidmachine/iab/mraid/n;->a:F

    .line 15
    .line 16
    new-instance p1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->b:Landroid/graphics/Rect;

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->c:Landroid/graphics/Rect;

    .line 29
    .line 30
    new-instance p1, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->d:Landroid/graphics/Rect;

    .line 36
    .line 37
    new-instance p1, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->e:Landroid/graphics/Rect;

    .line 43
    .line 44
    new-instance p1, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->f:Landroid/graphics/Rect;

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->g:Landroid/graphics/Rect;

    .line 57
    .line 58
    new-instance p1, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->h:Landroid/graphics/Rect;

    .line 64
    .line 65
    new-instance p1, Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lio/bidmachine/iab/mraid/n;->i:Landroid/graphics/Rect;

    .line 71
    .line 72
    return-void
.end method

.method private e(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    if-ne v0, p3, :cond_1

    .line 4
    .line 5
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    if-ne v0, p4, :cond_1

    .line 8
    .line 9
    add-int v0, p3, p5

    .line 10
    .line 11
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    add-int v0, p4, p6

    .line 16
    .line 17
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    add-int/2addr p5, p3

    .line 25
    add-int/2addr p6, p4

    .line 26
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/n;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1
.end method


# virtual methods
.method a()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->g:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method b(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lio/bidmachine/iab/mraid/n;->a:F

    .line 5
    .line 6
    invoke-static {v0, v1}, Lsm/q;->H(FF)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    iget v2, p0, Lio/bidmachine/iab/mraid/n;->a:F

    .line 14
    .line 15
    invoke-static {v1, v2}, Lsm/q;->H(FF)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    iget v3, p0, Lio/bidmachine/iab/mraid/n;->a:F

    .line 23
    .line 24
    invoke-static {v2, v3}, Lsm/q;->H(FF)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    int-to-float p1, p1

    .line 31
    iget v3, p0, Lio/bidmachine/iab/mraid/n;->a:F

    .line 32
    .line 33
    invoke-static {p1, v3}, Lsm/q;->H(FF)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method c(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->b:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v0, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->b:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lio/bidmachine/iab/mraid/n;->b:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget-object p2, p0, Lio/bidmachine/iab/mraid/n;->c:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/mraid/n;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method d(IIII)Z
    .locals 7

    .line 1
    iget-object v1, p0, Lio/bidmachine/iab/mraid/n;->f:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/iab/mraid/n;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/iab/mraid/n;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method f(IIII)Z
    .locals 7

    .line 1
    iget-object v1, p0, Lio/bidmachine/iab/mraid/n;->h:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/iab/mraid/n;->i:Landroid/graphics/Rect;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/iab/mraid/n;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method g()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->i:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method h(IIII)Z
    .locals 7

    .line 1
    iget-object v1, p0, Lio/bidmachine/iab/mraid/n;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/iab/mraid/n;->e:Landroid/graphics/Rect;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/iab/mraid/n;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method i()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method j()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/n;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method
