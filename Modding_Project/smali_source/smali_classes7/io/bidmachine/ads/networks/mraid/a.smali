.class Lio/bidmachine/ads/networks/mraid/a;
.super Lxq/e;
.source "MraidBannerAd.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:Lio/bidmachine/iab/mraid/MraidView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lxq/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic j(Lio/bidmachine/ads/networks/mraid/a;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lio/bidmachine/ads/networks/mraid/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/a;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->b:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->T()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->b:Lio/bidmachine/iab/mraid/MraidView;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p2, Lxq/f;

    .line 2
    .line 3
    check-cast p3, Lxq/g;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/mraid/a;->m(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/ads/networks/mraid/a$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/mraid/a$b;-><init>(Lio/bidmachine/ads/networks/mraid/a;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->R(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/a;->l()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-super {p0}, Lxq/b;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->y()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public i(Lio/bidmachine/RendererConfiguration;)V
    .locals 2
    .param p1    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lxq/p;->i(Lio/bidmachine/RendererConfiguration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/a;->b:Lio/bidmachine/iab/mraid/MraidView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/MraidView;->p0(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public m(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 6
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v2, Lio/bidmachine/ads/networks/mraid/m;

    .line 2
    .line 3
    invoke-direct {v2, p4}, Lio/bidmachine/ads/networks/mraid/m;-><init>(Lxq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v2, p2}, Lio/bidmachine/ads/networks/mraid/m;->a(Lxq/c;)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p3, v2, Lio/bidmachine/ads/networks/mraid/m;->g:Lio/bidmachine/iab/CacheControl;

    .line 14
    .line 15
    sget-object p4, Lio/bidmachine/iab/CacheControl;->FullLoad:Lio/bidmachine/iab/CacheControl;

    .line 16
    .line 17
    if-ne p3, p4, :cond_1

    .line 18
    .line 19
    sget-object p3, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object p3, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    .line 23
    .line 24
    :goto_0
    invoke-interface {p2, p3}, Lxq/c;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-boolean p1, v2, Lio/bidmachine/ads/networks/mraid/m;->f:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    invoke-direct {p1, p3}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 42
    .line 43
    iget-object p3, v2, Lio/bidmachine/ads/networks/mraid/m;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    move-object v5, p1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object p1, v2, Lio/bidmachine/ads/networks/mraid/m;->b:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :goto_2
    new-instance p1, Lio/bidmachine/ads/networks/mraid/a$a;

    .line 55
    .line 56
    move-object v0, p1

    .line 57
    move-object v1, p0

    .line 58
    move-object v3, p2

    .line 59
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/mraid/a$a;-><init>(Lio/bidmachine/ads/networks/mraid/a;Lio/bidmachine/ads/networks/mraid/m;Lxq/f;Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
