.class public final Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;
.super Ljava/lang/Object;
.source "AndroidHttpClientProvider.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/HttpClientProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,171:1\n107#2,10:172\n314#3,11:182\n*S KotlinDebug\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider\n*L\n59#1:172,10\n127#1:182,11\n*E\n"
    }
.end annotation


# instance fields
.field private final alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cacheHttpClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cronetEngineBuilderFactory:Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpClientMutex:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediationTraitsMetadataReader:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/services/core/network/domain/CleanupDirectory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "configFileFromLocalStorage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "alternativeFlowReader"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dispatchers"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sendDiagnosticEvent"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "context"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "cronetEngineBuilderFactory"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "sessionRepository"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "cleanupDirectory"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "mediationTraitsMetadataReader"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->context:Landroid/content/Context;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cronetEngineBuilderFactory:Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;

    .line 60
    .line 61
    iput-object p7, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 62
    .line 63
    iput-object p8, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 64
    .line 65
    iput-object p9, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->mediationTraitsMetadataReader:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    const/4 p2, 0x0

    .line 69
    const/4 p3, 0x0

    .line 70
    invoke-static {p3, p1, p2}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->httpClientMutex:Lqt/a;

    .line 75
    .line 76
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cacheHttpClientMap:Ljava/util/Map;

    .line 82
    .line 83
    return-void
.end method

