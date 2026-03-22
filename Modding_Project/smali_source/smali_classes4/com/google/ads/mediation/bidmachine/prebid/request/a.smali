.class public abstract Lcom/google/ads/mediation/bidmachine/prebid/request/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/a;->b(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/ads/AdRequest$Builder;Lio/bidmachine/AdRequest;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/ads/mediation/bidmachine/prebid/request/a;->c(Lio/bidmachine/AdRequest;)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/google/ads/mediation/bidmachine/prebid/BidMachinePrebidAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    return-void
.end method

.method public static b(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/a;->a(Lcom/google/android/gms/ads/AdRequest$Builder;Lio/bidmachine/AdRequest;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private static c(Lio/bidmachine/AdRequest;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->fetch(Lio/bidmachine/AdRequest;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method
