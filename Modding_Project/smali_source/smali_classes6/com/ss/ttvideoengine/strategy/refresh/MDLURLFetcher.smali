.class Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;
.super Ljava/lang/Object;
.source "MDLURLFetcher.java"

# interfaces
.implements Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;


# static fields
.field private static final CALLBACK_RESULT_ERROR:I = -0x1

.field private static final CALLBACK_RESULT_SUCCESS:I = 0x0

.field private static final FETCHER_STATE_ERROR:I = 0x3

.field private static final FETCHER_STATE_INIT:I = 0x0

.field private static final FETCHER_STATE_RELEASED:I = 0x4

.field private static final FETCHER_STATE_STARTED:I = 0x1

.field private static final FETCHER_STATE_SUCCESS:I = 0x2

.field private static final RESULT_ASYNC_CALLBACK:I = 0x0

.field private static final RESULT_SYNC_ERROR:I = -0x1

.field private static final RESULT_SYNC_GET:I = 0x1


# instance fields
.field private mFetcher:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

.field private final mLogcatTag:Ljava/lang/String;

.field private mState:I

.field private final mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logcatTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ".MDLURLFetcher@"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "construction"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private _start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez p4, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->isReleased()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getUrlFetcherFactory()Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    monitor-enter p0

    .line 32
    const/4 v0, 0x1

    .line 33
    :try_start_1
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->setState(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mFetcher:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 44
    .line 45
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 47
    .line 48
    invoke-direct {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mFetcher:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 52
    .line 53
    new-instance p2, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;

    .line 54
    .line 55
    invoke-direct {p2, p0, p4, v0}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->fetch(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    throw p1

    .line 66
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    throw p1
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->notifySuccess(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->notifyError(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static mapResult(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "sync_get"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "result:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    const-string p0, "async_callback"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    const-string/jumbo p0, "sync_error"

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method private static mapState(I)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "released"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "state:"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    const-string p0, "error"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    const-string/jumbo p0, "success"

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    const-string/jumbo p0, "started"

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    const-string p0, "init"

    .line 54
    .line 55
    return-object p0
.end method

.method private notifyError(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V
    .locals 3
    .param p1    # Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "notifyError vid:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " cacheKey:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " oldUrl:"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " errorCode:"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p3, " errorMsg:"

    .line 58
    .line 59
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {v0, p3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p3, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 75
    .line 76
    const/4 p4, 0x0

    .line 77
    const/4 v0, -0x1

    .line 78
    invoke-interface {p1, v0, p3, p2, p4}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    monitor-enter p0

    .line 82
    const/4 p1, 0x3

    .line 83
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->setState(I)V

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    throw p1

    .line 91
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw p1
.end method

.method private notifySuccess(Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V
    .locals 4
    .param p1    # Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "notifySuccess vid:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " cacheKey:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " oldUrl:"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " newUrl:"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p3, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " expireTime:"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-wide v2, p3, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 79
    .line 80
    iget-object p3, p3, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 81
    .line 82
    filled-new-array {p3}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-interface {p1, v1, v0, p2, p3}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    monitor-enter p0

    .line 91
    const/4 p1, 0x2

    .line 92
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->setState(I)V

    .line 93
    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    throw p1

    .line 100
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p1
.end method

.method private setState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "setState "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mapState(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " -> "

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 31
    .line 32
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mapState(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mFetcher:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 12
    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "close "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v3, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 27
    .line 28
    invoke-static {v3}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mapState(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_1
    monitor-enter p0

    .line 48
    const/4 v0, 0x4

    .line 49
    :try_start_1
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->setState(I)V

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    throw v0

    .line 57
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw v0
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getURLs null "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mState:I

    .line 14
    .line 15
    invoke-static {v2}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mapState(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "start start "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " -> "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mLogcatTag:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "start return "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p4}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->mapResult(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return p4
.end method
