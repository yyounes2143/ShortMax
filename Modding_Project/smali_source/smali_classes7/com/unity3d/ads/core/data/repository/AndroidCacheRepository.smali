.class public final Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;
.super Ljava/lang/Object;
.source "AndroidCacheRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/CacheRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"
    }
.end annotation


# instance fields
.field private final cacheDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final createFile:Lcom/unity3d/ads/core/domain/CreateFile;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadPriorityQueue:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCacheDirectory:Lcom/unity3d/ads/core/domain/GetCacheDirectory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final localCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remoteCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final webviewCacheDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Lcom/unity3d/ads/core/domain/GetCacheDirectory;Lcom/unity3d/ads/core/data/datasource/CacheDataSource;Lcom/unity3d/ads/core/data/datasource/CacheDataSource;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;Lcom/unity3d/ads/core/domain/CreateFile;)V
    .locals 1
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/GetCacheDirectory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/datasource/CacheDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/datasource/CacheDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/unity3d/services/core/network/domain/CleanupDirectory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/unity3d/ads/core/domain/CreateFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ioDispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getCacheDirectory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "localCacheDataSource"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "remoteCacheDataSource"

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
    const-string v0, "sessionRepository"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "cleanupDirectory"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "downloadPriorityQueue"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "createFile"

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
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getCacheDirectory:Lcom/unity3d/ads/core/domain/GetCacheDirectory;

    .line 50
    .line 51
    iput-object p3, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->localCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;

    .line 52
    .line 53
    iput-object p4, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->remoteCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;

    .line 54
    .line 55
    iput-object p5, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->context:Landroid/content/Context;

    .line 56
    .line 57
    iput-object p6, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 58
    .line 59
    iput-object p7, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 60
    .line 61
    iput-object p8, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->downloadPriorityQueue:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 62
    .line 63
    iput-object p9, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->createFile:Lcom/unity3d/ads/core/domain/CreateFile;

    .line 64
    .line 65
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lgt/f0;

    .line 70
    .line 71
    const-string p3, "CacheRepository"

    .line 72
    .line 73
    invoke-direct {p2, p3}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object p2, Lkotlinx/coroutines/v;->a:Lkotlinx/coroutines/v;

    .line 81
    .line 82
    invoke-static {p1, p2}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->scope:Lgt/g0;

    .line 87
    .line 88
    const-string p1, "UnityAdsCache"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->initCacheDir(Ljava/lang/String;)Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->cacheDir:Ljava/io/File;

    .line 95
    .line 96
    const-string p1, "webview_cache"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->initCacheDir(Ljava/lang/String;)Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->webviewCacheDir:Ljava/io/File;

    .line 103
    .line 104
    return-void
.end method

.method public static final synthetic access$getCacheDir$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->cacheDir:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCleanupDirectory$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/services/core/network/domain/CleanupDirectory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->cleanupDirectory:Lcom/unity3d/services/core/network/domain/CleanupDirectory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDownloadPriorityQueue$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->downloadPriorityQueue:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFileInternal(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getFileInternal(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getLocalCacheDataSource$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/ads/core/data/datasource/CacheDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->localCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRemoteCacheDataSource$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/ads/core/data/datasource/CacheDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->remoteCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWebviewCacheDir$p(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->webviewCacheDir:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getFileInternal(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->scope:Lgt/g0;

    .line 2
    .line 3
    invoke-interface {p3}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    new-instance v6, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v6

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p1

    .line 14
    move v4, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Ljava/lang/String;Ljava/io/File;ILrs/c;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3, v6, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final initCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getCacheDirectory:Lcom/unity3d/ads/core/domain/GetCacheDirectory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "context.cacheDir"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/domain/GetCacheDirectory;->invoke(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    return-object p1
.end method


# virtual methods
.method public clearCache(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->scope:Lgt/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$clearCache$2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$clearCache$2;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public doesFileExist(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$doesFileExist$1;->label:I

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->retrieveFile(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-ne p2, v1, :cond_3

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_3
    :goto_1
    instance-of p1, p2, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public getCacheSize(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->scope:Lgt/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getCacheSize$2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository$getCacheSize$2;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getFile(Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->cacheDir:Ljava/io/File;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getFileInternal(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/unity3d/ads/core/extensions/StringExtensionsKt;->getSHA256Hash(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x2e

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-static {p1, v1, v2, v3, v2}, Lkotlin/text/StringsKt;->k1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public getWebviewFile(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->createFile:Lcom/unity3d/ads/core/domain/CreateFile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->webviewCacheDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0, v1, p2}, Lcom/unity3d/ads/core/domain/CreateFile;->invoke(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v7, p3

    .line 17
    invoke-direct/range {v2 .. v7}, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->getFileInternal(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;ILrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public removeFile(Lcom/unity3d/ads/core/data/model/CachedFile;)Z
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/model/CachedFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cachedFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/CachedFile;->getFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_1
    return p1
.end method

.method public retrieveFile(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/CacheResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->localCacheDataSource:Lcom/unity3d/ads/core/data/datasource/CacheDataSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;->cacheDir:Ljava/io/File;

    .line 4
    .line 5
    const/16 v6, 0xc

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v2, p1

    .line 11
    move-object v5, p2

    .line 12
    invoke-static/range {v0 .. v7}, Lcom/unity3d/ads/core/data/datasource/CacheDataSource$DefaultImpls;->getFile$default(Lcom/unity3d/ads/core/data/datasource/CacheDataSource;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
