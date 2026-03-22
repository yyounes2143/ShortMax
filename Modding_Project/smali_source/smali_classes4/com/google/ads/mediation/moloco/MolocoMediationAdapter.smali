.class public final Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.source "MolocoMediationAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/moloco/MolocoMediationAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMolocoMediationAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoMediationAdapter.kt\ncom/google/ads/mediation/moloco/MolocoMediationAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n739#2,9:208\n1611#2,9:221\n1863#2:230\n1864#2:232\n1620#2:233\n37#3:217\n36#3,3:218\n1#4:231\n*S KotlinDebug\n*F\n+ 1 MolocoMediationAdapter.kt\ncom/google/ads/mediation/moloco/MolocoMediationAdapter\n*L\n69#1:208,9\n101#1:221,9\n101#1:230\n101#1:232\n101#1:233\n69#1:217\n69#1:218,3\n101#1:231\n*E\n"
    }
.end annotation


# static fields
.field public static final ADAPTER_ERROR_DOMAIN:Ljava/lang/String; = "com.google.ads.mediation.moloco"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/google/ads/mediation/moloco/MolocoMediationAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_CODE_AD_IS_NULL:I = 0x67

.field public static final ERROR_CODE_MISSING_AD_UNIT:I = 0x66

.field public static final ERROR_CODE_MISSING_APP_KEY:I = 0x65

.field public static final ERROR_MSG_AD_IS_NULL:Ljava/lang/String; = "Moloco ad object returned was null."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_MSG_MISSING_AD_UNIT:Ljava/lang/String; = "Missing or invalid Ad Unit configured for this ad source instance in the AdMob or Ad Manager UI."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_MSG_MISSING_APP_KEY:Ljava/lang/String; = "Missing or invalid App Key configured for this ad source instance in the AdMob or Ad Manager UI."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_UNIT_ID:Ljava/lang/String; = "ad_unit_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_APP_KEY:Ljava/lang/String; = "app_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MEDIATION_PLATFORM_NAME:Ljava/lang/String; = "AdMob"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SDK_ERROR_DOMAIN:Ljava/lang/String; = "com.moloco.sdk"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private bannerAd:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

.field private interstitialAd:Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;

.field private nativeAd:Lcom/google/ads/mediation/moloco/MolocoNativeAd;

