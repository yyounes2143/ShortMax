.class public abstract Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;
.super Ljava/lang/Object;
.source "AppLovinInterstitialRenderer.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# static fields
.field public static final ERROR_MSG_MULTIPLE_INTERSTITIAL_AD:Ljava/lang/String; = " Cannot load multiple interstitial ads with the same Zone ID. Let the first ad finish loading before attempting to load another. "
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "AppLovinInterstitialRenderer"


# instance fields
.field protected final appLovinAdFactory:Lcom/google/ads/mediation/applovin/AppLovinAdFactory;

.field protected final appLovinInitializer:Lcom/google/ads/mediation/applovin/AppLovinInitializer;

.field protected appLovinInterstitialAd:Lcom/applovin/sdk/AppLovinAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final interstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

.field protected final interstitialAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;",
            "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected zoneId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/applovin/AppLovinInitializer;Lcom/google/ads/mediation/applovin/AppLovinAdFactory;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/applovin/AppLovinInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ads/mediation/applovin/AppLovinAdFactory;
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
            "Lcom/google/ads/mediation/applovin/AppLovinInitializer;",
            "Lcom/google/ads/mediation/applovin/AppLovinAdFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdConfiguration:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->appLovinInitializer:Lcom/google/ads/mediation/applovin/AppLovinInitializer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->appLovinAdFactory:Lcom/google/ads/mediation/applovin/AppLovinAdFactory;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Interstitial clicked."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;->onAdLeftApplication()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Interstitial displayed."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Interstitial dismissed."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Interstitial did load ad for zone: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->zoneId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->appLovinInterstitialAd:Lcom/applovin/sdk/AppLovinAd;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 28
    .line 29
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdCallback:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    .line 36
    .line 37
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/applovin/mediation/AppLovinUtils;->getAdError(I)Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->interstitialAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public abstract loadAd()V
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Interstitial video playback began."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/ads/mediation/applovin/AppLovinInterstitialRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance p4, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "Interstitial video playback ended at playback percent: "

    .line 9
    .line 10
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, "%."

    .line 17
    .line 18
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void
.end method
