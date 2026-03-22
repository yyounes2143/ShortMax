.class Lio/bidmachine/ads/networks/vast/a;
.super Lxq/h;
.source "VastFullScreenAd.java"


# instance fields
.field private final a:Lio/bidmachine/iab/vast/VideoType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lio/bidmachine/iab/vast/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lio/bidmachine/ads/networks/vast/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/bidmachine/ads/networks/vast/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lio/bidmachine/iab/vast/activity/VastView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Lio/bidmachine/iab/vast/VideoType;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/VideoType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lxq/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/a;->a:Lio/bidmachine/iab/vast/VideoType;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic l(Lio/bidmachine/ads/networks/vast/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/vast/a;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->g:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->e0()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->g:Lio/bidmachine/iab/vast/activity/VastView;

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
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/vast/a;->n(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->e:Lio/bidmachine/ads/networks/vast/b;

    .line 3
    .line 4
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->f:Lio/bidmachine/ads/networks/vast/d;

    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->j()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v2, Lio/bidmachine/ads/networks/vast/a$a;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/vast/a$a;-><init>(Lio/bidmachine/ads/networks/vast/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->R(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/vast/a;->m()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/a;->d:Lio/bidmachine/iab/vast/a;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->d:Lio/bidmachine/iab/vast/a;

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public k(Lio/bidmachine/ContextProvider;Lxq/i;Lio/bidmachine/RendererConfiguration;)V
    .locals 9
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
    iget-object p3, p0, Lio/bidmachine/ads/networks/vast/a;->d:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Lio/bidmachine/iab/vast/a;->u()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    new-instance p3, Lio/bidmachine/ads/networks/vast/d;

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 14
    .line 15
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 16
    .line 17
    invoke-direct {p3, p2, v0, v1}, Lio/bidmachine/ads/networks/vast/d;-><init>(Lxq/i;Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lio/bidmachine/ads/networks/vast/a;->f:Lio/bidmachine/ads/networks/vast/d;

    .line 21
    .line 22
    iget-object v2, p0, Lio/bidmachine/ads/networks/vast/a;->d:Lio/bidmachine/iab/vast/a;

    .line 23
    .line 24
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Lio/bidmachine/ads/networks/vast/a;->a:Lio/bidmachine/iab/vast/VideoType;

    .line 29
    .line 30
    iget-object v5, p0, Lio/bidmachine/ads/networks/vast/a;->f:Lio/bidmachine/ads/networks/vast/d;

    .line 31
    .line 32
    iget-object v6, p0, Lio/bidmachine/ads/networks/vast/a;->g:Lio/bidmachine/iab/vast/activity/VastView;

    .line 33
    .line 34
    iget-object v7, p0, Lio/bidmachine/ads/networks/vast/a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 35
    .line 36
    iget-object v8, p0, Lio/bidmachine/ads/networks/vast/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 37
    .line 38
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/iab/vast/a;->x(Landroid/content/Context;Lio/bidmachine/iab/vast/VideoType;Ltm/a;Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastPlaybackListener;Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, "VAST fullscreen object is null or can not find video file"

    .line 43
    .line 44
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public n(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
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
    new-instance p3, Lio/bidmachine/ads/networks/vast/e;

    .line 2
    .line 3
    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/vast/e;-><init>(Lxq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/vast/e;->a(Lxq/c;)Z

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean p4, p3, Lio/bidmachine/ads/networks/vast/e;->h:Z

    .line 14
    .line 15
    if-eqz p4, :cond_1

    .line 16
    .line 17
    new-instance p4, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 18
    .line 19
    invoke-direct {p4}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 23
    .line 24
    new-instance p4, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 25
    .line 26
    invoke-direct {p4}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 30
    .line 31
    :cond_1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p4, Lio/bidmachine/ads/networks/vast/b;

    .line 36
    .line 37
    invoke-direct {p4, p2}, Lio/bidmachine/ads/networks/vast/b;-><init>(Lxq/i;)V

    .line 38
    .line 39
    .line 40
    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->e:Lio/bidmachine/ads/networks/vast/b;

    .line 41
    .line 42
    new-instance p2, Lio/bidmachine/iab/vast/activity/VastView;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/a;->g:Lio/bidmachine/iab/vast/activity/VastView;

    .line 48
    .line 49
    invoke-static {}, Lio/bidmachine/iab/vast/a;->V()Lio/bidmachine/iab/vast/a$a;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object p4, p3, Lio/bidmachine/ads/networks/vast/e;->c:Lio/bidmachine/iab/CacheControl;

    .line 54
    .line 55
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/a$a;->d(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/vast/a$a;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget p4, p3, Lio/bidmachine/ads/networks/vast/e;->d:F

    .line 60
    .line 61
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/a$a;->f(F)Lio/bidmachine/iab/vast/a$a;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget p4, p3, Lio/bidmachine/ads/networks/vast/e;->e:I

    .line 66
    .line 67
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/a$a;->g(I)Lio/bidmachine/iab/vast/a$a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget p4, p3, Lio/bidmachine/ads/networks/vast/e;->f:I

    .line 72
    .line 73
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/a$a;->e(I)Lio/bidmachine/iab/vast/a$a;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iget-boolean p4, p3, Lio/bidmachine/ads/networks/vast/e;->g:Z

    .line 78
    .line 79
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/a$a;->b(Z)Lio/bidmachine/iab/vast/a$a;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 84
    .line 85
    invoke-virtual {p2, p4}, Lio/bidmachine/iab/vast/a$a;->c(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/a$a;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/a$a;->a()Lio/bidmachine/iab/vast/a;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/a;->d:Lio/bidmachine/iab/vast/a;

    .line 94
    .line 95
    iget-object p3, p3, Lio/bidmachine/ads/networks/vast/e;->b:Ljava/lang/String;

    .line 96
    .line 97
    iget-object p4, p0, Lio/bidmachine/ads/networks/vast/a;->e:Lio/bidmachine/ads/networks/vast/b;

    .line 98
    .line 99
    invoke-virtual {p2, p1, p3, p4}, Lio/bidmachine/iab/vast/a;->T(Landroid/content/Context;Ljava/lang/String;Ltm/e;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
