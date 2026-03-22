.class public final Lcom/inmobi/commons/core/configs/TelemetryConfig;
.super Lcom/inmobi/commons/core/configs/Config;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/TelemetryConfig$AdTypeLoggingConfig;,
        Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;,
        Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;,
        Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;,
        Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;,
        Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTelemetryConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelemetryConfig.kt\ncom/inmobi/commons/core/configs/TelemetryConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n1855#2,2:366\n*S KotlinDebug\n*F\n+ 1 TelemetryConfig.kt\ncom/inmobi/commons/core/configs/TelemetryConfig\n*L\n168#1:366,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/Rd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_DEEPLINK_FALLBACK_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_DISABLE_GENERAL_EVENTS:Z = false

.field public static final DEFAULT_EVENT_TTL_SEC:J = 0x93a80L

.field public static final DEFAULT_INGESTION_LATENCY_SEC:J = 0x15180L

.field public static final DEFAULT_IS_ENABLED:Z = true

.field public static final DEFAULT_LOG_ENABLED:Z = false

.field public static final DEFAULT_LOG_EXPIRY:J = 0x15180L

.field private static final DEFAULT_LOG_LEVEL:Ljava/lang/String; = "ERROR"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_LOG_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_LOG_RETRY_INTERVAL:J = 0x1388L

.field public static final DEFAULT_LOG_SAMPLING_FACTOR:D = 0.0

.field public static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://log-activity.templates.inmobi.com/api/v1/ingest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MAX_BATCH_SIZE:I = 0x14

.field public static final DEFAULT_MAX_ENTRIES:I = 0x14

.field public static final DEFAULT_MAX_EVENTS_TO_PERSIST:I = 0x3e8

.field public static final DEFAULT_MAX_RETRIES:I = 0x1

.field public static final DEFAULT_MAX_TEMPLATE_EVENTS:I = 0x32

.field public static final DEFAULT_MIN_BATCH_SIZE:I = 0x5

.field public static final DEFAULT_PROCESSING_INTERVAL_SEC:J = 0x1eL

.field public static final DEFAULT_REDIRECTION_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_RETRY_INTERVAL_SEC:J = 0x3cL

.field public static final DEFAULT_SAMPLING_FACTOR:D = 0.0

.field public static final DEFAULT_URL:Ljava/lang/String; = "https://telemetry.sdk.inmobi.com/metrics"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation
.end field

.field private assetReporting:Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private base:Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disableAllGeneralEvents:Z

.field private eventTTL:J

.field private loggingConfig:Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lpConfig:Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxEventsToPersist:I

.field private maxRetryCount:I

.field private maxTemplateEvents:I

.field private networkType:Lcom/inmobi/media/S9;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pingSamplingFactor:D

.field private priorityEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private processingInterval:J

.field private samplingFactor:D

.field private sendCrashEvents:Z

