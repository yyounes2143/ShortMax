.class public abstract Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;
.super Lcom/inmobi/ads/listeners/InterstitialAdEventListener;
.source "InMobiInterstitialAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;


# instance fields
.field private inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

.field protected inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

.field private inMobiInterstitialWrapper:Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

.field private interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

.field protected final mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/inmobi/InMobiInitializer;Lcom/google/ads/mediation/inmobi/InMobiAdFactory;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/inmobi/InMobiInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ads/mediation/inmobi/InMobiAdFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/inmobi/InMobiInitializer;",
            "Lcom/google/ads/mediation/inmobi/InMobiAdFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/inmobi/ads/listeners/InterstitialAdEventListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiInitializer:Lcom/google/ads/mediation/inmobi/InMobiInitializer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected createAndLoadInterstitialAd(Landroid/content/Context;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiAdFactory:Lcom/google/ads/mediation/inmobi/InMobiAdFactory;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/ads/mediation/inmobi/InMobiAdFactory;->createInMobiInterstitialWrapper(Landroid/content/Context;Ljava/lang/Long;Lcom/inmobi/ads/listeners/InterstitialAdEventListener;)Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiInterstitialWrapper:Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->setIsAgeRestricted()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->configureGlobalTargeting(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->mediationInterstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getWatermark()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiInterstitialWrapper:Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    .line 38
    .line 39
    new-instance p3, Lcom/inmobi/ads/WatermarkData;

    .line 40
    .line 41
    const v0, 0x3e99999a    # 0.3f

    .line 42
    .line 43
    .line 44
    invoke-direct {p3, p1, v0}, Lcom/inmobi/ads/WatermarkData;-><init>(Ljava/lang/String;F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;->setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiInterstitialWrapper:Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method protected abstract internalLoadAd(Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;)V
.end method

.method public abstract loadAd()V
.end method

.method public onAdClicked(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "InMobi interstitial ad has been clicked."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdClicked(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->onAdClicked(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V

    return-void
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "InMobi interstitial ad has been dismissed."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdDisplayFailed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 p1, 0x6a

    .line 2
    .line 3
    const-string v0, "InMobi SDK failed to display an interstitial ad."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "InMobi interstitial ad has been shown."

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdFetchSuccessful(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "InMobi SDK fetched the interstitial ad successfully, but the ad contents still need to be loaded."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onAdFetchSuccessful(Ljava/lang/Object;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->onAdFetchSuccessful(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method public onAdImpression(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "InMobi interstitial ad has logged an impression."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdImpression(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->onAdImpression(Lcom/inmobi/ads/InMobiInterstitial;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getMediationErrorCode(Lcom/inmobi/ads/InMobiAdRequestStatus;)I

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return-void
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "InMobi interstitial ad has been loaded."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    :cond_0
    return-void
.end method

.method public bridge synthetic onAdLoadSucceeded(Ljava/lang/Object;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method public onAdWillDisplay(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "InMobi interstitial ad will be shown."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRewardsUnlocked(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/InMobiInterstitial;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "InMobi interstitial ad has caused the user to leave the application."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdLeftApplication()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiInterstitialWrapper:Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;->isReady()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x69

    .line 14
    .line 15
    const-string v0, "InMobi interstitial ad is not yet ready to be shown."

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/google/ads/mediation/inmobi/renderers/InMobiInterstitialAd;->inMobiInterstitialWrapper:Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/ads/mediation/inmobi/InMobiInterstitialWrapper;->show()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