.field private rewardedAd:Lcom/google/ads/mediation/moloco/MolocoRewardedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->Companion:Lcom/google/ads/mediation/moloco/MolocoMediationAdapter$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->initialize$lambda$2(Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->collectSignals$lambda$3(Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final collectSignals$lambda$3(Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)V
    .locals 2

    .line 1
    const-string v0, "bidToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getErrorCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getDescription()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "com.moloco.sdk"

    .line 19
    .line 20
    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;->onSuccess(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final configurePrivacy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;->setMolocoIsAgeRestricted(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final initialize$lambda$2(Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    .locals 2

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoInitStatus;->getInitialization()Lcom/moloco/sdk/publisher/Initialization;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/moloco/sdk/publisher/Initialization;->SUCCESS:Lcom/moloco/sdk/publisher/Initialization;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->configurePrivacy()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/moloco/sdk/publisher/MolocoInitStatus;->getDescription()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "Moloco SDK failed to initialize: "

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "."

    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method


# virtual methods
.method public collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "signalData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/publisher/MediationInfo;

    .line 12
    .line 13
    const-string v1, "AdMob"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/moloco/sdk/publisher/MediationInfo;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "getContext(...)"

    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/google/ads/mediation/moloco/b;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Lcom/google/ads/mediation/moloco/b;-><init>(Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Lcom/moloco/sdk/publisher/Moloco;->getBidToken(Lcom/moloco/sdk/publisher/MediationInfo;Landroid/content/Context;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/moloco/MolocoAdapterUtils;->getAdapterVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lkotlin/text/Regex;

    .line 6
    .line 7
    const-string v2, "\\."

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v3, v4

    .line 58
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_1
    check-cast v1, Ljava/util/Collection;

    .line 68
    .line 69
    new-array v3, v2, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [Ljava/lang/String;

    .line 76
    .line 77
    array-length v3, v1

    .line 78
    const/4 v5, 0x4

    .line 79
    if-lt v3, v5, :cond_2

    .line 80
    .line 81
    aget-object v0, v1, v2

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    aget-object v2, v1, v4

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v3, 0x2

    .line 94
    aget-object v3, v1, v3

    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    mul-int/lit8 v3, v3, 0x64

    .line 101
    .line 102
    const/4 v4, 0x3

    .line 103
    aget-object v1, v1, v4

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/2addr v3, v1

    .line 110
    new-instance v1, Lcom/google/android/gms/ads/VersionInfo;

    .line 111
    .line 112
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 113
    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_2
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 117
    .line 118
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "Unexpected adapter version format: %s. Returning 0.0.0 for adapter version."

    .line 127
    .line 128
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "format(...)"

    .line 133
    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->TAG:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/google/android/gms/ads/VersionInfo;

    .line 143
    .line 144
    invoke-direct {v0, v2, v2, v2}, Lcom/google/android/gms/ads/VersionInfo;-><init>(III)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initializationCompleteCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mediationConfigurations"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p3, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "app_key"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    :cond_2
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    const-string p1, "Missing or invalid App Key configured for this ad source instance in the AdMob or Ad Manager UI."

    .line 71
    .line 72
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    const/4 p3, 0x0

    .line 77
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v2, 0x1

    .line 88
    if-le v1, v2, :cond_5

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "Multiple app_key entries found: "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, ". Using \'"

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, "\' to initialize the Moloco SDK"

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v1, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_5
    new-instance v0, Lcom/moloco/sdk/publisher/MediationInfo;

    .line 126
    .line 127
    const-string v1, "AdMob"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/moloco/sdk/publisher/MediationInfo;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Lcom/moloco/sdk/publisher/init/MolocoInitParams;

    .line 133
    .line 134
    invoke-direct {v1, p1, p3, v0}, Lcom/moloco/sdk/publisher/init/MolocoInitParams;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lcom/google/ads/mediation/moloco/c;

    .line 138
    .line 139
    invoke-direct {p1, p0, p2}, Lcom/google/ads/mediation/moloco/c;-><init>(Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1, p1}, Lcom/moloco/sdk/publisher/Moloco;->initialize(Lcom/moloco/sdk/publisher/init/MolocoInitParams;Lcom/moloco/sdk/publisher/MolocoInitializationListener;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "mediationBannerAdConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->Companion:Lcom/google/ads/mediation/moloco/MolocoBannerAd$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoBannerAd$Companion;->newInstance-gIAlu-s(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->bannerAd:Lcom/google/ads/mediation/moloco/MolocoBannerAd;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "bannerAd"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/moloco/MolocoBannerAd;->loadAd()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public loadRtbInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "mediationInterstitialAdConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;->Companion:Lcom/google/ads/mediation/moloco/MolocoInterstitialAd$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoInterstitialAd$Companion;->newInstance-gIAlu-s(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->interstitialAd:Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "interstitialAd"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/moloco/MolocoInterstitialAd;->loadAd()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public loadRtbNativeAdMapper(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/NativeAdMapper;",
            "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "mediationNativeAdConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/ads/mediation/moloco/MolocoNativeAd;->Companion:Lcom/google/ads/mediation/moloco/MolocoNativeAd$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoNativeAd$Companion;->newInstance-gIAlu-s(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/google/ads/mediation/moloco/MolocoNativeAd;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->nativeAd:Lcom/google/ads/mediation/moloco/MolocoNativeAd;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "nativeAd"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/moloco/MolocoNativeAd;->loadAd()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public loadRtbRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "mediationRewardedAdConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/ads/mediation/moloco/MolocoRewardedAd;->Companion:Lcom/google/ads/mediation/moloco/MolocoRewardedAd$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/moloco/MolocoRewardedAd$Companion;->newInstance-gIAlu-s(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/google/ads/mediation/moloco/MolocoRewardedAd;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoMediationAdapter;->rewardedAd:Lcom/google/ads/mediation/moloco/MolocoRewardedAd;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "rewardedAd"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/moloco/MolocoRewardedAd;->loadAd()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
