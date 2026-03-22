.class Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;
.super Ljava/lang/Object;
.source "PangleInterstitialAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;->onInitializeSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;->this$1:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;->this$1:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;

    iget-object v0, v0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;->b(Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;->this$1:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;

    iget-object v2, v2, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;

    invoke-static {v0, v1}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;->f(Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;)V

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;->this$1:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;

    iget-object v0, v0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    invoke-static {v0, p1}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;->g(Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/ads/mediation/pangle/PangleConstants;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1$1;->this$1:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;->b(Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
