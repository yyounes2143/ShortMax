.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "GAMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$a;
    }
.end annotation


# instance fields
.field a:Lio/bidmachine/ads/networks/gam_dynamic/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "3.4.0.0"

    const/16 v1, 0x10

    const-string v2, "null"

    invoke-direct {p0, p1, v2, v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

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


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "GAMDynamic"

    .line 2
    .line 3
    return-object v0
.end method

.method b(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Context;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lio/bidmachine/protobuf/Waterfall$Context;->parseFrom([B)Lio/bidmachine/protobuf/Waterfall$Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-object p1

    .line 11
    :catchall_0
    const/4 p1, 0x0

    .line 12
    return-object p1
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->b(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public createBanner()Lxq/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/h;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/h;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/o;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "GAMNetwork is null"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public createInterstitial()Lxq/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/n;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/n;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/o;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "GAMNetwork is null"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public createRewarded()Lxq/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/t;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/t;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/o;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "GAMNetwork is null"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/ads/networks/gam_dynamic/o;->getVersion()Ljava/lang/String;

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->isInitialized()Z

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "GAM network is null"

    .line 6
    .line 7
    invoke-static {p1}, Lfr/a;->a(Ljava/lang/String;)Lfr/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lfr/a;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdUnit;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p1, p3, p2}, Lio/bidmachine/ads/networks/gam_dynamic/o;->f(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/AdsFormat;)Lhm/j;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, "Can\'t find idle ad"

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
    new-instance p2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string p3, "ad_unit_id"

    .line 41
    .line 42
    invoke-interface {p1}, Lhm/j;->getAdUnitId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lhm/j;->getPrice()D

    .line 50
    .line 51
    .line 52
    move-result-wide p3

    .line 53
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    const-string p4, "price"

    .line 58
    .line 59
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lhm/j;->getCustomParamsMap()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-eqz p3, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    check-cast p4, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    if-nez p3, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-interface {p5, p2}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->b(Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 3
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
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->c(Ljava/lang/String;)Lim/b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

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
    invoke-interface {p2, p1}, Lim/b;->d(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

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
    const-string v0, "context"

    .line 48
    .line 49
    invoke-interface {p3, v0}, Lio/bidmachine/NetworkConfigParams;->removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const-string p1, "context not provided"

    .line 60
    .line 61
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    invoke-virtual {p0, p3}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->b(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Context;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    const-string p1, "context can\'t transform to model"

    .line 72
    .line 73
    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$a;

    .line 78
    .line 79
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/s;

    .line 91
    .line 92
    invoke-direct {v1, p1, v0, p3, p2}, Lio/bidmachine/ads/networks/gam_dynamic/s;-><init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/protobuf/Waterfall$Context;Lim/b;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 96
    .line 97
    invoke-interface {v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->init(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/GAMAdapter;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 101
    .line 102
    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->a()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    .line 106
    .line 107
    .line 108
    return-void
.end method
