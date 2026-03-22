.class public abstract Lcom/google/ads/mediation/bidmachine/common/delegate/c;
.super Lcom/google/ads/mediation/bidmachine/common/delegate/a;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdListener;


# instance fields
.field private f:Ljava/lang/ref/WeakReference;

.field private g:Lmp/b;

.field private h:Lio/bidmachine/nativead/view/NativeMediaView;


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
.method protected abstract a(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)Ljava/lang/Object;
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->h:Lio/bidmachine/nativead/view/NativeMediaView;

    iget-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->g:Lmp/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    invoke-virtual {v1}, Lio/bidmachine/BidMachineAd;->destroy()V

    :cond_0
    iput-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->g:Lmp/b;

    iget-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    iput-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lcom/google/android/gms/ads/mediation/MediationAdCallback;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lio/bidmachine/nativead/NativeRequest;)V
    .locals 2

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requesting native ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->f:Ljava/lang/ref/WeakReference;

    new-instance v0, Lmp/b;

    invoke-direct {v0, p1}, Lmp/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lmp/b;

    invoke-virtual {p1, p2}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lmp/b;

    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->g:Lmp/b;

    return-void
.end method

.method public a(Lmp/b;)V
    .locals 1

    .line 3
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->b()Lcom/google/android/gms/ads/mediation/MediationAdCallback;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public a(Lmp/b;Lfr/a;)V
    .locals 1

    .line 4
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lfr/a;)V

    return-void
.end method

.method public b(Lmp/b;)V
    .locals 1

    .line 1
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->d()V

    return-void
.end method

.method public b(Lmp/b;Lfr/a;)V
    .locals 1

    .line 2
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p2, p1, v0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lcom/google/ads/mediation/bidmachine/common/delegate/a;Lfr/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lmp/b;)V
    .locals 1

    .line 1
    const-string v0, "nativeAd"

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
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

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

.method public d(Lmp/b;)V
    .locals 2

    .line 1
    const-string v0, "nativeAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->f:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string p1, "Failed to request ad. Context is null."

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
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Lfr/a;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v1, Lio/bidmachine/nativead/view/NativeMediaView;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lio/bidmachine/nativead/view/NativeMediaView;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->a(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/a;->a(Ljava/lang/Object;Llp/c;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->h:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 52
    .line 53
    return-void
.end method

.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->a(Lmp/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->b(Lmp/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->c(Lmp/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0

    .line 1
    check-cast p1, Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->a(Lmp/b;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->d(Lmp/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0

    .line 1
    check-cast p1, Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;->b(Lmp/b;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
