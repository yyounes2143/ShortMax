.class Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;
.super Ljava/lang/Object;
.source "UnityRewardedAd.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/unity/UnityRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityAdsInitializationListener"
.end annotation


# instance fields
.field private final adMarkup:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final gameId:Ljava/lang/String;

.field private final placementId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/unity/UnityRewardedAd;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->gameId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->placementId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->adMarkup:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->placementId:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Unity Ads is initialized for game ID \'%s\' and can now load rewarded ad with placement ID: %s"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/google/ads/mediation/unity/UnityMediationAdapter;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->c(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->taggedForChildDirectedTreatment()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsAdapterUtils;->setCoppa(ILandroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 36
    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->g(Lcom/google/ads/mediation/unity/UnityRewardedAd;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->e(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/ads/mediation/unity/UnityAdsLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->d(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdsLoader;->createUnityAdsLoadOptionsWithId(Ljava/lang/String;)Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->adMarkup:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/unity3d/ads/UnityAdsLoadOptions;->setAdMarkup(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->e(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/ads/mediation/unity/UnityAdsLoader;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->placementId:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/google/ads/mediation/unity/UnityRewardedAd;->unityLoadListener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    .line 82
    .line 83
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/ads/mediation/unity/UnityAdsLoader;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->gameId:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/google/ads/mediation/unity/UnityRewardedAd$UnityAdsInitializationListener;->this$0:Lcom/google/ads/mediation/unity/UnityRewardedAd;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/ads/mediation/unity/UnityRewardedAd;->a(Lcom/google/ads/mediation/unity/UnityRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

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
