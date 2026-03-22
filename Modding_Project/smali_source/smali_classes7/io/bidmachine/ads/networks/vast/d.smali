.class Lio/bidmachine/ads/networks/vast/d;
.super Ljava/lang/Object;
.source "VastFullScreenAdShowListener.java"

# interfaces
.implements Ltm/a;


# instance fields
.field private final a:Lxq/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/i;Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;)V
    .locals 0
    .param p1    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/measurer/VastOMSDKAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->a:Lxq/i;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/d;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/ads/networks/vast/d;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic f(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/vast/d;->g(Lsm/d;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic g(Lsm/d;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lsm/d;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->a:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/c;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lio/bidmachine/iab/vast/a;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->a:Lxq/i;

    .line 2
    .line 3
    invoke-static {p2}, Lfr/d;->a(Lqm/a;)Lfr/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->a:Lxq/i;

    .line 9
    .line 10
    invoke-interface {p1}, Lxq/i;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Lsm/d;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lio/bidmachine/ads/networks/vast/d;->a:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p2}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    new-instance p2, Lio/bidmachine/ads/networks/vast/c;

    .line 9
    .line 10
    invoke-direct {p2, p3}, Lio/bidmachine/ads/networks/vast/c;-><init>(Lsm/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lsq/k;->c(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p3}, Lsm/d;->d()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public e(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Z)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/d;->a:Lxq/i;

    .line 9
    .line 10
    invoke-interface {p1}, Lxq/i;->onAdClosed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
