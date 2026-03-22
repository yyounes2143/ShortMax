.class public Lio/bidmachine/ads/networks/gam/GAMAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "GAMAdapter.java"


# instance fields
.field private a:Lio/bidmachine/ads/networks/gam/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-string v0, "3.4.0.3"

    const/16 v1, 0x10

    const-string v2, "gam"

    const-string v3, "null"

    invoke-direct {p0, v2, v3, v0, v1}, Lio/bidmachine/ads/networks/gam/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/AdsType;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/ads/networks/gam/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/ads/networks/gam/r;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge p1, v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v2}, Lio/bidmachine/ads/networks/gam/s;->a(Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/r;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/gam/r;->a()Lio/bidmachine/AdsFormat;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v0

    .line 43
    :catchall_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "GAM"

    .line 2
    .line 3
    return-object v0
.end method

.method public clearAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/o;->r(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public createBanner()Lxq/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/gam/a;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/a;-><init>(Lio/bidmachine/ads/networks/gam/o;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "GAMNetwork is null"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public createInterstitial()Lxq/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/gam/d;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/d;-><init>(Lio/bidmachine/ads/networks/gam/o;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "GAMNetwork is null"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public createRewarded()Lxq/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/gam/q;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/q;-><init>(Lio/bidmachine/ads/networks/gam/o;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "GAMNetwork is null"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/o;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method protected isNetworkInitializationStatusCheckSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/o;->h()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 1
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
    const-string p1, "ad_unit_id"

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lfr/a;->b(Ljava/lang/String;)Lfr/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lfr/a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string p1, "GAM network is null"

    .line 26
    .line 27
    invoke-static {p1}, Lfr/a;->a(Ljava/lang/String;)Lfr/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lfr/a;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0, p3, p4}, Lio/bidmachine/ads/networks/gam/o;->q(Lio/bidmachine/NetworkAdUnit;Ljava/lang/String;)Lio/bidmachine/ads/networks/gam/t;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    iget-object p4, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 40
    .line 41
    invoke-interface {p2}, Lxq/d;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lio/bidmachine/AdRequestParameters;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p4, p2}, Lio/bidmachine/ads/networks/gam/o;->e(Lio/bidmachine/AdsFormat;)V

    .line 50
    .line 51
    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    const-string p1, "Can\'t find idle ad"

    .line 55
    .line 56
    invoke-static {p1}, Lfr/a;->a(Ljava/lang/String;)Lfr/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lfr/a;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/t;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/t;->d()F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p4, "score"

    .line 85
    .line 86
    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam/t;->c()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string p3, "price"

    .line 98
    .line 99
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-interface {p5, p2}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public onLossAuction(Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam/o;->r(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 9
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
    const-string p2, "supported_versions_range"

    .line 2
    .line 3
    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p1, "supported_versions_range not provided"

    .line 14
    .line 15
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam/p0;->c(Ljava/lang/String;)Ldm/b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string p1, "Unsupported GAM version (VersionWrapper not found)"

    .line 26
    .line 27
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v2, p1}, Ldm/b;->d(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    const-string p1, "GAM is absent or used unsupported version"

    .line 42
    .line 43
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string p2, "waterfall_configurations"

    .line 48
    .line 49
    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const-string p1, "waterfall_configurations not provided"

    .line 60
    .line 61
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    invoke-direct {p0, p2}, Lio/bidmachine/ads/networks/gam/GAMAdapter;->b(Ljava/lang/String;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_5

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const-string p2, "request_agent"

    .line 79
    .line 80
    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string p2, "expiration_time"

    .line 85
    .line 86
    invoke-interface {p3, p2}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/16 v0, 0xe10

    .line 91
    .line 92
    invoke-static {p2, v0}, Lio/bidmachine/core/g;->f0(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    const-string v0, "override_callbacks"

    .line 97
    .line 98
    invoke-interface {p3, v0}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    new-instance p3, Lio/bidmachine/ads/networks/gam/o;

    .line 107
    .line 108
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 113
    .line 114
    int-to-long v6, p2

    .line 115
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    move-object v0, p3

    .line 120
    move-object v1, p1

    .line 121
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/ads/networks/gam/o;-><init>(Landroid/content/Context;Ldm/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JZ)V

    .line 122
    .line 123
    .line 124
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 125
    .line 126
    invoke-virtual {p3, p1}, Lio/bidmachine/ads/networks/gam/o;->g(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 130
    .line 131
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/o;->d()V

    .line 132
    .line 133
    .line 134
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_5
    :goto_0
    const-string p1, "waterfall_configurations is empty"

    .line 139
    .line 140
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
