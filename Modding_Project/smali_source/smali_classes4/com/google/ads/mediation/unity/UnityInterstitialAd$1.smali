.class Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;
.super Ljava/lang/Object;
.source "UnityInterstitialAd.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/unity/UnityInterstitialAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

.field final synthetic val$adMarkup:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gameId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityInterstitialAd;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$gameId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$adMarkup:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$gameId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->c(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Ljava/lang/String;

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
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->setCoppa(ILandroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 38
    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->e(Lcom/google/ads/mediation/unity/UnityInterstitialAd;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->d(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Lcom/google/ads/mediation/unity/UnityAdsLoader;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->b(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsLoader;->createUnityAdsLoadOptionsWithId(Ljava/lang/String;)Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$adMarkup:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/unity3d/ads/UnityAdsLoadOptions;->setAdMarkup(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->d(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Lcom/google/ads/mediation/unity/UnityAdsLoader;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->c(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/ads/mediation/unity/UnityAdsLoader;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->val$gameId:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityInterstitialAd$1;->this$0:Lcom/google/ads/mediation/unity/UnityInterstitialAd;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityInterstitialAd;->a(Lcom/google/ads/mediation/unity/UnityInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
