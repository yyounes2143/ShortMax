.class public Lcom/google/ads/mediation/pangle/PangleFactory;
.super Ljava/lang/Object;
.source "PangleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method createPAGConfigBuilder()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createPagAppOpenRequest()Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createPagBannerRequest(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createPagInterstitialRequest()Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createPagNativeRequest()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createPagRewardedRequest()Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method createPangleAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/pangle/PangleInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ads/mediation/pangle/PangleSdkWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;",
            "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/pangle/PangleInitializer;",
            "Lcom/google/ads/mediation/pangle/PangleSdkWrapper;",
            ")",
            "Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method createPangleBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/pangle/PangleInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ads/mediation/pangle/PangleSdkWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/pangle/PangleInitializer;",
            "Lcom/google/ads/mediation/pangle/PangleSdkWrapper;",
            ")",
            "Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method createPangleInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/pangle/PangleInitializer;
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
            "Lcom/google/ads/mediation/pangle/PangleInitializer;",
            "Lcom/google/ads/mediation/pangle/PangleSdkWrapper;",
            ")",
            "Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method createPangleNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/pangle/PangleInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/pangle/PangleInitializer;",
            "Lcom/google/ads/mediation/pangle/PangleSdkWrapper;",
            ")",
            "Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method createPangleRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;
    .locals 7
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/pangle/PangleInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/pangle/PangleInitializer;",
            "Lcom/google/ads/mediation/pangle/PangleSdkWrapper;",
            ")",
            "Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method
