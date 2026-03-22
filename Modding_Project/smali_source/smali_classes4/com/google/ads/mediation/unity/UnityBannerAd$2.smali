.class Lcom/google/ads/mediation/unity/UnityBannerAd$2;
.super Ljava/lang/Object;
.source "UnityBannerAd.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/unity/UnityBannerAd;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$unityBannerSize:Lcom/unity3d/services/banners/UnityBannerSize;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityBannerAd;Landroid/app/Activity;Lcom/unity3d/services/banners/UnityBannerSize;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->val$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->val$unityBannerSize:Lcom/unity3d/services/banners/UnityBannerSize;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->val$context:Landroid/content/Context;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->e(Lcom/google/ads/mediation/unity/UnityBannerAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->b(Lcom/google/ads/mediation/unity/UnityBannerAd;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Unity Ads is initialized for game ID \'%s\' and can now load banner ad with placement ID: %s"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->c(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/unity3d/services/banners/BannerView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 37
    .line 38
    new-instance v1, Lcom/unity3d/services/banners/BannerView;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->val$activity:Landroid/app/Activity;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/ads/mediation/unity/UnityBannerAd;->b(Lcom/google/ads/mediation/unity/UnityBannerAd;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->val$unityBannerSize:Lcom/unity3d/services/banners/UnityBannerSize;

    .line 49
    .line 50
    invoke-direct {v1, v2, v3, v4}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->h(Lcom/google/ads/mediation/unity/UnityBannerAd;Lcom/unity3d/services/banners/BannerView;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->val$context:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->setCoppa(ILandroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->c(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/unity3d/services/banners/BannerView;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityBannerAd;->g(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/unity3d/services/banners/BannerView$IListener;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->c(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/unity3d/services/banners/BannerView;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->load()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityBannerAd;->e(Lcom/google/ads/mediation/unity/UnityBannerAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "Unity Ads initialization failed for game ID \'%s\' with error message: %s"

    .line 12
    .line 13
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->createSDKError(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityBannerAd;->f(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityBannerAd;->f(Lcom/google/ads/mediation/unity/UnityBannerAd;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityBannerAd$2;->this$0:Lcom/google/ads/mediation/unity/UnityBannerAd;

    .line 45
    .line 46
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
