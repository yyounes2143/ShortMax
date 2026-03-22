.class public final Lcom/inmobi/commons/core/configs/CrashConfig;
.super Lcom/inmobi/commons/core/configs/Config;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/k3;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_ANR_WATCHDOG_INTERVAL:J = 0x1194L

.field public static final DEFAULT_APP_EXIT_REASON_WAIT_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_APP_EXIT_SAMPLING_PERCENT:D = 0.0

.field public static final DEFAULT_CATCH_ENABLED:Z = false

.field public static final DEFAULT_CATCH_SAMPLING_PERCENT:D = 0.0

.field public static final DEFAULT_CRASH_ENABLED:Z = true

.field public static final DEFAULT_CRASH_SAMPLING_PERCENT:D = 1.0

.field public static final DEFAULT_EVENT_TTL_SEC:J = 0x3f480L

.field public static final DEFAULT_INCOMPLETE_LOG_THRESHOLD_INTERVAL:J = 0x7530L

.field public static final DEFAULT_INGESTION_LATENCY_SEC:J = 0x15180L

.field public static final DEFAULT_MAX_BATCH_SIZE:I = 0x2

.field public static final DEFAULT_MAX_EVENTS_TO_PERSIST:I = 0x32

.field public static final DEFAULT_MAX_NO_OF_LINES:I = 0xc8

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_MIN_BATCH_SIZE:I = 0x1

.field public static final DEFAULT_PROCESSING_INTERVAL_SEC:J = 0x3cL

.field public static final DEFAULT_RETRY_INTERVAL_SEC:J = 0xaL

.field public static final DEFAULT_URL:Ljava/lang/String; = "https://crash-metrics.sdk.inmobi.com/trace"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_WATCHDOG_SAMPLING_PERCENT:D


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation
.end field

.field private anr:Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private catchConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private catchEnabled:Z

.field private crashConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private crashEnabled:Z

.field private eventTTL:J

.field private maxEventsToPersist:I

.field private maxRetryCount:I

.field private networkType:Lcom/inmobi/media/S9;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private processingInterval:J

.field private txLatency:J

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/k3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/k3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/commons/core/configs/CrashConfig;->Companion:Lcom/inmobi/media/k3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/Config;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "CrashConfig"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "https://crash-metrics.sdk.inmobi.com/trace"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->url:Ljava/lang/String;

    .line 11
    .line 12
    const-wide/16 v0, 0x3c

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    iput p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxRetryCount:I

    .line 18
    .line 19
    const/16 p1, 0x32

    .line 20
    .line 21
    iput p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    .line 22
    .line 23
    const-wide/32 v0, 0x3f480

    .line 24
    .line 25
    .line 26
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    .line 27
    .line 28
    const-wide/32 v0, 0x15180

    .line 29
    .line 30
    .line 31
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->crashEnabled:Z

    .line 35
    .line 36
    new-instance p1, Lcom/inmobi/media/S9;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/inmobi/media/S9;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/S9;

    .line 42
    .line 43
    new-instance p1, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->anr:Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 49
    .line 50
    new-instance p1, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->crashConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 56
    .line 57
    new-instance p1, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->catchConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->setDefaultNetworkConfig()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private final setDefaultNetworkConfig()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/S9;

    .line 2
    .line 3
    new-instance v1, Lcom/inmobi/media/R9;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/inmobi/media/R9;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0xa

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/R9;->a(J)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v1, v4}, Lcom/inmobi/media/R9;->c(I)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    invoke-virtual {v1, v5}, Lcom/inmobi/media/R9;->b(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v6, "<set-?>"

    .line 25
    .line 26
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/inmobi/media/S9;->wifi:Lcom/inmobi/media/R9;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/S9;

    .line 32
    .line 33
    new-instance v1, Lcom/inmobi/media/R9;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/inmobi/media/R9;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/R9;->a(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v4}, Lcom/inmobi/media/R9;->c(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lcom/inmobi/media/R9;->b(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/inmobi/media/S9;->others:Lcom/inmobi/media/R9;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->anr:Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCatchConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->catchConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->crashConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 2
    .line 3
    return-object v0
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
    iget v2, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxRetryCount:I

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    .line 8
    .line 9
    iget-wide v5, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    .line 10
    .line 11
    iget-wide v7, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/R9;

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
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/R9;

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
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/R9;

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
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/R9;

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
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/R9;

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
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/R9;

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

.method public final getEventTTL()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMaxEventsToPersist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMobileConfig()Lcom/inmobi/media/R9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/S9;

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

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "crashReporting"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWifiConfig()Lcom/inmobi/media/R9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/S9;

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

.method public isValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->url:Ljava/lang/String;

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
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    .line 12
    .line 13
    iget-wide v4, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-ltz v0, :cond_4

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

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
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/S9;

    .line 27
    .line 28
    iget v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

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
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

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
    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxRetryCount:I

    .line 74
    .line 75
    if-ltz v0, :cond_4

    .line 76
    .line 77
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    .line 78
    .line 79
    cmp-long v0, v2, v4

    .line 80
    .line 81
    if-lez v0, :cond_4

    .line 82
    .line 83
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    .line 84
    .line 85
    cmp-long v0, v2, v4

    .line 86
    .line 87
    if-lez v0, :cond_4

    .line 88
    .line 89
    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    .line 90
    .line 91
    if-lez v0, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    :cond_4
    :goto_2
    return v1
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/CrashConfig;->Companion:Lcom/inmobi/media/k3;

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
    invoke-virtual {v0, p0}, Lcom/inmobi/media/q6;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "TAG"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method
