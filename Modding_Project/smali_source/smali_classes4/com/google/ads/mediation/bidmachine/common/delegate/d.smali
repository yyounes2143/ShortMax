.class public final Lcom/google/ads/mediation/bidmachine/common/delegate/d;
.super Lcom/google/ads/mediation/bidmachine/common/delegate/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;
.implements Lio/bidmachine/AdListener;
.implements Lio/bidmachine/AdFullScreenListener;


# instance fields
.field private f:Lxm/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loadCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "auctionResultHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final a(Lcom/google/ads/mediation/bidmachine/common/delegate/d;Lcom/google/android/gms/ads/AdError;)Lkotlin/Unit;
    .locals 1

    .line 6
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final b(Lcom/google/ads/mediation/bidmachine/common/delegate/d;Lcom/google/android/gms/ads/AdError;)Lkotlin/Unit;
    .locals 1

    .line 3
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/ads/mediation/bidmachine/common/delegate/d;Lcom/google/android/gms/ads/AdError;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->b(Lcom/google/ads/mediation/bidmachine/common/delegate/d;Lcom/google/android/gms/ads/AdError;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/google/ads/mediation/bidmachine/common/delegate/d;Lcom/google/android/gms/ads/AdError;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->a(Lcom/google/ads/mediation/bidmachine/common/delegate/d;Lcom/google/android/gms/ads/AdError;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->f:Lxm/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->f:Lxm/a;

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lcom/google/android/gms/ads/mediation/MediationAdCallback;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lxm/c;)V
    .locals 2

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requesting interstitial ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lxm/a;

    invoke-direct {v0, p1}, Lxm/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lxm/a;

    invoke-virtual {p1, p2}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lxm/a;

    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->f:Lxm/a;

    return-void
.end method

.method public a(Lxm/a;)V
    .locals 1

    .line 3
    const-string v0, "interstitialAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public a(Lxm/a;Lfr/a;)V
    .locals 1

    .line 5
    const-string v0, "interstitialAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lfr/a;)V

    return-void
.end method

.method public a(Lxm/a;Z)V
    .locals 0

    .line 4
    const-string p2, "interstitialAd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->a()V

    return-void
.end method

.method public b(Lxm/a;)V
    .locals 1

    .line 1
    const-string v0, "interstitialAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->d()V

    return-void
.end method

.method public b(Lxm/a;Lfr/a;)V
    .locals 1

    .line 2
    const-string v0, "interstitialAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/google/ads/mediation/bidmachine/common/delegate/i;

    invoke-direct {p1, p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/i;-><init>(Lcom/google/ads/mediation/bidmachine/common/delegate/d;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lfr/a;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public c(Lxm/a;)V
    .locals 1

    .line 1
    const-string v0, "interstitialAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public d(Lxm/a;)V
    .locals 1

    .line 1
    const-string v0, "interstitialAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Ljava/lang/Object;Llp/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->a(Lxm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdClosed(Lio/bidmachine/IAd;Z)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->a(Lxm/a;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->b(Lxm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->c(Lxm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->a(Lxm/a;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->d(Lxm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0

    .line 1
    check-cast p1, Lxm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->b(Lxm/a;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/d;->f:Lxm/a;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->canShow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/bidmachine/FullScreenAd;->show()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "InterstitialAd is null or can\'t be shown"

    .line 21
    .line 22
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "internal(...)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/delegate/h;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/h;-><init>(Lcom/google/ads/mediation/bidmachine/common/delegate/d;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lfr/a;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
