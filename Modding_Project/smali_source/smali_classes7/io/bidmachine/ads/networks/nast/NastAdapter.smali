.class public Lio/bidmachine/ads/networks/nast/NastAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "NastAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    filled-new-array {v0}, [Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    const-string v2, "nast"

    .line 8
    .line 9
    const-string v3, "1.0"

    .line 10
    .line 11
    const-string v4, "3.4.0.1"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public createNativeAd()Lxq/l;
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/nast/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/a;-><init>()V

    .line 4
    .line 5
    .line 6
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
