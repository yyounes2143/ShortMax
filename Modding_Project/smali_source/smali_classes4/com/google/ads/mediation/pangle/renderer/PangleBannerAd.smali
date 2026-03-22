.class public Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;
.super Ljava/lang/Object;
.source "PangleBannerAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAd;
.implements Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;


# static fields
.field public static final ERROR_MESSAGE_BANNER_SIZE_MISMATCH:Ljava/lang/String; = "Failed to request banner ad from Pangle. Invalid banner size."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

.field private final adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAd;",
            "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

.field private final pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

.field private final pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

.field private final pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

.field wrappedAdView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V
    .locals 0
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
    .param p5    # Lcom/google/ads/mediation/pangle/PangleFactory;
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
            "Lcom/google/ads/mediation/pangle/PangleFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 13
    .line 14
    return-void
.end method

.method static bridge synthetic a(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/ads/mediation/pangle/PangleFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/ads/mediation/pangle/PangleSdkWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->bannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    .line 2
    .line 3
    return-void
.end method

.method static getBannerSizeFromGoogleAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_320_H_50:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_300_H_250:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v0, v2, :cond_1

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->BANNER_W_728_H_90:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-ne v0, v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ne v0, v2, :cond_2

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v0, v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v0, v1, :cond_3

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getInlineAdaptiveBannerAdSize(II)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_4
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->bannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdShowed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->bannerAdCallback:Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public render()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "placementid"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x65

    .line 20
    .line 21
    const-string v1, "Failed to load banner ad from Pangle. Missing or invalid Placement ID."

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/google/ads/mediation/pangle/PangleConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "appid"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v4, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 61
    .line 62
    new-instance v5, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;

    .line 63
    .line 64
    invoke-direct {v5, p0, v3, v2, v1}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;-><init>(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3, v0, v5}, Lcom/google/ads/mediation/pangle/PangleInitializer;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
