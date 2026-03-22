.class public Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "PangleNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$PangleNativeMappedImage;
    }
.end annotation


# static fields
.field static final ASSET_ID_ADCHOICES_TEXT_VIEW:Ljava/lang/String; = "3012"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PANGLE_SDK_IMAGE_SCALE:D = 1.0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

.field private final adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

.field private pagNativeAd:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

.field private final pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

.field private final pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

.field private final pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V
    .locals 0
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
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;",
            "Lcom/google/ads/mediation/pangle/PangleInitializer;",
            "Lcom/google/ads/mediation/pangle/PangleSdkWrapper;",
            "Lcom/google/ads/mediation/pangle/PangleFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 13
    .line 14
    return-void
.end method

.method static bridge synthetic a(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->callback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pagNativeAd:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)Lcom/google/ads/mediation/pangle/PangleFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)Lcom/google/ads/mediation/pangle/PangleSdkWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->callback:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic h(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->mapNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private mapNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pagNativeAd:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->getNativeAdData()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getTitle()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getDescription()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getButtonText()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$PangleNativeMappedImage;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    move-object v1, v0

    .line 53
    move-object v2, p0

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$PangleNativeMappedImage;-><init>(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DLcom/google/ads/mediation/pangle/renderer/a;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getMediaView()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getAdLogoView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public render()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

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
    const-string v1, "Failed to load native ad from Pangle. Missing or invalid Placement ID."

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
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->adConfiguration:Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

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
    iget-object v4, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 61
    .line 62
    new-instance v5, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$1;

    .line 63
    .line 64
    invoke-direct {v5, p0, v2, v1}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$1;-><init>(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3, v0, v5}, Lcom/google/ads/mediation/pangle/PangleInitializer;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "3011"

    .line 7
    .line 8
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p2, "3012"

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string p2, "3002"

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/view/View;

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->pagNativeAd:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .line 48
    new-instance v5, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$2;

    .line 49
    .line 50
    invoke-direct {v5, p0}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$2;-><init>(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$3;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd$3;-><init>(Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
