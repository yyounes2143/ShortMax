.class public final Lcom/moloco/sdk/Init$SDKInitResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Init.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;,
        Lcom/moloco/sdk/Init$SDKInitResponse$a;,
        Lcom/moloco/sdk/Init$SDKInitResponse$Region;,
        Lcom/moloco/sdk/Init$SDKInitResponse$Geo;,
        Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;,
        Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;,
        Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;,
        Lcom/moloco/sdk/Init$SDKInitResponse$c;,
        Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;,
        Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;,
        Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;,
        Lcom/moloco/sdk/Init$SDKInitResponse$b;,
        Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/Init$SDKInitResponse;",
        "Lcom/moloco/sdk/Init$SDKInitResponse$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_SERVER_URL_FIELD_NUMBER:I = 0x6

.field public static final AD_UNITS_FIELD_NUMBER:I = 0x4

.field public static final APP_ID_FIELD_NUMBER:I = 0x1

.field public static final BID_TOKEN_CONFIG_FIELD_NUMBER:I = 0xc

.field public static final CONFIGS_FIELD_NUMBER:I = 0x10

.field public static final COUNTRY_ISO2_CODE_FIELD_NUMBER:I = 0x7

.field public static final COUNTRY_ISO3_CODE_FIELD_NUMBER:I = 0x3

.field public static final CRASH_REPORTING_CONFIG_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

.field public static final EVENT_COLLECTION_CONFIG_FIELD_NUMBER:I = 0xb

.field public static final EXPERIMENTAL_FEATURE_FLAGS_FIELD_NUMBER:I = 0xd

.field public static final GEO_FIELD_NUMBER:I = 0xa

.field public static final ILRD_CONFIG_FIELD_NUMBER:I = 0x11

.field public static final OPERATIONAL_METRICS_CONFIG_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_ID_FIELD_NUMBER:I = 0x8

.field public static final PUBLISHER_ID_FIELD_NUMBER:I = 0x2

.field public static final RESOLVED_REGION_FIELD_NUMBER:I = 0x5

.field public static final VERIFY_BANNER_VISIBLE_FIELD_NUMBER:I = 0x9


# instance fields
.field private adServerUrl_:Ljava/lang/String;

.field private adUnits_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private appId_:Ljava/lang/String;

.field private bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

.field private configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

.field private countryIso2Code_:Ljava/lang/String;

.field private countryIso3Code_:Ljava/lang/String;

.field private crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

.field private eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

.field private experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

.field private ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

.field private operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

.field private platformId_:Ljava/lang/String;

.field private publisherId_:Ljava/lang/String;

.field private resolvedRegion_:I