.field private telemetryUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private txLatency:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Rd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Rd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->Companion:Lcom/inmobi/media/Rd;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 43
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/commons/core/configs/Config;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://telemetry.sdk.inmobi.com/metrics"

    .line 7
    .line 8
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "TelemetryConfig"

    .line 11
    .line 12
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v1, 0x1e

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->processingInterval:J

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxRetryCount:I

    .line 20
    .line 21
    const/16 v1, 0x3e8

    .line 22
    .line 23
    iput v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxEventsToPersist:I

    .line 24
    .line 25
    const-wide/32 v1, 0x93a80

    .line 26
    .line 27
    .line 28
    iput-wide v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->eventTTL:J

    .line 29
    .line 30
    const/16 v1, 0x32

    .line 31
    .line 32
    iput v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxTemplateEvents:I

    .line 33
    .line 34
    const-wide/32 v1, 0x15180

    .line 35
    .line 36
    .line 37
    iput-wide v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->txLatency:J

    .line 38
    .line 39
    sget-object v1, Lcom/inmobi/commons/core/configs/TelemetryConfig;->Companion:Lcom/inmobi/media/Rd;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v41, "landingsCompleteSuccess"

    .line 45
    .line 46
    const-string v42, "landingsCompleteFailed"

    .line 47
    .line 48
    const-string v2, "ServerFill"

    .line 49
    .line 50
    const-string v3, "ServerNoFill"

    .line 51
    .line 52
    const-string v4, "ServerError"

    .line 53
    .line 54
    const-string v5, "AdLoadFailed"

    .line 55
    .line 56
    const-string v6, "AdLoadSuccessful"

    .line 57
    .line 58
    const-string v7, "BlockAutoRedirection"

    .line 59
    .line 60
    const-string v8, "AssetDownloaded"

    .line 61
    .line 62
    const-string v9, "CrashEventOccurred"

    .line 63
    .line 64
    const-string v10, "InvalidConfig"

    .line 65
    .line 66
    const-string v11, "ConfigFetched"

    .line 67
    .line 68
    const-string v12, "SdkInitialized"

    .line 69
    .line 70
    const-string v13, "AdGetSignalsFailed"

    .line 71
    .line 72
    const-string v14, "AdGetSignalsSucceeded"

    .line 73
    .line 74
    const-string v15, "AdShowFailed"

    .line 75
    .line 76
    const-string v16, "AdLoadCalled"

    .line 77
    .line 78
    const-string v17, "AdLoadDroppedAtSDK"

    .line 79
    .line 80
    const-string v18, "AdShowCalled"

    .line 81
    .line 82
    const-string v19, "AdShowSuccessful"

    .line 83
    .line 84
    const-string v20, "AdGetSignalsCalled"

    .line 85
    .line 86
    const-string v21, "UnifiedIdNetworkCallRequested"

    .line 87
    .line 88
    const-string v22, "UnifiedIdNetworkResponseFailure"

    .line 89
    .line 90
    const-string v23, "FetchApiInvoked"

    .line 91
    .line 92
    const-string v24, "FetchCallbackFailure"

    .line 93
    .line 94
    const-string v25, "AdImpressionSuccessful"

    .line 95
    .line 96
    const-string v26, "RenderSuccess"

    .line 97
    .line 98
    const-string v27, "MUTTSuccess"

    .line 99
    .line 100
    const-string v28, "ParseSuccess"

    .line 101
    .line 102
    const-string v29, "WebViewLoadCalled"

    .line 103
    .line 104
    const-string v30, "PageStarted"

    .line 105
    .line 106
    const-string v31, "WebViewLoadFinished"

    .line 107
    .line 108
    const-string v32, "FireAdReady"

    .line 109
    .line 110
    const-string v33, "FireAdFailed"

    .line 111
    .line 112
    const-string v34, "TemplateEventDropped"

    .line 113
    .line 114
    const-string v35, "NetworkLoadLimitExceeded"

    .line 115
    .line 116
    const-string v36, "clickStartCalled"

    .line 117
    .line 118
    const-string v37, "landingsStartSuccess"

    .line 119
    .line 120
    const-string v38, "landingsStartFailed"

    .line 121
    .line 122
    const-string v39, "browserOpenFailed"

    .line 123
    .line 124
    const-string v40, "landingsPageStarted"

    .line 125
    .line 126
    filled-new-array/range {v2 .. v42}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->priorityEvents:Ljava/util/List;

    .line 135
    .line 136
    new-instance v1, Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;

    .line 137
    .line 138
    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->base:Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;

    .line 142
    .line 143
    new-instance v1, Lcom/inmobi/media/S9;

    .line 144
    .line 145
    invoke-direct {v1}, Lcom/inmobi/media/S9;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->networkType:Lcom/inmobi/media/S9;

    .line 149
    .line 150
    new-instance v1, Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;

    .line 151
    .line 152
    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->loggingConfig:Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;

    .line 156
    .line 157
    new-instance v1, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 158
    .line 159
    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->lpConfig:Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 163
    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->setDefaultNetworkConfig()V

    .line 165
    .line 166
    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getDefaultAssetReportingConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->assetReporting:Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 172
    .line 173
    return-void
