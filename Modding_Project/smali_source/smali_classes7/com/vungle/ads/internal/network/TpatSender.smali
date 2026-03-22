.class public final Lcom/vungle/ads/internal/network/TpatSender;
.super Ljava/lang/Object;
.source "TpatSender.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/TpatSender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/TpatSender$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FAILED_TPATS:Ljava/lang/String; = "FAILED_TPATS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TpatSender"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final jobExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final signalManager:Lcom/vungle/ads/internal/signals/SignalManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tpatFilePreferences:Lcom/vungle/ads/internal/persistence/FilePreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tpatLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/network/TpatSender$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/TpatSender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/network/TpatSender;->Companion:Lcom/vungle/ads/internal/network/TpatSender$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/signals/SignalManager;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/network/VungleApiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/ads/internal/util/PathProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/ads/internal/signals/SignalManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "vungleApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/network/TpatSender;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 3
    iput-object p3, p0, Lcom/vungle/ads/internal/network/TpatSender;->jobExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p5, p0, Lcom/vungle/ads/internal/network/TpatSender;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    .line 5
    sget-object p1, Lcom/vungle/ads/internal/persistence/FilePreferences;->Companion:Lcom/vungle/ads/internal/persistence/FilePreferences$Companion;

    const-string p3, "vngFailedTpats"

    invoke-virtual {p1, p2, p4, p3}, Lcom/vungle/ads/internal/persistence/FilePreferences$Companion;->get(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/TpatSender;->tpatFilePreferences:Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/TpatSender;->tpatLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/signals/SignalManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/network/TpatSender;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/signals/SignalManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat$lambda-1(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getStoredTpats()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/network/FailedTpat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatSender;->tpatFilePreferences:Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 2
    .line 3
    const-string v1, "FAILED_TPATS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 12
    .line 13
    sget-object v1, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 14
    .line 15
    invoke-interface {v1}, Lst/j;->getSerializersModule()Lxt/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-class v3, Ljava/util/Map;

    .line 20
    .line 21
    sget-object v4, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    .line 22
    .line 23
    const-class v5, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4, v5}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-class v6, Lcom/vungle/ads/internal/network/FailedTpat;

    .line 34
    .line 35
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v4, v6}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v5, v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->mutableCollectionType(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast v2, Lst/c;

    .line 61
    .line 62
    invoke-interface {v1, v2, v0}, Lst/w;->b(Lst/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/Map;

    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    sget-object v2, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "Failed to decode stored tpats: "

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v3, "TpatSender"

    .line 110
    .line 111
    invoke-virtual {v2, v3, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-nez v1, :cond_1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    :goto_1
    check-cast v0, Ljava/util/Map;

    .line 127
    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-object v0
.end method

.method private final isPriorityTpat(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "checkpoint.0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "clickUrl"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "impression"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "load_ad"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method private final logTpatError(Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Lcom/vungle/ads/internal/model/ErrorInfo;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tpat key: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getTpatKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", error: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/ErrorInfo;->getDescription()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", errorIsTerminal: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/ErrorInfo;->getErrorIsTerminal()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p3, " url: "

    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object p3, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 55
    .line 56
    const-string v0, "TpatSender"

    .line 57
    .line 58
    invoke-virtual {p3, v0, p2}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance p3, Lcom/vungle/ads/TpatError;

    .line 62
    .line 63
    invoke-direct {p3, p4, p2}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p3, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final performPriorityRetry(Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;)Lcom/vungle/ads/internal/model/ErrorInfo;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getPriorityRetry()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getTpatKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/network/TpatSender;->isPriorityTpat(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->retryPriorityTPATs()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move v0, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/vungle/ads/internal/network/TpatSender;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getHeaders()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getBody()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getMethod()Lcom/vungle/ads/internal/network/HttpMethod;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getLogEntry()Lcom/vungle/ads/internal/util/LogEntry;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    move-object v5, p2

    .line 54
    invoke-virtual/range {v4 .. v9}, Lcom/vungle/ads/internal/network/VungleApiClient;->pingTPAT(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/internal/model/ErrorInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ErrorInfo;->isRetryCode()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-ne v4, v3, :cond_3

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getPriorityRetryCount()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-lt v2, v4, :cond_2

    .line 75
    .line 76
    :cond_3
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getPriorityRetryCount()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lt v2, v0, :cond_4

    .line 83
    .line 84
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_RETRY_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 88
    .line 89
    :goto_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/vungle/ads/internal/network/TpatSender;->logTpatError(Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Lcom/vungle/ads/internal/model/ErrorInfo;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return-object v1
.end method

.method private final saveStoredTpats(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/network/FailedTpat;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatSender;->tpatFilePreferences:Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 4
    .line 5
    const-string v1, "FAILED_TPATS"

    .line 6
    .line 7
    sget-object v2, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 8
    .line 9
    invoke-interface {v2}, Lst/j;->getSerializersModule()Lxt/a;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-class v4, Ljava/util/Map;

    .line 14
    .line 15
    sget-object v5, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    .line 16
    .line 17
    const-class v6, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v5, v6}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-class v7, Lcom/vungle/ads/internal/network/FailedTpat;

    .line 28
    .line 29
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v5, v7}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v4, v6, v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->mutableCollectionType(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast v3, Lst/l;

    .line 55
    .line 56
    invoke-interface {v2, v3, p1}, Lst/w;->a(Lst/l;Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->apply()V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "Failed to encode the about to storing tpats: "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v1, "TpatSender"

    .line 111
    .line 112
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_0
    return-void
.end method

.method public static synthetic sendTpat$default(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat(Lcom/vungle/ads/internal/network/TpatRequest;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final sendTpat$lambda-1(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "this$0"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "$request"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "$urlWithSessionId"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct/range {p0 .. p2}, Lcom/vungle/ads/internal/network/TpatSender;->performPriorityRetry(Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;)Lcom/vungle/ads/internal/model/ErrorInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getRegularRetry()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/ErrorInfo;->getErrorIsTerminal()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ne v5, v4, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    if-nez v3, :cond_2

    .line 44
    .line 45
    if-nez p3, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v5, v0, Lcom/vungle/ads/internal/network/TpatSender;->tpatLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v5

    .line 51
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/network/TpatSender;->getStoredTpats()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Lcom/vungle/ads/internal/network/FailedTpat;

    .line 64
    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    invoke-virtual {v7}, Lcom/vungle/ads/internal/network/FailedTpat;->getRetryAttempt()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_3
    const/4 v7, 0x0

    .line 76
    :goto_0
    if-nez v3, :cond_4

    .line 77
    .line 78
    if-lez v7, :cond_4

    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getUrl()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/TpatSender;->saveStoredTpats(Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getRegularRetryCount()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-lt v7, v8, :cond_5

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/TpatSender;->saveStoredTpats(Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_RETRY_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 110
    .line 111
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/network/TpatSender;->logTpatError(Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Lcom/vungle/ads/internal/model/ErrorInfo;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    if-eqz v3, :cond_8

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getUrl()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    move-object v8, v2

    .line 126
    check-cast v8, Lcom/vungle/ads/internal/network/FailedTpat;

    .line 127
    .line 128
    if-eqz v8, :cond_6

    .line 129
    .line 130
    add-int/lit8 v12, v7, 0x1

    .line 131
    .line 132
    const/16 v15, 0x37

    .line 133
    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    const/4 v10, 0x0

    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    invoke-static/range {v8 .. v16}, Lcom/vungle/ads/internal/network/FailedTpat;->copy$default(Lcom/vungle/ads/internal/network/FailedTpat;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/network/FailedTpat;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-nez v2, :cond_7

    .line 146
    .line 147
    :cond_6
    new-instance v2, Lcom/vungle/ads/internal/network/FailedTpat;

    .line 148
    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getMethod()Lcom/vungle/ads/internal/network/HttpMethod;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getHeaders()Ljava/util/Map;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getBody()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getRegularRetryCount()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getTpatKey()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    const/4 v11, 0x1

    .line 170
    move-object v7, v2

    .line 171
    invoke-direct/range {v7 .. v13}, Lcom/vungle/ads/internal/network/FailedTpat;-><init>(Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/TpatSender;->saveStoredTpats(Ljava/util/Map;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .line 186
    monitor-exit v5

    .line 187
    return-void

    .line 188
    :goto_2
    monitor-exit v5

    .line 189
    throw v0
.end method


# virtual methods
.method public final getJobExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatSender;->jobExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignalManager()Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatSender;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatSender;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public final injectSessionIdToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/network/TpatSender;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/SignalManager;->getUuid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lez v1, :cond_2

    .line 25
    .line 26
    const-string v1, "{{{session_id}}}"

    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "quote(Constants.SESSION_ID)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lkotlin/text/Regex;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_2
    return-object p1
.end method

.method public final resendStoredTpats$vungle_ads_release()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/network/TpatSender;->getStoredTpats()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/vungle/ads/internal/network/FailedTpat;

    .line 36
    .line 37
    new-instance v3, Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 38
    .line 39
    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->regularRetry(Z)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->priorityRetry(Z)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/FailedTpat;->getHeaders()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->headers(Ljava/util/Map;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/FailedTpat;->getBody()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->body(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/FailedTpat;->getRetryCount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->regularRetryCount(I)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/FailedTpat;->getMethod()Lcom/vungle/ads/internal/network/HttpMethod;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->method(Lcom/vungle/ads/internal/network/HttpMethod;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/FailedTpat;->getTpatKey()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/TpatRequest$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/TpatRequest$Builder;->build()Lcom/vungle/ads/internal/network/TpatRequest;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v1, v2}, Lcom/vungle/ads/internal/network/TpatSender;->sendTpat(Lcom/vungle/ads/internal/network/TpatRequest;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public final sendTpat(Lcom/vungle/ads/internal/network/TpatRequest;Z)V
    .locals 3
    .param p1    # Lcom/vungle/ads/internal/network/TpatRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/TpatRequest;->getUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/TpatSender;->injectSessionIdToUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/vungle/ads/internal/network/TpatSender;->jobExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance v2, Lcom/vungle/ads/internal/network/a;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/vungle/ads/internal/network/a;-><init>(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
