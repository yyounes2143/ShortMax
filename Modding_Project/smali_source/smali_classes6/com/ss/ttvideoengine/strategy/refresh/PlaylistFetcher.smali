.class Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;
.super Ljava/lang/Object;
.source "PlaylistFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;,
        Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher<",
        "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;",
        "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mCanceled:Z

.field private final mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

.field private mLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

.field private final mLogcatTag:Ljava/lang/String;

.field private final mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logcatTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ".PlaylistFetcher@"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLogcatTag:Ljava/lang/String;

    .line 41
    .line 42
    const-string p2, "construction"

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLogcatTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->notifyError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->notifySuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 6
    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->release()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method private notifyError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;",
            ">;",
            "Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 12
    .line 13
    iget v2, p2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 14
    .line 15
    iget-object v3, p2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorMsg:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordFetchPlaylistError(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLogcatTag:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "notifyError "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorMsg:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v0, p2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 55
    .line 56
    iget-object p2, p2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorMsg:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {p1, v0, p2}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;->onError(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->close()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private notifySuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;",
            ">;",
            "Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;

    .line 6
    .line 7
    invoke-direct {v0, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;-><init>(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLogcatTag:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "notifySuccess "

    .line 18
    .line 19
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->dump(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p2, p3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 43
    .line 44
    invoke-virtual {p2, p3, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordFetchPlaylistSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->close()V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mCanceled:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->close()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public fetch(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 26
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 2
    iget-object v3, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLogcatTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;->dump(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v3, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    invoke-virtual {v3}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    move-result-object v3

    iget-object v4, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    invoke-virtual {v3, v4, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordFetchPlaylistStart(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;)V

    .line 4
    iget-object v3, v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;->get(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;->isExpired(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->notifySuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V

    return-void

    .line 7
    :cond_0
    iget-object v7, v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 8
    iget-object v8, v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 9
    iget-object v3, v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-wide v5, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;->expireTimeInMS:J

    const-wide/16 v9, 0x0

    cmp-long v3, v5, v9

    if-lez v3, :cond_1

    new-array v3, v4, [Ljava/lang/String;

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    .line 11
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    :goto_0
    move-object/from16 v22, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 12
    :goto_1
    iget-object v3, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    invoke-virtual {v3}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getEngineId()Ljava/lang/String;

    move-result-object v24

    .line 13
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v6

    const/16 v23, -0x1

    const/16 v25, 0x1

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v6 .. v25}, Lcom/ss/ttvideoengine/DataLoaderHelper;->_proxyUrl(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;J[Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v5, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    invoke-direct {v5, v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v3, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;->TryNextEvenIfError_Bool:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;

    invoke-virtual {v5, v3, v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->setBoolOption(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;Z)V

    .line 16
    sget-object v3, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;->PlaylistTimeOutMs_Int:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;

    const/16 v4, 0x1388

    invoke-virtual {v5, v3, v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->setIntOption(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;I)V

    .line 17
    new-instance v3, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;)V

    invoke-virtual {v5, v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->setCacheInfoListener(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;)V

    .line 18
    invoke-virtual {v5}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->start()V

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iput-object v5, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->mLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic fetch(Ljava/lang/Object;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;

    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->fetch(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    return-void
.end method
