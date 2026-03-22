.class public Lcom/google/ads/mediation/pangle/PangleMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.source "PangleMediationAdapter.java"


# static fields
.field static final ERROR_MESSAGE_MISSING_OR_INVALID_APP_ID:Ljava/lang/String; = "Missing or invalid App ID."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PangleMediationAdapter"

.field private static gdpr:I = -0x1


# instance fields
.field private appOpenAd:Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;

.field private bannerAd:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

.field private interstitialAd:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

.field private nativeAd:Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;

.field private final pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

.field private final pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

.field private final pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

.field private rewardedAd:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleInitializer;->getInstance()Lcom/google/ads/mediation/pangle/PangleInitializer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 3
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 4
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleFactory;

    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleFactory;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 7
    iput-object p2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 8
    iput-object p3, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    return-void
.end method

.method public static getGDPRConsent()I
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->gdpr:I

    .line 2
    .line 3
    return v0
.end method

.method public static getPAConsent()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->getPAConsent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static setGDPRConsent(I)V
    .locals 1
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGGDPRConsentType;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;-><init>()V

    invoke-static {p0, v0}, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->setGDPRConsent(ILcom/google/ads/mediation/pangle/PangleSdkWrapper;)V

    return-void
.end method

.method static setGDPRConsent(ILcom/google/ads/mediation/pangle/PangleSdkWrapper;)V
    .locals 1
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGGDPRConsentType;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Invalid GDPR value. Pangle SDK only accepts -1, 0 or 1."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->setGdprConsent(I)V

    .line 5
    :cond_1
    sput p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->gdpr:I

    return-void
.end method

.method public static setPAConsent(I)V
    .locals 1
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGPAConsentType;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;-><init>()V

    invoke-static {p0, v0}, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->setPAConsent(ILcom/google/ads/mediation/pangle/PangleSdkWrapper;)V

    return-void
.end method

.method static setPAConsent(ILcom/google/ads/mediation/pangle/PangleSdkWrapper;)V
    .locals 1
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGPAConsentType;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Invalid PA value. Pangle SDK only accepts 0 or 1."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->setPAConsent(I)V

    return-void
.end method


# virtual methods
.method public collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->createChildUserError()Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getNetworkExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v1, "user_data"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->setUserData(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "207"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->setAdxId(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Lcom/google/ads/mediation/pangle/PangleMediationAdapter$1;

    .line 57
    .line 58
    invoke-direct {v2, p0, p2}, Lcom/google/ads/mediation/pangle/PangleMediationAdapter$1;-><init>(Lcom/google/ads/mediation/pangle/PangleMediationAdapter;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->getBiddingToken(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->getSdkVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x3

    .line 16
    if-lt v2, v4, :cond_1

    .line 17
    .line 18
    aget-object v0, v1, v3

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    aget-object v2, v1, v2

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    aget-object v3, v1, v3

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    array-length v5, v1

    .line 39
    const/4 v6, 0x4

    .line 40
    if-lt v5, v6, :cond_0

    .line 41
    .line 42
    mul-int/lit8 v3, v3, 0x64

    .line 43
    .line 44
    aget-object v1, v1, v4

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v3, v1

    .line 51
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/VersionInfo;

    .line 52
    .line 53
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_1
    const-string v1, "Unexpected SDK version format: %s. Returning 0.0.0 for SDK version."

    .line 58
    .line 59
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    .line 73
    .line 74
    invoke-direct {v0, v3, v3, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "7.5.0.4.0"

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->getVersionInfo(Ljava/lang/String;)Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method getVersionInfo(Ljava/lang/String;)Lcom/google/android/gms/ads/VersionInfo;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 4
    aget-object p1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    .line 5
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 6
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7
    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x64

    .line 8
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object v0

    .line 10
    :cond_1
    const-string v0, "Unexpected adapter version format: %s. Returning 0.0.0 for adapter version."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p1, Lcom/google/android/gms/ads/VersionInfo;

    invoke-direct {p1, v2, v2, v2}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    return-object p1
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "MobileAds.getRequestConfiguration() indicates the user is a child. Pangle SDK V71 or higher does not support child users."

    .line 8
    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "appid"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-gtz p3, :cond_3

    .line 59
    .line 60
    const/16 p1, 0x65

    .line 61
    .line 62
    const-string p3, "Missing or invalid App ID."

    .line 63
    .line 64
    invoke-static {p1, p3}, Lcom/google/ads/mediation/pangle/PangleConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object p3, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    if-le p3, v2, :cond_4

    .line 97
    .line 98
    const-string p3, "Found multiple app IDs in %s. Using %s to initialize Pangle SDK."

    .line 99
    .line 100
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    sget-object v0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object p3, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 114
    .line 115
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter$2;

    .line 116
    .line 117
    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/pangle/PangleMediationAdapter$2;-><init>(Lcom/google/ads/mediation/pangle/PangleMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p1, v1, v0}, Lcom/google/ads/mediation/pangle/PangleInitializer;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public loadAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->createChildUserError()Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPangleAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->appOpenAd:Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleAppOpenAd;->render()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->createChildUserError()Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPangleBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->bannerAd:Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleBannerAd;->render()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->createChildUserError()Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPangleInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->interstitialAd:Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleInterstitialAd;->render()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->createChildUserError()Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPangleNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->nativeAd:Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleNativeAd;->render()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
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
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->isChildUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleConstants;->createChildUserError()Lcom/google/android/gms/ads/AdError;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleInitializer:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPangleRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/pangle/PangleInitializer;Lcom/google/ads/mediation/pangle/PangleSdkWrapper;)Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->rewardedAd:Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/ads/mediation/pangle/renderer/PangleRewardedAd;->render()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
