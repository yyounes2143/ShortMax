.class Lio/bidmachine/ads/networks/mraid/g;
.super Lxq/h;
.source "MraidFullScreenAd.java"


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/MraidType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/bidmachine/iab/mraid/e;
    .annotation build Landroidx/annotation/Nullable;
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

.method constructor <init>(Lio/bidmachine/iab/mraid/MraidType;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lxq/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/g;->a:Lio/bidmachine/iab/mraid/MraidType;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic l(Lio/bidmachine/ads/networks/mraid/g;)Lio/bidmachine/iab/mraid/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lio/bidmachine/ads/networks/mraid/g;Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic n(Lio/bidmachine/ads/networks/mraid/g;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/g;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lio/bidmachine/ads/networks/mraid/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/g;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/e;->n()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

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
    check-cast p2, Lxq/i;

    .line 2
    .line 3
    check-cast p3, Lxq/j;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/mraid/g;->q(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/g;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/ads/networks/mraid/g$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/mraid/g$b;-><init>(Lio/bidmachine/ads/networks/mraid/g;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->R(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/g;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/g;->p()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public k(Lio/bidmachine/ContextProvider;Lxq/i;Lio/bidmachine/RendererConfiguration;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const-string p1, "MRAID fullscreen object is null"

    .line 6
    .line 7
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p3}, Lio/bidmachine/iab/mraid/e;->q()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    const-string p1, "MRAID fullscreen object is not ready"

    .line 22
    .line 23
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p3, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

    .line 32
    .line 33
    invoke-virtual {p3}, Lio/bidmachine/iab/mraid/e;->s()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    const-string p1, "MRAID fullscreen object is already was shown"

    .line 40
    .line 41
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p2, p0, Lio/bidmachine/ads/networks/mraid/g;->b:Lio/bidmachine/iab/mraid/e;

    .line 50
    .line 51
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p3, p0, Lio/bidmachine/ads/networks/mraid/g;->a:Lio/bidmachine/iab/mraid/MraidType;

    .line 56
    .line 57
    invoke-virtual {p2, p1, p3}, Lio/bidmachine/iab/mraid/e;->w(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public q(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 6
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/j;
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
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-boolean p1, v2, Lio/bidmachine/ads/networks/mraid/m;->f:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 22
    .line 23
    invoke-direct {p1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/g;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 27
    .line 28
    iget-object p3, v2, Lio/bidmachine/ads/networks/mraid/m;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    move-object v5, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, v2, Lio/bidmachine/ads/networks/mraid/m;->b:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    new-instance p1, Lio/bidmachine/ads/networks/mraid/g$a;

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    move-object v1, p0

    .line 43
    move-object v4, p2

    .line 44
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/mraid/g$a;-><init>(Lio/bidmachine/ads/networks/mraid/g;Lio/bidmachine/ads/networks/mraid/m;Landroid/content/Context;Lxq/i;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
