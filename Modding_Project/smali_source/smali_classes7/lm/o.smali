.class Llm/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
    .locals 4
    .param p0    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getRequestAgent()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getCustomTargetingMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method static b(Lfr/a;Lcom/google/android/gms/ads/AdError;)Lfr/a;
    .locals 2
    .param p0    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lfr/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p0, v1, p1}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static c(Lcom/google/android/gms/ads/BaseAdView;)Lhm/l;
    .locals 8
    .param p0    # Lcom/google/android/gms/ads/BaseAdView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v6, "k"

    .line 6
    .line 7
    const-string v7, "ae"

    .line 8
    .line 9
    const-string v1, "zza"

    .line 10
    .line 11
    const-string v2, "zzj"

    .line 12
    .line 13
    const-string v3, "zza"

    .line 14
    .line 15
    const-string v4, "a"

    .line 16
    .line 17
    const-string v5, "a"

    .line 18
    .line 19
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p0, v1}, Llm/o;->g(Ljava/lang/Object;[Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p0, v0

    .line 39
    :goto_0
    if-nez v1, :cond_2

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    new-instance v0, Lhm/l;

    .line 45
    .line 46
    invoke-direct {v0, v1, p0}, Lhm/l;-><init>(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method static d(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lhm/l;
    .locals 6
    .param p0    # Lcom/google/android/gms/ads/interstitial/InterstitialAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v4, "k"

    .line 6
    .line 7
    const-string v5, "ae"

    .line 8
    .line 9
    const-string v0, "zzc"

    .line 10
    .line 11
    const-string v1, "zza"

    .line 12
    .line 13
    const-string v2, "a"

    .line 14
    .line 15
    const-string v3, "a"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Llm/o;->g(Ljava/lang/Object;[Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v1, Lhm/l;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v1, v0, p0}, Lhm/l;-><init>(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method static e(Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lhm/l;
    .locals 5
    .param p0    # Lcom/google/android/gms/ads/rewarded/RewardedAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "k"

    .line 6
    .line 7
    const-string v1, "ae"

    .line 8
    .line 9
    const-string v2, "zzb"

    .line 10
    .line 11
    const-string v3, "zza"

    .line 12
    .line 13
    const-string v4, "b"

    .line 14
    .line 15
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Llm/o;->g(Ljava/lang/Object;[Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v1, Lhm/l;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, v0, p0}, Lhm/l;-><init>(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method static f(Lcom/google/android/gms/ads/AdValue;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
    .locals 4
    .param p0    # Lcom/google/android/gms/ads/AdValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/DoubleValue;->newBuilder()Lcom/explorestack/protobuf/DoubleValue$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    long-to-double v2, v2

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/DoubleValue$Builder;->setValue(D)Lcom/explorestack/protobuf/DoubleValue$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DoubleValue$Builder;->build()Lcom/explorestack/protobuf/DoubleValue;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->setValue(Lcom/explorestack/protobuf/DoubleValue;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->setCurrency(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UInt32Value;->newBuilder()Lcom/explorestack/protobuf/UInt32Value$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {v1, p0}, Lcom/explorestack/protobuf/UInt32Value$Builder;->setValue(I)Lcom/explorestack/protobuf/UInt32Value$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UInt32Value$Builder;->build()Lcom/explorestack/protobuf/UInt32Value;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->setPrecision(Lcom/explorestack/protobuf/UInt32Value;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method static g(Ljava/lang/Object;[Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lfr/g;->c(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string p1, "b"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lfr/g;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    const-string v1, "c"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lfr/g;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "d"

    .line 26
    .line 27
    invoke-static {p0, v2}, Lfr/g;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Number;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object p0, v0

    .line 45
    :goto_0
    if-nez p1, :cond_2

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lcom/explorestack/protobuf/DoubleValue;->newBuilder()Lcom/explorestack/protobuf/DoubleValue$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/explorestack/protobuf/DoubleValue$Builder;->setValue(D)Lcom/explorestack/protobuf/DoubleValue$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleValue$Builder;->build()Lcom/explorestack/protobuf/DoubleValue;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v2, p0}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->setValue(Lcom/explorestack/protobuf/DoubleValue;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 75
    .line 76
    .line 77
    :cond_3
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v2, p0}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->setCurrency(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 92
    .line 93
    .line 94
    :cond_4
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-static {}, Lcom/explorestack/protobuf/UInt32Value;->newBuilder()Lcom/explorestack/protobuf/UInt32Value$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/UInt32Value$Builder;->setValue(I)Lcom/explorestack/protobuf/UInt32Value$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UInt32Value$Builder;->build()Lcom/explorestack/protobuf/UInt32Value;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v2, p0}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->setPrecision(Lcom/explorestack/protobuf/UInt32Value;)Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-virtual {v2}, Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 116
    .line 117
    .line 118
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-object p0

    .line 120
    :catchall_0
    return-object v0
.end method
