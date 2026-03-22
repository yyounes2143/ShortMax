.class public Lio/bidmachine/ads/networks/vast/VastAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "VastAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lio/bidmachine/AdsType;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    const-string v3, "vast"

    .line 10
    .line 11
    const-string v4, "3.4.0"

    .line 12
    .line 13
    const-string v5, "3.4.0.1"

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v2, p0

    .line 17
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public createInterstitial()Lxq/h;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/vast/a;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/vast/VideoType;->NonRewarded:Lio/bidmachine/iab/vast/VideoType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/vast/a;-><init>(Lio/bidmachine/iab/vast/VideoType;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public createRewarded()Lxq/h;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/vast/a;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/vast/VideoType;->Rewarded:Lio/bidmachine/iab/vast/VideoType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/vast/a;-><init>(Lio/bidmachine/iab/vast/VideoType;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected isNetworkInitializationStatusCheckSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/HeaderBiddingAdRequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/HeaderBiddingCollectParamsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/InitializationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkConfigParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/NetworkInitializationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lym/a;->f(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLogging(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lio/bidmachine/iab/utils/Logger$LogLevel;->none:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 7
    .line 8
    :goto_0
    invoke-static {p1}, Ltm/d;->d(Lio/bidmachine/iab/utils/Logger$LogLevel;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
