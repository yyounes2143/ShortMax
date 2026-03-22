.class public final Lcom/google/ads/mediation/bidmachine/common/delegate/b;
.super Lcom/google/ads/mediation/bidmachine/common/delegate/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAd;
.implements Lio/bidmachine/AdListener;


# instance fields
.field private f:Lio/bidmachine/banner/BannerView;


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


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->f:Lio/bidmachine/banner/BannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lio/bidmachine/AdView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    invoke-virtual {v0}, Lio/bidmachine/AdView;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->f:Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lcom/google/android/gms/ads/mediation/MediationAdCallback;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lnm/b;)V
    .locals 3

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting banner ad with size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnm/b;->k()Lio/bidmachine/banner/BannerSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lio/bidmachine/banner/BannerView;

    invoke-direct {v0, p1}, Lio/bidmachine/banner/BannerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/AdView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerView;

    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->f:Lio/bidmachine/banner/BannerView;

    return-void
.end method

.method public a(Lio/bidmachine/banner/BannerView;)V
    .locals 1

    .line 3
    const-string v0, "bannerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public a(Lio/bidmachine/banner/BannerView;Lfr/a;)V
    .locals 1

    .line 4
    const-string v0, "bannerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lfr/a;)V

    return-void
.end method

.method public b(Lio/bidmachine/banner/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "bannerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->d()V

    return-void
.end method

.method public b(Lio/bidmachine/banner/BannerView;Lfr/a;)V
    .locals 1

    .line 2
    const-string v0, "bannerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p2, p1, v0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lcom/google/ads/mediation/bidmachine/common/delegate/a;Lfr/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lio/bidmachine/banner/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "bannerView"

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
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public d(Lio/bidmachine/banner/BannerView;)V
    .locals 1

    .line 1
    const-string v0, "bannerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/bidmachine/AdView;->getAuctionResult()Llp/c;

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

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->f:Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->a(Lio/bidmachine/banner/BannerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->b(Lio/bidmachine/banner/BannerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->c(Lio/bidmachine/banner/BannerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->a(Lio/bidmachine/banner/BannerView;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->d(Lio/bidmachine/banner/BannerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->b(Lio/bidmachine/banner/BannerView;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
