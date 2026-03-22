.class public Lio/bidmachine/ads/networks/mraid/MraidAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "MraidAdapter.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/ads/networks/mraid/MraidAdapter;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/AdsType;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    const-string v4, "mraid"

    .line 12
    .line 13
    const-string v5, "3.4.0"

    .line 14
    .line 15
    const-string v6, "3.4.0.1"

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v3, p0

    .line 19
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public createBanner()Lxq/e;
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/mraid/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createInterstitial()Lxq/h;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/g;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Static:Lio/bidmachine/iab/mraid/MraidType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/g;-><init>(Lio/bidmachine/iab/mraid/MraidType;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public createRewarded()Lxq/h;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/g;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Rewarded:Lio/bidmachine/iab/mraid/MraidType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/g;-><init>(Lio/bidmachine/iab/mraid/MraidType;)V

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
    .locals 1
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
    sget-object p2, Lio/bidmachine/ads/networks/mraid/MraidAdapter;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lrm/c;

    .line 12
    .line 13
    invoke-direct {p2}, Lrm/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lrm/b;->b(Lrm/a;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lym/a;->f(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    .line 27
    .line 28
    .line 29
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
    invoke-static {p1}, Lio/bidmachine/iab/mraid/h;->g(Lio/bidmachine/iab/utils/Logger$LogLevel;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
