.class abstract Lcom/google/ads/mediation/bidmachine/prebid/a;
.super Lcom/google/ads/mediation/bidmachine/common/a;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/mediation/bidmachine/common/a;-><init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Lio/bidmachine/AdsType;Landroid/os/Bundle;)Lio/bidmachine/AdRequest;
    .locals 1

    .line 4
    const-string v0, "bm_id"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/prebid/a;->a(Lio/bidmachine/AdsType;Ljava/lang/Object;)Lio/bidmachine/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/bidmachine/AdsType;Ljava/lang/Object;)Lio/bidmachine/AdRequest;
    .locals 0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    const-string v0, "bm_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    .line 3
    const-string v1, "bm_pf"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/google/ads/mediation/bidmachine/common/f;->a(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0}, Lcom/google/ads/mediation/bidmachine/common/f;->a(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-eqz p2, :cond_7

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "bm_pf_compare"

    invoke-static {p1, v2}, Lcom/google/ads/mediation/bidmachine/BidMachineUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "equal_or_above_pf"

    if-nez p1, :cond_4

    move-object p1, v2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    cmpl-double p1, v2, p1

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return v1
.end method


# virtual methods
.method protected a(Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Lcom/google/ads/mediation/bidmachine/common/b;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/bidmachine/prebid/a;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Skip line item (key \'bm_id\' is not found in local extras)"

    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->a(Lfr/a;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/ads/mediation/bidmachine/common/c;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/google/ads/mediation/bidmachine/prebid/a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Skip line item (price does not matched)"

    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->a(Lfr/a;)V

    return-void

    :cond_1
    invoke-static {p2, v0}, Lcom/google/ads/mediation/bidmachine/common/c;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/prebid/a;->a(Lio/bidmachine/AdsType;Landroid/os/Bundle;)Lio/bidmachine/AdRequest;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Fetched AdRequest not found"

    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->a(Lfr/a;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/a;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched request resolved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->getAuctionResult()Llp/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->notifyMediationWin()V

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
