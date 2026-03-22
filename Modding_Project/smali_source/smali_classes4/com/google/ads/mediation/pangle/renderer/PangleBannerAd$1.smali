.class Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;
.super Ljava/lang/Object;
.source "PangleBannerAd.java"

# interfaces
.implements Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

.field final synthetic val$bidResponse:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$bidResponse:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$placementId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->b(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onInitializeSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->a(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->getBannerSizeFromGoogleAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x66

    .line 20
    .line 21
    const-string v1, "Failed to request banner ad from Pangle. Invalid banner size."

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
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->b(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 47
    .line 48
    new-instance v2, Landroid/widget/FrameLayout;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v1, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->c(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPagBannerRequest(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$bidResponse:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGRequest;->setAdString(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$bidResponse:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->a(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v0, v1, v2}, Lcom/google/ads/mediation/pangle/PangleRequestHelper;->setWatermarkString(Lcom/bytedance/sdk/openadsdk/api/PAGRequest;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->this$0:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->d(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;)Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;->val$placementId:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v3, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1$1;

    .line 92
    .line 93
    invoke-direct {v3, p0}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1$1;-><init>(Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd$1;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->loadBannerAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