.method public static final synthetic access$buildCronetCachePath(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->buildCronetCachePath(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$buildNetworkClient(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAlternativeFlowReader$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCleanupDirectory$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/network/domain/CleanupDirectory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfigFileFromLocalStorage$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->configFileFromLocalStorage:Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCronetEngineBuilderFactory$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cronetEngineBuilderFactory:Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDispatchers$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method private final buildCronetCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "context.filesDir"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "UnityAdsHttpCache"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lws/f;->z(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "cacheDir.absolutePath"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method private final buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p3}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/net/CronetProviderInstaller;->installProvider(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$buildNetworkClient$2$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Landroid/content/Context;Lgt/i;Lcom/unity3d/services/core/domain/ISDKDispatchers;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object p1
.end method


# virtual methods
.method public invoke(ZLrs/c;)Ljava/lang/Object;
    .locals 25
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v2, v0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    if-eq v4, v7, :cond_2

    .line 44
    .line 45
    if-ne v4, v5, :cond_1

    .line 46
    .line 47
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->I$0:I

    .line 48
    .line 49
    iget-wide v4, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->J$0:J

    .line 50
    .line 51
    iget-boolean v6, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->Z$0:Z

    .line 52
    .line 53
    iget-object v7, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$1:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Lqt/a;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 60
    .line 61
    :try_start_0
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    iget-boolean v4, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->Z$0:Z

    .line 78
    .line 79
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v9, Lqt/a;

    .line 82
    .line 83
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->httpClientMutex:Lqt/a;

    .line 95
    .line 96
    iput-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$1:Ljava/lang/Object;

    .line 99
    .line 100
    move/from16 v4, p1

    .line 101
    .line 102
    iput-boolean v4, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->Z$0:Z

    .line 103
    .line 104
    iput v7, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->label:I

    .line 105
    .line 106
    invoke-interface {v0, v8, v2}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-ne v9, v3, :cond_4

    .line 111
    .line 112
    return-object v3

    .line 113
    :cond_4
    move-object v9, v0

    .line 114
    move-object v10, v1

    .line 115
    :goto_1
    :try_start_1
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cacheHttpClientMap:Ljava/util/Map;

    .line 116
    .line 117
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_5
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;->invoke()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget-object v11, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->mediationTraitsMetadataReader:Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;

    .line 138
    .line 139
    const-string v12, "useRefactoredHttpClient"

    .line 140
    .line 141
    invoke-virtual {v11, v12}, Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;->getBooleanTrait(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v0, :cond_c

    .line 154
    .line 155
    sget-object v0, Lkotlin/time/h;->a:Lkotlin/time/h;

    .line 156
    .line 157
    invoke-virtual {v0}, Lkotlin/time/h;->b()J

    .line 158
    .line 159
    .line 160
    move-result-wide v12

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    if-eqz v11, :cond_6

    .line 164
    .line 165
    move v6, v7

    .line 166
    :cond_6
    if-nez v11, :cond_7

    .line 167
    .line 168
    iget-object v0, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cacheHttpClientMap:Ljava/util/Map;

    .line 169
    .line 170
    xor-int/2addr v7, v4

    .line 171
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cacheHttpClientMap:Ljava/util/Map;

    .line 188
    .line 189
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :catchall_1
    move-exception v0

    .line 195
    move-object v7, v9

    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_7
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;

    .line 199
    .line 200
    invoke-direct {v0, v6, v10, v8}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;-><init>(ZLcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Lrs/c;)V

    .line 201
    .line 202
    .line 203
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$0:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->L$1:Ljava/lang/Object;

    .line 206
    .line 207
    iput-boolean v4, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->Z$0:Z

    .line 208
    .line 209
    iput-wide v12, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->J$0:J

    .line 210
    .line 211
    iput v6, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->I$0:I

    .line 212
    .line 213
    iput v5, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$1;->label:I

    .line 214
    .line 215
    const-wide/16 v14, 0x1f4

    .line 216
    .line 217
    invoke-static {v14, v15, v0, v2}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    if-ne v0, v3, :cond_8

    .line 222
    .line 223
    return-object v3

    .line 224
    :cond_8
    move v3, v6

    .line 225
    move-object v7, v9

    .line 226
    move-object v2, v10

    .line 227
    move v6, v4

    .line 228
    move-wide v4, v12

    .line 229
    :goto_2
    :try_start_2
    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 230
    .line 231
    if-nez v3, :cond_a

    .line 232
    .line 233
    instance-of v3, v0, Lcom/unity3d/services/core/network/core/CronetClient;

    .line 234
    .line 235
    if-nez v3, :cond_9

    .line 236
    .line 237
    const-string v3, "native_cronet_failure_time"

    .line 238
    .line 239
    :goto_3
    move-object v10, v3

    .line 240
    goto :goto_4

    .line 241
    :cond_9
    const-string v3, "native_cronet_success_time"

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :goto_4
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 245
    .line 246
    invoke-static {v4, v5}, Lkotlin/time/h$a;->f(J)J

    .line 247
    .line 248
    .line 249
    move-result-wide v3

    .line 250
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 251
    .line 252
    invoke-static {v3, v4, v5}, Lkotlin/time/b;->H(JLkotlin/time/DurationUnit;)D

    .line 253
    .line 254
    .line 255
    move-result-wide v3

    .line 256
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    const/16 v16, 0x3c

    .line 261
    .line 262
    const/16 v17, 0x0

    .line 263
    .line 264
    const/4 v12, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v14, 0x0

    .line 267
    const/4 v15, 0x0

    .line 268
    invoke-static/range {v9 .. v17}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    if-nez v0, :cond_b

    .line 272
    .line 273
    new-instance v0, Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 274
    .line 275
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 276
    .line 277
    new-instance v20, Lokhttp3/OkHttpClient;

    .line 278
    .line 279
    invoke-direct/range {v20 .. v20}, Lokhttp3/OkHttpClient;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->context:Landroid/content/Context;

    .line 283
    .line 284
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 285
    .line 286
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 287
    .line 288
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 289
    .line 290
    move-object/from16 v18, v0

    .line 291
    .line 292
    move-object/from16 v19, v3

    .line 293
    .line 294
    move-object/from16 v21, v4

    .line 295
    .line 296
    move-object/from16 v22, v5

    .line 297
    .line 298
    move-object/from16 v23, v9

    .line 299
    .line 300
    move-object/from16 v24, v10

    .line 301
    .line 302
    invoke-direct/range {v18 .. v24}, Lcom/unity3d/services/core/network/core/OkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .line 304
    .line 305
    :cond_b
    move-object v10, v2

    .line 306
    move v4, v6

    .line 307
    goto :goto_6

    .line 308
    :cond_c
    :try_start_3
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$config$1;

    .line 309
    .line 310
    invoke-direct {v0, v10, v8}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$config$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Lrs/c;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v8, v0, v7, v8}, Lgt/e;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lcom/unity3d/services/core/configuration/Configuration;

    .line 318
    .line 319
    if-eqz v0, :cond_d

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/IExperiments;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_d

    .line 326
    .line 327
    invoke-interface {v0}, Lcom/unity3d/services/core/configuration/IExperiments;->isOkHttpEnabled()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-ne v0, v7, :cond_d

    .line 332
    .line 333
    new-instance v0, Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 334
    .line 335
    iget-object v12, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 336
    .line 337
    new-instance v13, Lokhttp3/OkHttpClient;

    .line 338
    .line 339
    invoke-direct {v13}, Lokhttp3/OkHttpClient;-><init>()V

    .line 340
    .line 341
    .line 342
    iget-object v14, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->context:Landroid/content/Context;

    .line 343
    .line 344
    iget-object v15, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 345
    .line 346
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 347
    .line 348
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->alternativeFlowReader:Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 349
    .line 350
    move-object v11, v0

    .line 351
    move-object/from16 v16, v2

    .line 352
    .line 353
    move-object/from16 v17, v3

    .line 354
    .line 355
    invoke-direct/range {v11 .. v17}, Lcom/unity3d/services/core/network/core/OkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;)V

    .line 356
    .line 357
    .line 358
    :goto_5
    move-object v7, v9

    .line 359
    goto :goto_6

    .line 360
    :cond_d
    new-instance v0, Lcom/unity3d/services/core/network/core/LegacyHttpClient;

    .line 361
    .line 362
    iget-object v2, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 363
    .line 364
    invoke-direct {v0, v2}, Lcom/unity3d/services/core/network/core/LegacyHttpClient;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :goto_6
    :try_start_4
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    iget-object v3, v10, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->cacheHttpClientMap:Ljava/util/Map;

    .line 373
    .line 374
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    .line 376
    .line 377
    move-object v9, v7

    .line 378
    :goto_7
    invoke-interface {v9, v8}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    return-object v0

    .line 382
    :goto_8
    invoke-interface {v7, v8}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    throw v0
.end method
