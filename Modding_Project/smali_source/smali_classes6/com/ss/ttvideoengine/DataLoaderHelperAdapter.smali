.class public Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;
.super Ljava/lang/Object;
.source "DataLoaderHelperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLoaderHelperAdapter"


# instance fields
.field private hlsProxyValid:Z

.field private mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

.field private mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 11
    .line 12
    return-void
.end method

.method private initHlsDownloadManager()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$2;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$2;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->addLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private initHlsPreloadManager()V
    .locals 2

    .line 1
    const-string v0, "DataLoaderHelperAdapter"

    .line 2
    .line 3
    const-string v1, "initHLSCacheModule()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 13
    .line 14
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$1;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->addLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->cancelAll()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public cancelDownload(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->isHlsDownloadKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->cancel(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public cancelPreload(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->isCacheKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->cancel(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public convertHLSProxyUrl(Ljava/lang/StringBuffer;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->isHlsProxyEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "hlsproxy://"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    return v1
.end method

.method public downloadHlsSource(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isHlsProxyEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->downloadSource(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_1
    return v1
.end method

.method public getAllCacheSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->getAllCacheSize()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getCacheSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->getCacheSize(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public initHLSCacheModule()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->initHlsPreloadManager()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->initHlsDownloadManager()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isHlsProxyValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDownloadCompleted(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onDownloadCompleted, logInfo:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 20
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
    const-string v2, "DataLoaderHelperAdapter"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->parseDownloadLogInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->key:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->onDownloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    :goto_0
    return v0
.end method

.method public onDownloadFail(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onDownloadFail, logInfo:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 20
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
    const-string v2, "DataLoaderHelperAdapter"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 41
    .line 42
    invoke-virtual {v2, v1, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->onDownloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_2
    :goto_0
    return v0
.end method

.method public onDownloadProgress(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onDownloadProgress, logInfo:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 20
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
    const-string v2, "DataLoaderHelperAdapter"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->parseDownloadLogInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->key:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Progress:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->onDownloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    :goto_0
    return v0
.end method

.method public onLoaderCancel(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onLoaderCancel : parameter = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-wide v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", info.what"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " , log info: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "DataLoaderHelperAdapter"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, ","

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    aget-object v0, v1, v0

    .line 66
    .line 67
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 68
    .line 69
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->onPreloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_1
    :goto_0
    return v0
.end method

.method public onLoaderFail(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onLoaderFail : parameter = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-wide v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", info.what"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " , log info: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "DataLoaderHelperAdapter"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, ","

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    aget-object v1, v1, v0

    .line 62
    .line 63
    iget-wide v3, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 64
    .line 65
    const-wide/16 v5, 0x2

    .line 66
    .line 67
    cmp-long v5, v3, v5

    .line 68
    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    iget-object v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 76
    .line 77
    invoke-virtual {v5, v1, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->onPreloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_1
    const-wide/16 v5, 0x4

    .line 83
    .line 84
    cmp-long p1, v3, v5

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "onLoaderFail : AVMDLTaskTypePreconnectTask fail\uff1a"

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->changeCurPreConnectTsKey(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    return v0
.end method

.method public onLoaderOpen(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onLoaderOpen : parameter = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-wide v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", info.what"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " , log info: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "DataLoaderHelperAdapter"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-wide v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 54
    .line 55
    const-wide/16 v3, 0x2

    .line 56
    .line 57
    cmp-long v3, v1, v3

    .line 58
    .line 59
    const-string v4, ","

    .line 60
    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    aget-object v0, v1, v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 76
    .line 77
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Start:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 78
    .line 79
    invoke-virtual {v1, v0, v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->onPreloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :cond_1
    const-wide/16 v5, 0x1

    .line 85
    .line 86
    cmp-long v1, v1, v5

    .line 87
    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    aget-object p1, p1, v0

    .line 97
    .line 98
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlayTaskKeyManager;->onPlayTaskOpen(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->changeCurPlayTsKey(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    return v0
.end method

.method public onLoaderProgress(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "onLoaderProgress : parameter = "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", info.what"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " , log info: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "DataLoaderHelperAdapter"

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, ","

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x2

    .line 63
    aget-object v3, v1, v3

    .line 64
    .line 65
    const-wide/16 v4, -0x1

    .line 66
    .line 67
    :try_start_0
    aget-object v6, v1, v0

    .line 68
    .line 69
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v8, 0x1

    .line 74
    :try_start_1
    aget-object v1, v1, v8

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-wide v6, v4

    .line 82
    :catch_1
    :goto_0
    iget v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 83
    .line 84
    const/4 v8, 0x4

    .line 85
    if-eq v1, v8, :cond_1

    .line 86
    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    cmp-long v1, v6, v8

    .line 90
    .line 91
    if-lez v1, :cond_3

    .line 92
    .line 93
    cmp-long v1, v6, v4

    .line 94
    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    :cond_1
    iget-wide v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 98
    .line 99
    const-wide/16 v6, 0x2

    .line 100
    .line 101
    cmp-long v1, v4, v6

    .line 102
    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v1, "onLoaderProgress : AVMDLTaskTypePreloadTask completed\uff1a"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 130
    .line 131
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 132
    .line 133
    invoke-virtual {v0, v3, v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->onPreloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    return p1

    .line 138
    :cond_2
    const-wide/16 v6, 0x4

    .line 139
    .line 140
    cmp-long p1, v4, v6

    .line 141
    .line 142
    if-nez p1, :cond_3

    .line 143
    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v1, "onLoaderProgress : AVMDLTaskTypePreconnectTask completed\uff1a"

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->getInstance()Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v3}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->changeCurPreConnectTsKey(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_1
    return v0
.end method

.method public onMDLStartComplete()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1d01

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getLongValue(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, -0x1

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->setProxyUrlGenerator(J)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 33
    .line 34
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "MediaDataLoader start complete , urlGeneratorMethod = "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " hlsProxyValid: "

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "DataLoaderHelperAdapter"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public preloadHLSSource(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isHlsProxyEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->hlsProxyValid:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->preloadSource(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_2
    return v1
.end method

.method public removeAllHLSCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->clearAllPlaylistCache()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeCache(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->removeFileCache(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public removeCacheFile(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->isCacheKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistLoaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->removeFileCache(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public removeDownloadFile(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->isHlsDownloadKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->mPlaylistDownloaderManager:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderManager;->removeDownloadFile(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public setEnablePreloadAllTs(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set setEnablePreloadAllTs:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DataLoaderHelperAdapter"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->ENABLE_PRELOAD_ALL_TS:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne p1, v2, :cond_0

    .line 31
    .line 32
    const-string p1, "1"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "0"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->setStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setEnablePreloadFirstTs(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set setEnablePreloadFirstTs:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DataLoaderHelperAdapter"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->ENABLE_PRELOAD_FIRST_TS:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne p1, v2, :cond_0

    .line 31
    .line 32
    const-string p1, "1"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "0"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->setStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setHLSCacheDir(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set CacheDir:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DataLoaderHelperAdapter"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->CACHE_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->setStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setHLSDownloadDir(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set DownloadDir:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DataLoaderHelperAdapter"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->DOWNLOAD_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->setStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
