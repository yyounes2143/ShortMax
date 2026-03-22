.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;
.super Ljava/lang/Object;
.source "SourceRefreshFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher<",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mCanceled:Z

.field private final mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

.field private final mFetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final mLogcatTag:Ljava/lang/String;

.field private final mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetchers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logcatTag()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ".SourceRefreshFetcher@"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "construction"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifySuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->startFetchPlaylist(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyFetchUrlInfoSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyFetchUrlInfoError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private notifyError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "notifyError "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordSessionError(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2, p3}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;->onError(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private notifyFetchUrlInfoError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
            ">;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "notifyFetchUrlInfoError "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p3, p4}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;->onError(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private notifyFetchUrlInfoSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
            ">;",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "notifyFetchUrlInfoSuccess "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->dump(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private notifySuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;",
            ">;",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "notifySuccess "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->dump(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 38
    .line 39
    invoke-virtual {v0, v1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordSessionSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 43
    .line 44
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private startFetchPlaylist(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 8
    .line 9
    iget-object v3, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v4, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "startFetchPlaylist "

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v0, v6, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " "

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v0, v6, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 57
    .line 58
    invoke-direct {p1, p2, v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;)V

    .line 59
    .line 60
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetchers:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p1, v6, p3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->fetch(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1
.end method

.method private startFetchUrlInfo(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "startFetchUrlInfo "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->dump(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getUrlCache()Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;->get(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getUrlCache()Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;->isExpired(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    new-instance p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-direct {p1, v0, v1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;Z)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p2, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyFetchUrlInfoSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v1, -0x2716

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isReleased()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->isReleased()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getUrlFetcherFactory()Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    const-string v0, "factory is null"

    .line 90
    .line 91
    invoke-direct {p0, p2, p1, v1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyFetchUrlInfoError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    invoke-interface {v2, v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;->create(Lcom/ss/ttvideoengine/TTVideoEngine;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetchers:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    new-instance v1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;

    .line 107
    .line 108
    invoke-direct {v1, p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, p1, v1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher;->fetch(Ljava/lang/Object;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p1

    .line 118
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "engine is released! "

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, p2, p1, v1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyFetchUrlInfoError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "cancel"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordSessionCancel(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mCanceled:Z

    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetchers:Ljava/util/List;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetchers:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher;

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher;->cancel()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw v0
.end method

.method public fetch(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 5
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;
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
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordSessionStart(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->findChildUrlInfoInPlaylistHierarchy(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mLogcatTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->dump(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->parentPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    iget-object v2, v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    invoke-static {v2}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findChildUrlInfoInPlaylistHierarchy playlistUrlInfo is not valid!"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->parentPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x2716

    .line 12
    invoke-direct {p0, p2, v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->notifyError(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    iget-object v3, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->parentPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    iget-object v4, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mStrategy:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->mFetcherLog:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordFetchPlaylistUrlStart(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V

    .line 17
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    invoke-direct {p0, v2, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->startFetchUrlInfo(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    goto :goto_1

    .line 18
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 19
    :cond_1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;

    invoke-direct {v0, p0, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->startFetchUrlInfo(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    :goto_1
    return-void
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
    check-cast p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->fetch(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    return-void
.end method
