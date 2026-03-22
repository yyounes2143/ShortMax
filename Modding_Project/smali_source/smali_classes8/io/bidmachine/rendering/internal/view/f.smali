.class public Lio/bidmachine/rendering/internal/view/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/f$b;,
        Lio/bidmachine/rendering/internal/view/f$d;,
        Lio/bidmachine/rendering/internal/view/f$c;
    }
.end annotation


# instance fields
.field private final a:Lsq/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/internal/view/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lfq/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lio/bidmachine/rendering/internal/view/f$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrq/c;Leq/c;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrq/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Leq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsq/h;

    .line 5
    .line 6
    const-string v1, "PlaceholderView"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lsq/h;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lsq/h;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    :goto_0
    move-object v2, p2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Ltp/k;->b()Lrq/c;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance v3, Lsq/h;

    .line 23
    .line 24
    const-string p2, "PlaceholderViewAdPhaseController"

    .line 25
    .line 26
    invoke-direct {v3, p2}, Lsq/h;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lio/bidmachine/rendering/internal/h;->j()Lio/bidmachine/rendering/internal/h;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v4, Lio/bidmachine/rendering/internal/state/c;

    .line 34
    .line 35
    invoke-virtual {v3}, Lsq/h;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v4, v0, p2}, Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/h;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lio/bidmachine/rendering/internal/controller/h;

    .line 43
    .line 44
    new-instance v5, Lio/bidmachine/rendering/internal/view/f$b;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-direct {v5, p0, v0}, Lio/bidmachine/rendering/internal/view/f$b;-><init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/internal/view/f$a;)V

    .line 48
    .line 49
    .line 50
    move-object v0, p2

    .line 51
    move-object v1, p1

    .line 52
    move-object v6, p3

    .line 53
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/internal/controller/h;-><init>(Landroid/content/Context;Lrq/c;Lsq/h;Lio/bidmachine/rendering/internal/state/c;Lfq/r;Leq/c;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lfq/q;

    .line 57
    .line 58
    new-instance p2, Lio/bidmachine/rendering/internal/view/d;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lio/bidmachine/rendering/internal/view/d;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/view/d;

    .line 64
    .line 65
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/view/d;->d()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/f;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/rendering/internal/view/f;Lrq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/f;->g(Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/f;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lio/bidmachine/rendering/internal/view/f;)Lsq/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lsq/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/rendering/internal/view/f;Lrq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/f;->j(Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic g(Lrq/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/internal/view/f$d;->a(Lrq/n;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static synthetic h(Lio/bidmachine/rendering/internal/view/f;)Lio/bidmachine/rendering/internal/view/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/f;->b:Lio/bidmachine/rendering/internal/view/d;

    .line 2
    .line 3
    return-object p0
.end method

.method private j(Lrq/n;)V
    .locals 3
    .param p1    # Lrq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "notifyBrokenCreativeEvent"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Loq/c;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Loq/c;-><init>(Lio/bidmachine/rendering/internal/view/f;Lrq/n;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private synthetic k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/view/f$d;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/view/f$d;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "notifyPlaceholderClosed"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Loq/d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Loq/d;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method e()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/f;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$d;

    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lfq/q;

    .line 5
    .line 6
    invoke-interface {v0}, Lfq/q;->a()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Loq/f;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Loq/f;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "load"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lfq/q;

    .line 12
    .line 13
    invoke-interface {v0}, Lfq/q;->c()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method o()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "notifyPlaceholderLoaded"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Loq/e;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Loq/e;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lfq/q;

    .line 2
    .line 3
    invoke-interface {v0}, Lfq/q;->onShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lfq/q;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lfq/q;->a(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f;->c:Lfq/q;

    .line 2
    .line 3
    invoke-interface {v0}, Lfq/q;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lio/bidmachine/rendering/internal/view/f$d;)V
    .locals 0
    .param p1    # Lio/bidmachine/rendering/internal/view/f$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f;->d:Lio/bidmachine/rendering/internal/view/f$d;

    .line 2
    .line 3
    return-void
.end method
