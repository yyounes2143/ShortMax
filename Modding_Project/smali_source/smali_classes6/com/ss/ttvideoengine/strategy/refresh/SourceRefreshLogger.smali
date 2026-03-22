.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;
.super Ljava/lang/Object;
.source "SourceRefreshLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;
    }
.end annotation


# static fields
.field private static final FETCHER_LOGS_MAX_COUNT:I = 0x5


# instance fields
.field private final mFetcherLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method declared-synchronized recordFetchPlaylistError(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;ILjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistEndT:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistEndT:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method declared-synchronized recordFetchPlaylistStart(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistEndT:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistStartT:Ljava/lang/Long;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistRequest:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p1
.end method

.method declared-synchronized recordFetchPlaylistSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistEndT:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistEndT:Ljava/lang/Long;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistResult:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p1
.end method

.method declared-synchronized recordFetchPlaylistUrlError(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;ILjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlEndT:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlEndT:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method declared-synchronized recordFetchPlaylistUrlStart(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlStartT:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlStartT:Ljava/lang/Long;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p1
.end method

.method declared-synchronized recordFetchPlaylistUrlSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlEndT:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlEndT:Ljava/lang/Long;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p1
.end method

.method declared-synchronized recordSessionCancel(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->endT:Ljava/lang/Long;

    .line 21
    .line 22
    const-string v0, "canceled"

    .line 23
    .line 24
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    throw p1
.end method

.method declared-synchronized recordSessionError(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;ILjava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->endT:Ljava/lang/Long;

    .line 21
    .line 22
    const-string v0, "error"

    .line 23
    .line 24
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->errorCode:Ljava/lang/Integer;

    .line 31
    .line 32
    iput-object p3, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->errorMsg:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1
.end method

.method declared-synchronized recordSessionStart(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->startT:Ljava/lang/Long;

    .line 20
    .line 21
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    add-int/lit8 p2, p2, -0x1

    .line 30
    .line 31
    iput p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method declared-synchronized recordSessionSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->endT:Ljava/lang/Long;

    .line 21
    .line 22
    const-string/jumbo v0, "success"

    .line 23
    .line 24
    .line 25
    iput-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method declared-synchronized toJson()Lorg/json/JSONObject;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    move v5, v4

    .line 22
    :goto_0
    iget-object v6, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-ge v3, v6, :cond_a

    .line 29
    .line 30
    iget-object v6, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 37
    .line 38
    iget-object v7, v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    iget-object v7, v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 44
    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    iget-boolean v7, v7, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->fromCache:Z

    .line 48
    .line 49
    if-nez v7, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v7, v2

    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_2
    :goto_1
    move v7, v8

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v7, v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 60
    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    iget-boolean v7, v7, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->fromCache:Z

    .line 64
    .line 65
    if-nez v7, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    if-eqz v7, :cond_4

    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    :cond_4
    iget-object v9, v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistRequest:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;

    .line 73
    .line 74
    if-eqz v9, :cond_5

    .line 75
    .line 76
    iget-object v9, v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistResult:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;

    .line 77
    .line 78
    if-eqz v9, :cond_6

    .line 79
    .line 80
    iget-boolean v9, v9, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->fromCache:Z

    .line 81
    .line 82
    if-nez v9, :cond_5

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v8, v2

    .line 86
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    :cond_7
    if-nez v7, :cond_8

    .line 91
    .line 92
    if-nez v8, :cond_8

    .line 93
    .line 94
    iget-object v7, v6, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;

    .line 95
    .line 96
    const-string/jumbo v8, "success"

    .line 97
    .line 98
    .line 99
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_9

    .line 104
    .line 105
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const/4 v3, 0x5

    .line 116
    if-le v2, v3, :cond_b

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    sub-int/2addr v2, v3

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_d

    .line 136
    .line 137
    new-instance v2, Lorg/json/JSONArray;

    .line 138
    .line 139
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_e

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 157
    .line 158
    if-eqz v3, :cond_c

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->toJson()Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_d
    move-object v2, v1

    .line 169
    :cond_e
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    .line 170
    .line 171
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v3, "fetcher_count"

    .line 175
    .line 176
    iget-object v6, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->mFetcherLogs:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    const-string v3, "fetcher_url_network_count"

    .line 190
    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    const-string v3, "fetcher_playlist_network_count"

    .line 199
    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    const-string v3, "fetcher_logs"

    .line 208
    .line 209
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .line 211
    .line 212
    monitor-exit p0

    .line 213
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .line 217
    .line 218
    monitor-exit p0

    .line 219
    return-object v1

    .line 220
    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    throw v0
.end method