.end method

.method public static final synthetic access$getDEFAULT_LOG_LEVEL$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->DEFAULT_LOG_LEVEL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final getDefaultAssetReportingConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->setVideo(Z)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->setImage(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->setGif(Z)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private final setDefaultNetworkConfig()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->networkType:Lcom/inmobi/media/S9;

    .line 2
    .line 3
    new-instance v1, Lcom/inmobi/media/R9;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/inmobi/media/R9;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x3c

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/R9;->a(J)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x5

    .line 14
    invoke-virtual {v1, v4}, Lcom/inmobi/media/R9;->c(I)V

    .line 15
    .line 16
    .line 17
    const/16 v5, 0x14

    .line 18
    .line 19
    invoke-virtual {v1, v5}, Lcom/inmobi/media/R9;->b(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v6, "<set-?>"

    .line 26
    .line 27
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/inmobi/media/S9;->wifi:Lcom/inmobi/media/R9;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->networkType:Lcom/inmobi/media/S9;

    .line 33
    .line 34
    new-instance v1, Lcom/inmobi/media/R9;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/inmobi/media/R9;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/R9;->a(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lcom/inmobi/media/R9;->c(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v5}, Lcom/inmobi/media/R9;->b(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lcom/inmobi/media/S9;->others:Lcom/inmobi/media/R9;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->assetReporting:Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->base:Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$Base;->getEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getEventConfig()Lcom/inmobi/media/q4;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v17, Lcom/inmobi/media/q4;

    .line 4
    .line 5
    iget v2, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxRetryCount:I

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->eventTTL:J

    .line 8
    .line 9
    iget-wide v5, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->processingInterval:J

    .line 10
    .line 11
    iget-wide v7, v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->txLatency:J

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getWifiConfig()Lcom/inmobi/media/R9;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/inmobi/media/R9;->b()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getWifiConfig()Lcom/inmobi/media/R9;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/inmobi/media/R9;->a()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMobileConfig()Lcom/inmobi/media/R9;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/inmobi/media/R9;->b()I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMobileConfig()Lcom/inmobi/media/R9;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/inmobi/media/R9;->a()I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getWifiConfig()Lcom/inmobi/media/R9;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/inmobi/media/R9;->c()J

    .line 50
    .line 51
    .line 52
    move-result-wide v13

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMobileConfig()Lcom/inmobi/media/R9;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/inmobi/media/R9;->c()J

    .line 58
    .line 59
    .line 60
    move-result-wide v15

    .line 61
    move-object/from16 v1, v17

    .line 62
    .line 63
    invoke-direct/range {v1 .. v16}, Lcom/inmobi/media/q4;-><init>(IJJJIIIIJJ)V

    .line 64
    .line 65
    .line 66
    return-object v17
.end method

.method public final getLoggingConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->loggingConfig:Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLpConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->lpConfig:Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxEventsToPersist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxEventsToPersist:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxTemplateEvents()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxTemplateEvents:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMobileConfig()Lcom/inmobi/media/R9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->networkType:Lcom/inmobi/media/S9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S9;->others:Lcom/inmobi/media/R9;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "others"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final getPingSamplingFactor()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->pingSamplingFactor:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPriorityEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->priorityEvents:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSamplingFactor()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->samplingFactor:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTelemetryUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "telemetry"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWifiConfig()Lcom/inmobi/media/R9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->networkType:Lcom/inmobi/media/S9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S9;->wifi:Lcom/inmobi/media/R9;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "wifi"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final isGeneralEventsDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->disableAllGeneralEvents:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSameAs(Lcom/inmobi/commons/core/configs/TelemetryConfig;)Z
    .locals 7
    .param p1    # Lcom/inmobi/commons/core/configs/TelemetryConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v0, v3, v2, v4, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :cond_1
    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    return v2

    .line 76
    :cond_4
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-wide v3, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;->samplingFactor:D

    .line 89
    .line 90
    iget-wide v5, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->samplingFactor:D

    .line 91
    .line 92
    cmpg-double v0, v3, v5

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    iget-wide v3, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;->eventTTL:J

    .line 97
    .line 98
    iget-wide v5, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->eventTTL:J

    .line 99
    .line 100
    cmp-long v0, v3, v5

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    iget v0, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxEventsToPersist:I

    .line 105
    .line 106
    iget v3, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxEventsToPersist:I

    .line 107
    .line 108
    if-ne v0, v3, :cond_5

    .line 109
    .line 110
    iget v0, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxRetryCount:I

    .line 111
    .line 112
    iget v3, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxRetryCount:I

    .line 113
    .line 114
    if-ne v0, v3, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isImageEnabled()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isImageEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ne v0, v3, :cond_5

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isGifEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isGifEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-ne v0, v3, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isVideoEnabled()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isVideoEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-ne p1, v0, :cond_5

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    move v1, v2

    .line 172
    :goto_1
    return v1
.end method

.method public isValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/inmobi/media/D4;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->txLatency:J

    .line 12
    .line 13
    iget-wide v4, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->processingInterval:J

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-ltz v0, :cond_4

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->eventTTL:J

    .line 20
    .line 21
    cmp-long v0, v2, v4

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->networkType:Lcom/inmobi/media/S9;

    .line 27
    .line 28
    iget v2, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxEventsToPersist:I

    .line 29
    .line 30
    iget-object v3, v0, Lcom/inmobi/media/S9;->wifi:Lcom/inmobi/media/R9;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "wifi"

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v3, v4

    .line 42
    :goto_0
    invoke-virtual {v3, v2}, Lcom/inmobi/media/R9;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    iget-object v0, v0, Lcom/inmobi/media/S9;->others:Lcom/inmobi/media/R9;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    move-object v4, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string v0, "others"

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {v4, v2}, Lcom/inmobi/media/R9;->a(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->processingInterval:J

    .line 66
    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    cmp-long v0, v2, v4

    .line 70
    .line 71
    if-lez v0, :cond_4

    .line 72
    .line 73
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxRetryCount:I

    .line 74
    .line 75
    if-ltz v0, :cond_4

    .line 76
    .line 77
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->txLatency:J

    .line 78
    .line 79
    cmp-long v0, v2, v4

    .line 80
    .line 81
    if-lez v0, :cond_4

    .line 82
    .line 83
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->eventTTL:J

    .line 84
    .line 85
    cmp-long v0, v2, v4

    .line 86
    .line 87
    if-lez v0, :cond_4

    .line 88
    .line 89
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->maxEventsToPersist:I

    .line 90
    .line 91
    if-lez v0, :cond_4

    .line 92
    .line 93
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->samplingFactor:D

    .line 94
    .line 95
    const-wide/16 v4, 0x0

    .line 96
    .line 97
    cmpg-double v0, v2, v4

    .line 98
    .line 99
    if-ltz v0, :cond_4

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    :cond_4
    :goto_2
    return v1
.end method

.method public final setTelemetryUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->telemetryUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final shouldSendCrashEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->sendCrashEvents:Z

    .line 2
    .line 3
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->Companion:Lcom/inmobi/media/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/inmobi/media/q6;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/inmobi/media/q6;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 12
    .line 13
    const-string v2, "priorityEvents"

    .line 14
    .line 15
    const-class v3, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/inmobi/media/U6;

    .line 21
    .line 22
    new-instance v3, Lcom/inmobi/media/Qd;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/inmobi/media/Qd;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v4, Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Lcom/inmobi/media/q6;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "TAG"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object v0
.end method