.field private verifyBannerVisible_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->appId_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->publisherId_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso3Code_:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adServerUrl_:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso2Code_:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->platformId_:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 29
    .line 30
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method private addAdUnits(ILcom/moloco/sdk/Init$SDKInitResponse$AdUnit;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureAdUnitsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAdUnits(Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureAdUnitsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAdUnits(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureAdUnitsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllExperimentalFeatureFlags(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureExperimentalFeatureFlagsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addExperimentalFeatureFlags(ILcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureExperimentalFeatureFlagsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addExperimentalFeatureFlags(Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureExperimentalFeatureFlagsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAdServerUrl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getAdServerUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adServerUrl_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearAdUnits()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearAppId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->appId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearBidTokenConfig()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 3
    .line 4
    return-void
.end method

.method private clearConfigs()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 3
    .line 4
    return-void
.end method

.method private clearCountryIso2Code()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getCountryIso2Code()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso2Code_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearCountryIso3Code()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getCountryIso3Code()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso3Code_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearCrashReportingConfig()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 3
    .line 4
    return-void
.end method

.method private clearEventCollectionConfig()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 3
    .line 4
    return-void
.end method

.method private clearExperimentalFeatureFlags()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private clearGeo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 3
    .line 4
    return-void
.end method

.method private clearIlrdConfig()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 3
    .line 4
    return-void
.end method

.method private clearOperationalMetricsConfig()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 3
    .line 4
    return-void
.end method

.method private clearPlatformId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getPlatformId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->platformId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearPublisherId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getPublisherId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->publisherId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearResolvedRegion()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->resolvedRegion_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearVerifyBannerVisible()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->verifyBannerVisible_:Z

    .line 3
    .line 4
    return-void
.end method

.method private ensureAdUnitsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private ensureExperimentalFeatureFlagsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeBidTokenConfig(Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;)Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeConfigs(Lcom/moloco/sdk/ConfigsOuterClass$Configs;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->newBuilder(Lcom/moloco/sdk/ConfigsOuterClass$Configs;)Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeCrashReportingConfig(Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;)Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeEventCollectionConfig(Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;)Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeGeo(Lcom/moloco/sdk/Init$SDKInitResponse$Geo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$Geo;)Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeIlrdConfig(Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig$b;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeOperationalMetricsConfig(Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;->newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;)Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/Init$SDKInitResponse$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/Init$SDKInitResponse$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/Init$SDKInitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/Init$SDKInitResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private removeAdUnits(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureAdUnitsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private removeExperimentalFeatureFlags(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureExperimentalFeatureFlagsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setAdServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adServerUrl_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setAdServerUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adServerUrl_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setAdUnits(ILcom/moloco/sdk/Init$SDKInitResponse$AdUnit;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureAdUnitsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->appId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->appId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setBidTokenConfig(Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 5
    .line 6
    return-void
.end method

.method private setConfigs(Lcom/moloco/sdk/ConfigsOuterClass$Configs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 5
    .line 6
    return-void
.end method

.method private setCountryIso2Code(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso2Code_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setCountryIso2CodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso2Code_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setCountryIso3Code(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso3Code_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setCountryIso3CodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso3Code_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setCrashReportingConfig(Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 5
    .line 6
    return-void
.end method

.method private setEventCollectionConfig(Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 5
    .line 6
    return-void
.end method

.method private setExperimentalFeatureFlags(ILcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->ensureExperimentalFeatureFlagsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setGeo(Lcom/moloco/sdk/Init$SDKInitResponse$Geo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 5
    .line 6
    return-void
.end method

.method private setIlrdConfig(Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 5
    .line 6
    return-void
.end method

.method private setOperationalMetricsConfig(Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 5
    .line 6
    return-void
.end method

.method private setPlatformId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->platformId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setPlatformIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->platformId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setPublisherId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->publisherId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setPublisherIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->publisherId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setResolvedRegion(Lcom/moloco/sdk/Init$SDKInitResponse$Region;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$Region;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->resolvedRegion_:I

    .line 6
    .line 7
    return-void
.end method

.method private setResolvedRegionValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->resolvedRegion_:I

    .line 2
    .line 3
    return-void
.end method

.method private setVerifyBannerVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->verifyBannerVisible_:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    sget-object v0, Lcom/moloco/sdk/j;->a:[I

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :pswitch_0
    return-object v1

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-class v1, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object v2, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_2
    return-object v0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_4
    const-string v1, "appId_"

    .line 58
    .line 59
    const-string v2, "publisherId_"

    .line 60
    .line 61
    const-string v3, "countryIso3Code_"

    .line 62
    .line 63
    const-string v4, "adUnits_"

    .line 64
    .line 65
    const-class v5, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 66
    .line 67
    const-string v6, "resolvedRegion_"

    .line 68
    .line 69
    const-string v7, "adServerUrl_"

    .line 70
    .line 71
    const-string v8, "countryIso2Code_"

    .line 72
    .line 73
    const-string v9, "platformId_"

    .line 74
    .line 75
    const-string/jumbo v10, "verifyBannerVisible_"

    .line 76
    .line 77
    .line 78
    const-string v11, "geo_"

    .line 79
    .line 80
    const-string v12, "eventCollectionConfig_"

    .line 81
    .line 82
    const-string v13, "bidTokenConfig_"

    .line 83
    .line 84
    const-string v14, "experimentalFeatureFlags_"

    .line 85
    .line 86
    const-class v15, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;

    .line 87
    .line 88
    const-string v16, "operationalMetricsConfig_"

    .line 89
    .line 90
    const-string v17, "crashReportingConfig_"

    .line 91
    .line 92
    const-string v18, "configs_"

    .line 93
    .line 94
    const-string v19, "ilrdConfig_"

    .line 95
    .line 96
    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "\u0000\u0011\u0000\u0000\u0001\u0011\u0011\u0000\u0002\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u001b\u0005\u000c\u0006\u0208\u0007\u0208\u0008\u0208\t\u0007\n\t\u000b\t\u000c\t\r\u001b\u000e\t\u000f\t\u0010\t\u0011\t"

    .line 101
    .line 102
    sget-object v2, Lcom/moloco/sdk/Init$SDKInitResponse;->DEFAULT_INSTANCE:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 103
    .line 104
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :pswitch_5
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse$b;

    .line 110
    .line 111
    invoke-direct {v0, v1}, Lcom/moloco/sdk/Init$SDKInitResponse$b;-><init>(Lcom/moloco/sdk/k;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :pswitch_6
    new-instance v0, Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 116
    .line 117
    invoke-direct {v0}, Lcom/moloco/sdk/Init$SDKInitResponse;-><init>()V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdServerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adServerUrl_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdServerUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adServerUrl_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdUnits(I)Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAdUnitsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAdUnitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdUnitsOrBuilder(I)Lcom/moloco/sdk/Init$SDKInitResponse$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$a;

    .line 8
    .line 9
    return-object p1
.end method

.method public getAdUnitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->adUnits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->appId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->appId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBidTokenConfig()Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->getDefaultInstance()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getCountryIso2Code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso2Code_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountryIso2CodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso2Code_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCountryIso3Code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso3Code_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountryIso3CodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->countryIso3Code_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCrashReportingConfig()Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getEventCollectionConfig()Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getExperimentalFeatureFlags(I)Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;

    .line 8
    .line 9
    return-object p1
.end method

.method public getExperimentalFeatureFlagsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExperimentalFeatureFlagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExperimentalFeatureFlagsOrBuilder(I)Lcom/moloco/sdk/Init$SDKInitResponse$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/moloco/sdk/Init$SDKInitResponse$c;

    .line 8
    .line 9
    return-object p1
.end method

.method public getExperimentalFeatureFlagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->experimentalFeatureFlags_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGeo()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$Geo;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getIlrdConfig()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getOperationalMetricsConfig()Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;->getDefaultInstance()Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->platformId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatformIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->platformId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->publisherId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisherIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->publisherId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResolvedRegion()Lcom/moloco/sdk/Init$SDKInitResponse$Region;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->resolvedRegion_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$Region;->forNumber(I)Lcom/moloco/sdk/Init$SDKInitResponse$Region;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/moloco/sdk/Init$SDKInitResponse$Region;->UNRECOGNIZED:Lcom/moloco/sdk/Init$SDKInitResponse$Region;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getResolvedRegionValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->resolvedRegion_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVerifyBannerVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->verifyBannerVisible_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasBidTokenConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->bidTokenConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$BidTokenConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasConfigs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->configs_:Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasCrashReportingConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->crashReportingConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$CrashReportingConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasEventCollectionConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->eventCollectionConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$EventCollectionConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasGeo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->geo_:Lcom/moloco/sdk/Init$SDKInitResponse$Geo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasIlrdConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->ilrdConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasOperationalMetricsConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/Init$SDKInitResponse;->operationalMetricsConfig_:Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
