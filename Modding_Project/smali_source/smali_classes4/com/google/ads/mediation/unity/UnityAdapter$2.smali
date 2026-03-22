.class Lcom/google/ads/mediation/unity/UnityAdapter$2;
.super Ljava/lang/Object;
.source "UnityAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/unity/UnityAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityAdapter;

.field final synthetic val$gameId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityAdapter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->this$0:Lcom/google/ads/mediation/unity/UnityAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->val$gameId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->val$gameId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->this$0:Lcom/google/ads/mediation/unity/UnityAdapter;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityAdapter;->d(Lcom/google/ads/mediation/unity/UnityAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Unity Ads is initialized for game ID \'%s\' and can now load interstitial ad with placement ID: %s"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->val$gameId:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "Unity Ads initialization failed for game ID \'%s\' with error message: %s"

    .line 8
    .line 9
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->createSDKError(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->this$0:Lcom/google/ads/mediation/unity/UnityAdapter;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityAdapter;->c(Lcom/google/ads/mediation/unity/UnityAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->this$0:Lcom/google/ads/mediation/unity/UnityAdapter;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityAdapter;->c(Lcom/google/ads/mediation/unity/UnityAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter$2;->this$0:Lcom/google/ads/mediation/unity/UnityAdapter;

    .line 41
    .line 42
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
