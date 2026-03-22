.class Lfm/e;
.super Lio/bidmachine/ads/networks/gam/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/e$a;
    }
.end annotation


# instance fields
.field private h:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ads/networks/gam/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/j0;-><init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L(Lfm/e;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/e;->h:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method protected B(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->n()Lio/bidmachine/ads/networks/gam/j;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->o()Lio/bidmachine/ads/networks/gam/t;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lfm/b;->a(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/t;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lfm/e$a;

    .line 18
    .line 19
    invoke-direct {v2, p0, p2}, Lfm/e$a;-><init>(Lfm/e;Lio/bidmachine/ads/networks/gam/n0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected K(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/i0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lfm/e;->h:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lfm/c;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Lfm/c;-><init>(Lio/bidmachine/ads/networks/gam/i0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lfm/e;->h:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "InternalGAM interstitial object is null or not loaded"

    .line 20
    .line 21
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam/d0;->onAdShowFailed(Lfr/a;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method protected j()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lfm/e;->h:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lfm/e;->h:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
