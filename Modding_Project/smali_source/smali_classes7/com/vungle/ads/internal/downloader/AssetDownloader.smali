.class public final Lcom/vungle/ads/internal/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.kt"

# interfaces
.implements Lcom/vungle/ads/internal/downloader/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;,
        Lcom/vungle/ads/internal/downloader/AssetDownloader$OkHttpSingleton;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DOWNLOAD_CHUNK_SIZE:I = 0x800

.field private static final GZIP:Ljava/lang/String; = "gzip"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MINIMUM_SPACE_REQUIRED_MB:I = 0x1400000

.field private static final TAG:Ljava/lang/String; = "AssetDownloader"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final downloadExecutor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final okHttpClient$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathProvider:Lcom/vungle/ads/internal/util/PathProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transitioning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/PathProvider;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/util/PathProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "downloadExecutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pathProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->downloadExecutor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 17
    .line 18
    new-instance p1, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;-><init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->okHttpClient$delegate:Lms/i;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->download$lambda-0(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getPathProvider$p(Lcom/vungle/ads/internal/downloader/AssetDownloader;)Lcom/vungle/ads/internal/util/PathProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$launchRequest(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->launchRequest(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkSpaceAvailable(Lcom/vungle/ads/internal/downloader/DownloadRequest;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/PathProvider;->getVungleDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "pathProvider.getVungleDir().absolutePath"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/PathProvider;->getAvailableBytes(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x1400000

    .line 21
    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-gez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Lcom/vungle/ads/NoSpaceError;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "Insufficient space "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v2, v0}, Lcom/vungle/ads/NoSpaceError;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_0
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method private final decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Content-Encoding"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {p1, v1, v2, v3, v2}, Lokhttp3/Response;->t(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "gzip"

    .line 15
    .line 16
    invoke-static {v5, v1, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, Lokio/GzipSource;

    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "Content-Type"

    .line 34
    .line 35
    invoke-static {p1, v0, v2, v3, v2}, Lokhttp3/Response;->t(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    .line 40
    .line 41
    const-wide/16 v2, -0x1

    .line 42
    .line 43
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, p1, v2, v3, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method private final deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p3, p1}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener;->onError(Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "On success "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "AssetDownloader"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-interface {p3, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener;->onSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private static final download$lambda-0(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

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
    const-string v1, "Failed to execute download request: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 32
    .line 33
    new-instance v2, Lcom/vungle/ads/OutOfMemory;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;->getINTERNAL_ERROR()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v3, -0x1

    .line 45
    invoke-direct {v1, v3, v2, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0, p2, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->okHttpClient$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method private final isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lokhttp3/HttpUrl;->k:Lokhttp3/HttpUrl$Companion;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 21
    :goto_1
    return p1
.end method

.method private final launchRequest(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "On cancel "

    .line 8
    .line 9
    const-string v5, "download status: "

    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "launch request in thread: "

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, " request: "

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, "AssetDownloader"

    .line 55
    .line 56
    invoke-virtual {v0, v7, v6}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "Request "

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " is cancelled before starting"

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v7, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;

    .line 99
    .line 100
    invoke-direct {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 101
    .line 102
    .line 103
    sget-object v2, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getCANCELLED()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_0
    new-instance v6, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;

    .line 114
    .line 115
    invoke-direct {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    invoke-virtual {v6, v8, v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setTimestampDownloadStart(J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdAsset;->getLocalPath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    const/4 v10, -0x1

    .line 146
    if-nez v9, :cond_1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {v1, v8}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->isValidUrl(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-nez v9, :cond_2

    .line 154
    .line 155
    :goto_0
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 156
    .line 157
    new-instance v4, Lcom/vungle/ads/AssetDownloadError;

    .line 158
    .line 159
    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_ASSET_URL:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 160
    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v7, "invalid url: "

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-direct {v4, v5, v6}, Lcom/vungle/ads/AssetDownloadError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v4, v5}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    sget-object v5, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;

    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;->getINTERNAL_ERROR()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-direct {v0, v10, v4, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-nez v9, :cond_3

    .line 211
    .line 212
    new-instance v4, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 213
    .line 214
    new-instance v5, Lcom/vungle/ads/AssetDownloadError;

    .line 215
    .line 216
    sget-object v6, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->ASSET_WRITE_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 217
    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v8, "invalid path: "

    .line 224
    .line 225
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {v5, v6, v0}, Lcom/vungle/ads/AssetDownloadError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v5, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    sget-object v5, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;

    .line 251
    .line 252
    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;->getFILE_NOT_FOUND_ERROR()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    invoke-direct {v4, v10, v0, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    .line 257
    .line 258
    .line 259
    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->checkSpaceAvailable(Lcom/vungle/ads/internal/downloader/DownloadRequest;)Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    const/4 v11, 0x1

    .line 268
    const/4 v12, 0x0

    .line 269
    if-nez v9, :cond_4

    .line 270
    .line 271
    new-instance v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 272
    .line 273
    new-instance v4, Lcom/vungle/ads/NoSpaceError;

    .line 274
    .line 275
    invoke-direct {v4, v12, v11, v12}, Lcom/vungle/ads/NoSpaceError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-virtual {v4, v5}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    sget-object v5, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;

    .line 291
    .line 292
    invoke-virtual {v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;->getDISK_ERROR()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    invoke-direct {v0, v10, v4, v5}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    .line 297
    .line 298
    .line 299
    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_4
    new-instance v9, Ljava/io/File;

    .line 304
    .line 305
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    move-object v14, v12

    .line 309
    const/4 v0, 0x0

    .line 310
    :goto_1
    if-nez v0, :cond_23

    .line 311
    .line 312
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 313
    .line 314
    .line 315
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 316
    if-eqz v0, :cond_5

    .line 317
    .line 318
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    if-nez v15, :cond_5

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    move-object v10, v2

    .line 330
    move-object v11, v3

    .line 331
    move-object v2, v4

    .line 332
    move-object v4, v12

    .line 333
    move-object v13, v4

    .line 334
    move-object/from16 v16, v14

    .line 335
    .line 336
    move-object v14, v9

    .line 337
    move-object v9, v1

    .line 338
    move-object v1, v13

    .line 339
    goto/16 :goto_2c

    .line 340
    .line 341
    :catch_0
    move-exception v0

    .line 342
    move-object v11, v3

    .line 343
    move v15, v10

    .line 344
    move-object v13, v12

    .line 345
    move-object/from16 v16, v14

    .line 346
    .line 347
    move-object v3, v1

    .line 348
    move-object v10, v2

    .line 349
    move-object v2, v4

    .line 350
    move-object v1, v13

    .line 351
    move-object v4, v1

    .line 352
    goto/16 :goto_25

    .line 353
    .line 354
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 355
    .line 356
    .line 357
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    .line 358
    if-eqz v0, :cond_6

    .line 359
    .line 360
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 361
    .line 362
    .line 363
    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    move-wide/from16 v10, v17

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_6
    const-wide/16 v10, 0x0

    .line 368
    .line 369
    :goto_3
    :try_start_4
    new-instance v0, Lokhttp3/Request$Builder;

    .line 370
    .line 371
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->getOkHttpClient()Lokhttp3/OkHttpClient;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v12, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    .line 387
    .line 388
    .line 389
    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    .line 390
    :try_start_5
    invoke-interface {v12}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 391
    .line 392
    .line 393
    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    .line 394
    :try_start_6
    invoke-virtual {v13}, Lokhttp3/Response;->o()I

    .line 395
    .line 396
    .line 397
    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 398
    :try_start_7
    invoke-virtual {v13}, Lokhttp3/Response;->isSuccessful()Z

    .line 399
    .line 400
    .line 401
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 402
    if-eqz v0, :cond_14

    .line 403
    .line 404
    :try_start_8
    invoke-virtual {v13}, Lokhttp3/Response;->l()Lokhttp3/Response;

    .line 405
    .line 406
    .line 407
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 408
    if-eqz v0, :cond_7

    .line 409
    .line 410
    :try_start_9
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 411
    .line 412
    move/from16 v16, v15

    .line 413
    .line 414
    :try_start_a
    new-instance v15, Lcom/vungle/ads/SingleValueMetric;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 415
    .line 416
    move-object/from16 v20, v4

    .line 417
    .line 418
    :try_start_b
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CACHED_ASSETS_USED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 419
    .line 420
    invoke-direct {v15, v4}, Lcom/vungle/ads/SingleValueMetric;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-virtual {v0, v15, v4, v8}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/SingleValueMetric;Lcom/vungle/ads/internal/util/LogEntry;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :catchall_1
    move-exception v0

    .line 434
    :goto_4
    move-object v10, v2

    .line 435
    move-object v11, v3

    .line 436
    move-object/from16 v16, v14

    .line 437
    .line 438
    move-object/from16 v2, v20

    .line 439
    .line 440
    const/4 v4, 0x0

    .line 441
    move-object v14, v9

    .line 442
    move-object v9, v1

    .line 443
    const/4 v1, 0x0

    .line 444
    goto/16 :goto_2c

    .line 445
    .line 446
    :catch_1
    move-exception v0

    .line 447
    :goto_5
    move-object v10, v2

    .line 448
    move-object v11, v3

    .line 449
    move/from16 v15, v16

    .line 450
    .line 451
    :goto_6
    move-object/from16 v2, v20

    .line 452
    .line 453
    const/4 v4, 0x0

    .line 454
    move-object v3, v1

    .line 455
    move-object/from16 v16, v14

    .line 456
    .line 457
    const/4 v1, 0x0

    .line 458
    goto/16 :goto_25

    .line 459
    .line 460
    :catchall_2
    move-exception v0

    .line 461
    move-object/from16 v20, v4

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :catch_2
    move-exception v0

    .line 465
    move-object/from16 v20, v4

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :catch_3
    move-exception v0

    .line 469
    move-object/from16 v20, v4

    .line 470
    .line 471
    move/from16 v16, v15

    .line 472
    .line 473
    move-object v10, v2

    .line 474
    move-object v11, v3

    .line 475
    goto :goto_6

    .line 476
    :cond_7
    move-object/from16 v20, v4

    .line 477
    .line 478
    move/from16 v16, v15

    .line 479
    .line 480
    :goto_7
    :try_start_c
    invoke-direct {v1, v13}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->decodeGzipIfNeeded(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 481
    .line 482
    .line 483
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 484
    if-eqz v0, :cond_8

    .line 485
    .line 486
    :try_start_d
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 487
    .line 488
    .line 489
    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 490
    goto :goto_8

    .line 491
    :cond_8
    const/4 v4, 0x0

    .line 492
    :goto_8
    :try_start_e
    sget-object v15, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 493
    .line 494
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 497
    .line 498
    .line 499
    :try_start_10
    const-string v2, "Start download from bytes:"

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v2, ", url: "

    .line 508
    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v15, v7, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 520
    .line 521
    .line 522
    const-wide/16 v1, 0x0

    .line 523
    .line 524
    cmp-long v15, v10, v1

    .line 525
    .line 526
    if-nez v15, :cond_9

    .line 527
    .line 528
    const/4 v1, 0x1

    .line 529
    const/4 v2, 0x0

    .line 530
    const/4 v15, 0x0

    .line 531
    :try_start_11
    invoke-static {v9, v15, v1, v2}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    .line 532
    .line 533
    .line 534
    move-result-object v18
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 535
    goto :goto_d

    .line 536
    :catchall_3
    move-exception v0

    .line 537
    move-object/from16 v10, p1

    .line 538
    .line 539
    move-object v1, v2

    .line 540
    :goto_9
    move-object v11, v3

    .line 541
    :goto_a
    move-object/from16 v16, v14

    .line 542
    .line 543
    move-object/from16 v2, v20

    .line 544
    .line 545
    move-object v14, v9

    .line 546
    move-object/from16 v9, p0

    .line 547
    .line 548
    goto/16 :goto_2c

    .line 549
    .line 550
    :catch_4
    move-exception v0

    .line 551
    move-object/from16 v10, p1

    .line 552
    .line 553
    move-object v1, v2

    .line 554
    :goto_b
    move-object v11, v3

    .line 555
    move/from16 v15, v16

    .line 556
    .line 557
    move-object/from16 v2, v20

    .line 558
    .line 559
    move-object/from16 v3, p0

    .line 560
    .line 561
    :goto_c
    move-object/from16 v16, v14

    .line 562
    .line 563
    goto/16 :goto_25

    .line 564
    .line 565
    :cond_9
    const/4 v1, 0x1

    .line 566
    const/4 v2, 0x0

    .line 567
    const/4 v15, 0x0

    .line 568
    :try_start_12
    invoke-static {v9}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    .line 569
    .line 570
    .line 571
    move-result-object v18

    .line 572
    :goto_d
    invoke-static/range {v18 .. v18}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 573
    .line 574
    .line 575
    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 576
    :try_start_13
    sget-object v18, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 577
    .line 578
    invoke-virtual/range {v18 .. v18}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getSTARTED()I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-virtual {v6, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 583
    .line 584
    .line 585
    if-eqz v0, :cond_a

    .line 586
    .line 587
    :try_start_14
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 588
    .line 589
    .line 590
    move-result-wide v21
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 591
    move-wide/from16 v2, v21

    .line 592
    .line 593
    goto :goto_e

    .line 594
    :catchall_4
    move-exception v0

    .line 595
    move-object/from16 v10, p1

    .line 596
    .line 597
    goto :goto_9

    .line 598
    :catch_5
    move-exception v0

    .line 599
    move-object/from16 v10, p1

    .line 600
    .line 601
    goto :goto_b

    .line 602
    :cond_a
    const-wide/16 v2, 0x0

    .line 603
    .line 604
    :goto_e
    :try_start_15
    invoke-virtual {v6, v2, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setSizeBytes(J)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStartBytes(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 608
    .line 609
    .line 610
    :goto_f
    if-eqz v4, :cond_b

    .line 611
    .line 612
    :try_start_16
    invoke-interface {v1}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    const-wide/16 v2, 0x800

    .line 617
    .line 618
    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 619
    .line 620
    .line 621
    move-result-wide v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 622
    goto :goto_10

    .line 623
    :catchall_5
    move-exception v0

    .line 624
    move-object/from16 v10, p1

    .line 625
    .line 626
    move-object/from16 v11, p2

    .line 627
    .line 628
    goto :goto_a

    .line 629
    :catch_6
    move-exception v0

    .line 630
    move-object/from16 v3, p0

    .line 631
    .line 632
    move-object/from16 v10, p1

    .line 633
    .line 634
    move-object/from16 v11, p2

    .line 635
    .line 636
    move/from16 v15, v16

    .line 637
    .line 638
    move-object/from16 v2, v20

    .line 639
    .line 640
    goto :goto_c

    .line 641
    :cond_b
    const-wide/16 v2, -0x1

    .line 642
    .line 643
    :goto_10
    :try_start_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 644
    .line 645
    const-wide/16 v10, 0x0

    .line 646
    .line 647
    cmp-long v0, v2, v10

    .line 648
    .line 649
    if-lez v0, :cond_e

    .line 650
    .line 651
    :try_start_18
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-eqz v0, :cond_d

    .line 656
    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_c

    .line 662
    .line 663
    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 664
    .line 665
    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getCANCELLED()I

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    .line 670
    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_c
    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 674
    .line 675
    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getIN_PROGRESS()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    .line 680
    .line 681
    .line 682
    invoke-interface {v1}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 683
    .line 684
    .line 685
    goto :goto_f

    .line 686
    :cond_d
    new-instance v0, Lcom/vungle/ads/AssetWriteError;

    .line 687
    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string v3, "Asset save error "

    .line 694
    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-direct {v0, v2}, Lcom/vungle/ads/AssetWriteError;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 717
    .line 718
    .line 719
    new-instance v0, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;

    .line 720
    .line 721
    const-string v2, "File is not existing"

    .line 722
    .line 723
    invoke-direct {v0, v2}, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 727
    :cond_e
    :goto_11
    :try_start_19
    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    sget-object v2, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 735
    .line 736
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getIN_PROGRESS()I

    .line 737
    .line 738
    .line 739
    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 740
    if-ne v0, v3, :cond_f

    .line 741
    .line 742
    :try_start_1a
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getDONE()I

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 747
    .line 748
    .line 749
    :cond_f
    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    if-eqz v0, :cond_10

    .line 754
    .line 755
    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    if-eqz v0, :cond_10

    .line 760
    .line 761
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 762
    .line 763
    .line 764
    :cond_10
    invoke-interface {v12}, Lokhttp3/Call;->cancel()V

    .line 765
    .line 766
    .line 767
    sget-object v0, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    .line 768
    .line 769
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 773
    .line 774
    .line 775
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 776
    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {v0, v7, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getERROR()I

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    if-ne v1, v3, :cond_11

    .line 808
    .line 809
    :goto_12
    move-object/from16 v3, p0

    .line 810
    .line 811
    move-object/from16 v10, p1

    .line 812
    .line 813
    move-object/from16 v11, p2

    .line 814
    .line 815
    goto :goto_13

    .line 816
    :cond_11
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getSTARTED()I

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    if-ne v1, v3, :cond_12

    .line 821
    .line 822
    goto :goto_12

    .line 823
    :goto_13
    invoke-direct {v3, v10, v11, v14}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 824
    .line 825
    .line 826
    move-object/from16 v2, v20

    .line 827
    .line 828
    goto :goto_14

    .line 829
    :cond_12
    move-object/from16 v3, p0

    .line 830
    .line 831
    move-object/from16 v10, p1

    .line 832
    .line 833
    move-object/from16 v11, p2

    .line 834
    .line 835
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getCANCELLED()I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    if-ne v1, v2, :cond_13

    .line 840
    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .line 845
    .line 846
    move-object/from16 v2, v20

    .line 847
    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-virtual {v0, v7, v1}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    goto :goto_14

    .line 862
    :cond_13
    move-object/from16 v2, v20

    .line 863
    .line 864
    invoke-direct {v3, v9, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 865
    .line 866
    .line 867
    :goto_14
    move-object/from16 v23, v9

    .line 868
    .line 869
    move-object v9, v3

    .line 870
    move-object v3, v14

    .line 871
    move-object/from16 v14, v23

    .line 872
    .line 873
    goto/16 :goto_2b

    .line 874
    .line 875
    :catchall_6
    move-exception v0

    .line 876
    move-object/from16 v3, p0

    .line 877
    .line 878
    move-object/from16 v10, p1

    .line 879
    .line 880
    move-object/from16 v11, p2

    .line 881
    .line 882
    move-object/from16 v2, v20

    .line 883
    .line 884
    :goto_15
    move-object/from16 v16, v14

    .line 885
    .line 886
    :goto_16
    move-object v14, v9

    .line 887
    move-object v9, v3

    .line 888
    goto/16 :goto_2c

    .line 889
    .line 890
    :catch_7
    move-exception v0

    .line 891
    move-object/from16 v3, p0

    .line 892
    .line 893
    move-object/from16 v10, p1

    .line 894
    .line 895
    move-object/from16 v11, p2

    .line 896
    .line 897
    move-object/from16 v2, v20

    .line 898
    .line 899
    :goto_17
    move/from16 v15, v16

    .line 900
    .line 901
    goto/16 :goto_c

    .line 902
    .line 903
    :catchall_7
    move-exception v0

    .line 904
    move-object/from16 v10, p1

    .line 905
    .line 906
    move-object v11, v3

    .line 907
    move-object/from16 v2, v20

    .line 908
    .line 909
    move-object/from16 v3, p0

    .line 910
    .line 911
    goto :goto_15

    .line 912
    :catch_8
    move-exception v0

    .line 913
    move-object/from16 v10, p1

    .line 914
    .line 915
    move-object v11, v3

    .line 916
    move-object/from16 v2, v20

    .line 917
    .line 918
    move-object/from16 v3, p0

    .line 919
    .line 920
    goto :goto_17

    .line 921
    :catchall_8
    move-exception v0

    .line 922
    move-object/from16 v10, p1

    .line 923
    .line 924
    :goto_18
    move-object v11, v3

    .line 925
    move-object/from16 v2, v20

    .line 926
    .line 927
    move-object/from16 v3, p0

    .line 928
    .line 929
    :goto_19
    move-object/from16 v16, v14

    .line 930
    .line 931
    const/4 v1, 0x0

    .line 932
    goto :goto_16

    .line 933
    :catch_9
    move-exception v0

    .line 934
    move-object/from16 v10, p1

    .line 935
    .line 936
    move-object v11, v3

    .line 937
    move-object/from16 v2, v20

    .line 938
    .line 939
    :goto_1a
    move-object/from16 v3, p0

    .line 940
    .line 941
    :goto_1b
    move/from16 v15, v16

    .line 942
    .line 943
    const/4 v1, 0x0

    .line 944
    goto/16 :goto_c

    .line 945
    .line 946
    :catch_a
    move-exception v0

    .line 947
    move-object/from16 v10, p1

    .line 948
    .line 949
    :goto_1c
    move-object v11, v3

    .line 950
    move-object/from16 v2, v20

    .line 951
    .line 952
    const/4 v15, 0x0

    .line 953
    goto :goto_1a

    .line 954
    :catchall_9
    move-exception v0

    .line 955
    move-object v10, v2

    .line 956
    goto :goto_18

    .line 957
    :catch_b
    move-exception v0

    .line 958
    move-object v10, v2

    .line 959
    goto :goto_1c

    .line 960
    :catchall_a
    move-exception v0

    .line 961
    move-object v10, v2

    .line 962
    move-object v11, v3

    .line 963
    move-object/from16 v2, v20

    .line 964
    .line 965
    move-object v3, v1

    .line 966
    goto :goto_19

    .line 967
    :catch_c
    move-exception v0

    .line 968
    move-object v10, v2

    .line 969
    move-object v11, v3

    .line 970
    move-object/from16 v2, v20

    .line 971
    .line 972
    const/4 v15, 0x0

    .line 973
    move-object v3, v1

    .line 974
    goto :goto_1b

    .line 975
    :catchall_b
    move-exception v0

    .line 976
    move-object v10, v2

    .line 977
    move-object v11, v3

    .line 978
    move-object/from16 v2, v20

    .line 979
    .line 980
    :goto_1d
    move-object v3, v1

    .line 981
    :goto_1e
    move-object/from16 v16, v14

    .line 982
    .line 983
    const/4 v1, 0x0

    .line 984
    const/4 v4, 0x0

    .line 985
    goto :goto_16

    .line 986
    :catch_d
    move-exception v0

    .line 987
    move-object v10, v2

    .line 988
    move-object v11, v3

    .line 989
    move-object/from16 v2, v20

    .line 990
    .line 991
    :goto_1f
    const/4 v15, 0x0

    .line 992
    move-object v3, v1

    .line 993
    move/from16 v15, v16

    .line 994
    .line 995
    const/4 v1, 0x0

    .line 996
    const/4 v4, 0x0

    .line 997
    goto/16 :goto_c

    .line 998
    .line 999
    :catchall_c
    move-exception v0

    .line 1000
    move-object v10, v2

    .line 1001
    move-object v11, v3

    .line 1002
    move-object v2, v4

    .line 1003
    goto :goto_1d

    .line 1004
    :catch_e
    move-exception v0

    .line 1005
    move-object v10, v2

    .line 1006
    move-object v11, v3

    .line 1007
    move-object v2, v4

    .line 1008
    move/from16 v16, v15

    .line 1009
    .line 1010
    goto :goto_1f

    .line 1011
    :cond_14
    move-object v10, v2

    .line 1012
    move-object v11, v3

    .line 1013
    move-object v2, v4

    .line 1014
    move/from16 v16, v15

    .line 1015
    .line 1016
    const/4 v15, 0x0

    .line 1017
    move-object v3, v1

    .line 1018
    :try_start_1b
    new-instance v0, Lcom/vungle/ads/AssetFailedStatusCodeError;

    .line 1019
    .line 1020
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    const-string v15, "Asset download does not success: "

    .line 1030
    .line 1031
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v13}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v15

    .line 1038
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v4

    .line 1045
    invoke-direct {v0, v8, v1, v4}, Lcom/vungle/ads/AssetFailedStatusCodeError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1057
    .line 1058
    .line 1059
    new-instance v0, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;

    .line 1060
    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .line 1065
    .line 1066
    const-string v4, "Code: "

    .line 1067
    .line 1068
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 1069
    .line 1070
    .line 1071
    move/from16 v4, v16

    .line 1072
    .line 1073
    :try_start_1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 1084
    :catchall_d
    move-exception v0

    .line 1085
    goto :goto_1e

    .line 1086
    :catch_f
    move-exception v0

    .line 1087
    :goto_20
    move v15, v4

    .line 1088
    :goto_21
    move-object/from16 v16, v14

    .line 1089
    .line 1090
    const/4 v1, 0x0

    .line 1091
    const/4 v4, 0x0

    .line 1092
    goto/16 :goto_25

    .line 1093
    .line 1094
    :catch_10
    move-exception v0

    .line 1095
    move/from16 v4, v16

    .line 1096
    .line 1097
    goto :goto_20

    .line 1098
    :catch_11
    move-exception v0

    .line 1099
    move-object v10, v2

    .line 1100
    move-object v11, v3

    .line 1101
    move-object v2, v4

    .line 1102
    move v4, v15

    .line 1103
    move-object v3, v1

    .line 1104
    goto :goto_21

    .line 1105
    :catch_12
    move-exception v0

    .line 1106
    move-object v10, v2

    .line 1107
    move-object v11, v3

    .line 1108
    move-object v2, v4

    .line 1109
    move-object v3, v1

    .line 1110
    move-object/from16 v16, v14

    .line 1111
    .line 1112
    const/4 v1, 0x0

    .line 1113
    const/4 v4, 0x0

    .line 1114
    :goto_22
    const/4 v15, -0x1

    .line 1115
    goto :goto_25

    .line 1116
    :catchall_e
    move-exception v0

    .line 1117
    move-object v10, v2

    .line 1118
    move-object v11, v3

    .line 1119
    move-object v2, v4

    .line 1120
    move-object v3, v1

    .line 1121
    move-object/from16 v16, v14

    .line 1122
    .line 1123
    const/4 v1, 0x0

    .line 1124
    const/4 v4, 0x0

    .line 1125
    :goto_23
    const/4 v13, 0x0

    .line 1126
    goto/16 :goto_16

    .line 1127
    .line 1128
    :catch_13
    move-exception v0

    .line 1129
    move-object v10, v2

    .line 1130
    move-object v11, v3

    .line 1131
    move-object v2, v4

    .line 1132
    move-object v3, v1

    .line 1133
    move-object/from16 v16, v14

    .line 1134
    .line 1135
    const/4 v1, 0x0

    .line 1136
    const/4 v4, 0x0

    .line 1137
    :goto_24
    const/4 v13, 0x0

    .line 1138
    goto :goto_22

    .line 1139
    :catchall_f
    move-exception v0

    .line 1140
    move-object v10, v2

    .line 1141
    move-object v11, v3

    .line 1142
    move-object v2, v4

    .line 1143
    move-object v3, v1

    .line 1144
    move-object/from16 v16, v14

    .line 1145
    .line 1146
    const/4 v1, 0x0

    .line 1147
    const/4 v4, 0x0

    .line 1148
    const/4 v12, 0x0

    .line 1149
    goto :goto_23

    .line 1150
    :catch_14
    move-exception v0

    .line 1151
    move-object v10, v2

    .line 1152
    move-object v11, v3

    .line 1153
    move-object v2, v4

    .line 1154
    move-object v3, v1

    .line 1155
    move-object/from16 v16, v14

    .line 1156
    .line 1157
    const/4 v1, 0x0

    .line 1158
    const/4 v4, 0x0

    .line 1159
    const/4 v12, 0x0

    .line 1160
    goto :goto_24

    .line 1161
    :goto_25
    :try_start_1d
    sget-object v14, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    .line 1162
    .line 1163
    move-object/from16 v19, v9

    .line 1164
    .line 1165
    :try_start_1e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v9

    .line 1169
    invoke-virtual {v14, v7, v9}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .line 1171
    .line 1172
    instance-of v9, v0, Ljava/net/ProtocolException;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    .line 1173
    .line 1174
    if-eqz v9, :cond_15

    .line 1175
    .line 1176
    :try_start_1f
    new-instance v9, Lcom/vungle/ads/AssetRequestError;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 1177
    .line 1178
    move-object/from16 v20, v2

    .line 1179
    .line 1180
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    const-string v3, "Failed to load asset: "

    .line 1186
    .line 1187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getAsset()Lcom/vungle/ads/internal/model/AdAsset;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/AdAsset;->getServerPath()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v3

    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    invoke-direct {v9, v2}, Lcom/vungle/ads/AssetRequestError;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    invoke-virtual {v9, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v2

    .line 1216
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1217
    .line 1218
    .line 1219
    goto :goto_27

    .line 1220
    :catchall_10
    move-exception v0

    .line 1221
    move-object/from16 v9, p0

    .line 1222
    .line 1223
    move-object/from16 v14, v19

    .line 1224
    .line 1225
    move-object/from16 v2, v20

    .line 1226
    .line 1227
    goto/16 :goto_2c

    .line 1228
    .line 1229
    :catchall_11
    move-exception v0

    .line 1230
    move-object/from16 v20, v2

    .line 1231
    .line 1232
    move-object/from16 v9, p0

    .line 1233
    .line 1234
    :goto_26
    move-object/from16 v14, v19

    .line 1235
    .line 1236
    goto/16 :goto_2c

    .line 1237
    .line 1238
    :cond_15
    move-object/from16 v20, v2

    .line 1239
    .line 1240
    instance-of v2, v0, Ljava/net/UnknownHostException;

    .line 1241
    .line 1242
    if-nez v2, :cond_16

    .line 1243
    .line 1244
    instance-of v2, v0, Ljava/io/IOException;

    .line 1245
    .line 1246
    if-eqz v2, :cond_17

    .line 1247
    .line 1248
    :cond_16
    new-instance v2, Lcom/vungle/ads/AssetFailedStatusCodeError;

    .line 1249
    .line 1250
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v3

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v9

    .line 1258
    invoke-direct {v2, v8, v3, v9}, Lcom/vungle/ads/AssetFailedStatusCodeError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/LogEntry;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v3

    .line 1265
    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/LogEntry;)Lcom/vungle/ads/VungleError;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1270
    .line 1271
    .line 1272
    :cond_17
    :goto_27
    sget-object v2, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 1273
    .line 1274
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getERROR()I

    .line 1275
    .line 1276
    .line 1277
    move-result v3

    .line 1278
    invoke-virtual {v6, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->setStatus(I)V

    .line 1279
    .line 1280
    .line 1281
    new-instance v3, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;

    .line 1282
    .line 1283
    sget-object v9, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;

    .line 1284
    .line 1285
    invoke-virtual {v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError$ErrorReason$Companion;->getREQUEST_ERROR()I

    .line 1286
    .line 1287
    .line 1288
    move-result v9

    .line 1289
    invoke-direct {v3, v15, v0, v9}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    .line 1290
    .line 1291
    .line 1292
    if-eqz v13, :cond_18

    .line 1293
    .line 1294
    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    goto :goto_28

    .line 1299
    :cond_18
    const/4 v0, 0x0

    .line 1300
    :goto_28
    if-eqz v0, :cond_19

    .line 1301
    .line 1302
    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    if-eqz v0, :cond_19

    .line 1307
    .line 1308
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 1309
    .line 1310
    .line 1311
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1312
    .line 1313
    :cond_19
    if-eqz v12, :cond_1a

    .line 1314
    .line 1315
    invoke-interface {v12}, Lokhttp3/Call;->cancel()V

    .line 1316
    .line 1317
    .line 1318
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1319
    .line 1320
    :cond_1a
    sget-object v0, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    .line 1321
    .line 1322
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1326
    .line 1327
    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 1337
    .line 1338
    .line 1339
    move-result v1

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    invoke-virtual {v14, v7, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 1351
    .line 1352
    .line 1353
    move-result v0

    .line 1354
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getERROR()I

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    if-ne v0, v1, :cond_1b

    .line 1359
    .line 1360
    :goto_29
    move-object/from16 v9, p0

    .line 1361
    .line 1362
    goto :goto_2a

    .line 1363
    :cond_1b
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getSTARTED()I

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    if-ne v0, v1, :cond_1c

    .line 1368
    .line 1369
    goto :goto_29

    .line 1370
    :goto_2a
    invoke-direct {v9, v10, v11, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 1371
    .line 1372
    .line 1373
    move-object/from16 v14, v19

    .line 1374
    .line 1375
    move-object/from16 v2, v20

    .line 1376
    .line 1377
    goto :goto_2b

    .line 1378
    :cond_1c
    move-object/from16 v9, p0

    .line 1379
    .line 1380
    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getCANCELLED()I

    .line 1381
    .line 1382
    .line 1383
    move-result v1

    .line 1384
    if-ne v0, v1, :cond_1d

    .line 1385
    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    .line 1390
    .line 1391
    move-object/from16 v2, v20

    .line 1392
    .line 1393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    invoke-virtual {v14, v7, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    .line 1405
    .line 1406
    move-object/from16 v14, v19

    .line 1407
    .line 1408
    goto :goto_2b

    .line 1409
    :cond_1d
    move-object/from16 v14, v19

    .line 1410
    .line 1411
    move-object/from16 v2, v20

    .line 1412
    .line 1413
    invoke-direct {v9, v14, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 1414
    .line 1415
    .line 1416
    :goto_2b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1417
    .line 1418
    move-object v4, v2

    .line 1419
    move-object v1, v9

    .line 1420
    move-object v2, v10

    .line 1421
    move-object v9, v14

    .line 1422
    const/4 v0, 0x1

    .line 1423
    const/4 v10, -0x1

    .line 1424
    const/4 v12, 0x0

    .line 1425
    move-object v14, v3

    .line 1426
    move-object v3, v11

    .line 1427
    const/4 v11, 0x1

    .line 1428
    goto/16 :goto_1

    .line 1429
    .line 1430
    :catchall_12
    move-exception v0

    .line 1431
    move-object v9, v3

    .line 1432
    goto/16 :goto_26

    .line 1433
    .line 1434
    :catchall_13
    move-exception v0

    .line 1435
    goto/16 :goto_16

    .line 1436
    .line 1437
    :goto_2c
    if-eqz v13, :cond_1e

    .line 1438
    .line 1439
    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v3

    .line 1443
    goto :goto_2d

    .line 1444
    :cond_1e
    const/4 v3, 0x0

    .line 1445
    :goto_2d
    if-eqz v3, :cond_1f

    .line 1446
    .line 1447
    invoke-virtual {v13}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v3

    .line 1451
    if-eqz v3, :cond_1f

    .line 1452
    .line 1453
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    .line 1454
    .line 1455
    .line 1456
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1457
    .line 1458
    :cond_1f
    if-eqz v12, :cond_20

    .line 1459
    .line 1460
    invoke-interface {v12}, Lokhttp3/Call;->cancel()V

    .line 1461
    .line 1462
    .line 1463
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1464
    .line 1465
    :cond_20
    sget-object v3, Lcom/vungle/ads/internal/util/FileUtility;->INSTANCE:Lcom/vungle/ads/internal/util/FileUtility;

    .line 1466
    .line 1467
    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/util/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1471
    .line 1472
    .line 1473
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 1474
    .line 1475
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 1484
    .line 1485
    .line 1486
    move-result v4

    .line 1487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v3

    .line 1494
    invoke-virtual {v1, v7, v3}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {v6}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;->getStatus()I

    .line 1498
    .line 1499
    .line 1500
    move-result v3

    .line 1501
    sget-object v4, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus;->Companion:Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;

    .line 1502
    .line 1503
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getERROR()I

    .line 1504
    .line 1505
    .line 1506
    move-result v5

    .line 1507
    if-eq v3, v5, :cond_22

    .line 1508
    .line 1509
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getSTARTED()I

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    if-eq v3, v5, :cond_22

    .line 1514
    .line 1515
    invoke-virtual {v4}, Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress$ProgressStatus$Companion;->getCANCELLED()I

    .line 1516
    .line 1517
    .line 1518
    move-result v4

    .line 1519
    if-ne v3, v4, :cond_21

    .line 1520
    .line 1521
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1522
    .line 1523
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v2

    .line 1536
    invoke-virtual {v1, v7, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    .line 1538
    .line 1539
    goto :goto_2e

    .line 1540
    :cond_21
    invoke-direct {v9, v14, v10, v11}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverSuccess(Ljava/io/File;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 1541
    .line 1542
    .line 1543
    goto :goto_2e

    .line 1544
    :cond_22
    move-object/from16 v3, v16

    .line 1545
    .line 1546
    invoke-direct {v9, v10, v11, v3}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->deliverError(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;)V

    .line 1547
    .line 1548
    .line 1549
    :goto_2e
    throw v0

    .line 1550
    :cond_23
    move-object v9, v1

    .line 1551
    return-void
.end method


# virtual methods
.method public cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/downloader/DownloadRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->cancel(Lcom/vungle/ads/internal/downloader/DownloadRequest;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V
    .locals 3
    .param p1    # Lcom/vungle/ads/internal/downloader/DownloadRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/downloader/AssetDownloadListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader;->downloadExecutor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 10
    .line 11
    new-instance v1, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;-><init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/vungle/ads/internal/downloader/a;

    .line 17
    .line 18
    invoke-direct {v2, p1, p0, p2}, Lcom/vungle/ads/internal/downloader/a;-><init>(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/AssetDownloadListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
