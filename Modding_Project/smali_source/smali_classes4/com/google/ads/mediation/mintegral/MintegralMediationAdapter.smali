.class public Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.source "MintegralMediationAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MintegralMediationAdapter"

.field private static mBridgeSDK:Lcom/mbridge/msdk/MBridgeSDK;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mintegralInterstitialAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallInterstitialAd;

.field private mintegralNativeAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallNativeAd;

.field private mintegralRewardedAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallRewardedAd;

.field private mintegralRtbAppOpenAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbAppOpenAd;

.field private mintegralRtbBannerAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbBannerAd;

.field private mintegralRtbInterstitialAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbInterstitialAd;

.field private mintegralRtbNativeAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbNativeAd;

.field private mintegralRtbRewardedAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbRewardedAd;

.field private mintegralWaterfallAppOpenAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallAppOpenAd;

.field private mintegralWaterfallBannerAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallBannerAd;


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
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->lambda$initialize$0(Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b()Lcom/mbridge/msdk/MBridgeSDK;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mBridgeSDK:Lcom/mbridge/msdk/MBridgeSDK;

    .line 2
    .line 3
    return-object v0
.end method

.method private synthetic lambda$initialize$0(Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mBridgeSDK:Lcom/mbridge/msdk/MBridgeSDK;

    .line 2
    .line 3
    new-instance v1, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p3}, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;-><init>(Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2, v1}, Lcom/mbridge/msdk/MBridgeSDK;->init(Ljava/util/Map;Landroid/content/Context;Lcom/mbridge/msdk/out/SDKInitStatusListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/mbridge/msdk/mbbid/out/BidManager;->getBuyerUid(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;->onSuccess(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->getSdkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "_"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-le v2, v4, :cond_0

    .line 15
    .line 16
    aget-object v1, v1, v4

    .line 17
    .line 18
    const-string v2, "\\."

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    const/4 v5, 0x3

    .line 26
    if-lt v2, v5, :cond_0

    .line 27
    .line 28
    aget-object v0, v1, v3

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aget-object v2, v1, v4

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x2

    .line 41
    aget-object v1, v1, v3

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    new-instance v3, Lcom/google/android/gms/ads/VersionInfo;

    .line 48
    .line 49
    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_0
    const-string v1, "Unexpected SDK version format: %s. Returning 0.0.0 for SDK version."

    .line 54
    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v1, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    .line 69
    .line 70
    invoke-direct {v0, v3, v3, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->getAdapterVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\\."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x0

    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    aget-object v0, v1, v4

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    aget-object v2, v1, v2

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    aget-object v3, v1, v3

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    mul-int/lit8 v3, v3, 0x64

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    aget-object v1, v1, v4

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v3, v1

    .line 46
    new-instance v1, Lcom/google/android/gms/ads/VersionInfo;

    .line 47
    .line 48
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_0
    const-string v1, "Unexpected adapter version format: %s. Returning 0.0.0 for adapter version."

    .line 53
    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    .line 68
    .line 69
    invoke-direct {v0, v4, v4, v4}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 6
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
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "app_id"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "app_key"

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lez p3, :cond_6

    .line 71
    .line 72
    if-gtz v2, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    if-le p3, v5, :cond_4

    .line 97
    .line 98
    const-string p3, "Found multiple app IDs in %s. Using %s to initialize Mintegral SDK."

    .line 99
    .line 100
    filled-new-array {v0, v3}, [Ljava/lang/Object;

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
    sget-object v0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    if-le v2, v5, :cond_5

    .line 114
    .line 115
    const-string p3, "Found multiple App Keys in %s. Using %s to initialize Mintegral SDK."

    .line 116
    .line 117
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    sget-object v0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->getMBridgeSDK()Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    sput-object p3, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mBridgeSDK:Lcom/mbridge/msdk/MBridgeSDK;

    .line 135
    .line 136
    invoke-interface {p3, v3, v4}, Lcom/mbridge/msdk/MBridgeSDK;->getMBConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/Aa;

    .line 141
    .line 142
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/net/Aa;-><init>()V

    .line 143
    .line 144
    .line 145
    const-class v1, Lcom/mbridge/msdk/foundation/same/net/Aa;

    .line 146
    .line 147
    const-string v2, "b"

    .line 148
    .line 149
    const-class v3, Ljava/lang/String;

    .line 150
    .line 151
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 160
    .line 161
    .line 162
    const-string v2, "Y+H6DFttYrPQYcIBiQKwJQKQYrN="

    .line 163
    .line 164
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 177
    .line 178
    new-instance v1, Lcom/google/ads/mediation/mintegral/a;

    .line 179
    .line 180
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/ads/mediation/mintegral/a;-><init>(Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_6
    :goto_2
    const/16 p1, 0x65

    .line 188
    .line 189
    const-string p3, "Missing or invalid App ID or App Key configured for this ad source instance in the AdMob or Ad Manager UI"

    .line 190
    .line 191
    invoke-static {p1, p3}, Lcom/google/ads/mediation/mintegral/MintegralConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    sget-object p3, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public loadAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallAppOpenAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallAppOpenAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralWaterfallAppOpenAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallAppOpenAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallAppOpenAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallBannerAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralWaterfallBannerAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallBannerAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallBannerAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallInterstitialAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralInterstitialAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallInterstitialAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallInterstitialAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallNativeAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralNativeAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallNativeAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallNativeAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallRewardedAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralRewardedAd:Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallRewardedAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/waterfall/MintegralWaterfallRewardedAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadRtbAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbAppOpenAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbAppOpenAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralRtbAppOpenAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbAppOpenAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbAppOpenAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbBannerAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbBannerAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralRtbBannerAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbBannerAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbBannerAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbInterstitialAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbInterstitialAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralRtbInterstitialAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbInterstitialAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbInterstitialAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadRtbNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbNativeAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbNativeAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralRtbNativeAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbNativeAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbNativeAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
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
    new-instance v0, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbRewardedAd;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbRewardedAd;-><init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->mintegralRtbRewardedAd:Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbRewardedAd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/mediation/mintegral/rtb/MintegralRtbRewardedAd;->loadAd()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
