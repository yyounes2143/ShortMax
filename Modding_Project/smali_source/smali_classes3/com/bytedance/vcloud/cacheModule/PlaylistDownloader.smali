.class public Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;
.super Ljava/lang/Object;
.source "PlaylistDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;
    }
.end annotation


# static fields
.field public static final HLS_PROGRESS_SCALE:J = 0x64L

.field private static final HLS_STEP_PERCENT:F = 0.5f

.field private static final TAG:Ljava/lang/String;

.field public static final WHAT_DOWNLOAD_CMD_CANCEL:I = 0x2712

.field public static final WHAT_DOWNLOAD_CMD_START:I = 0x2710

.field public static final WHAT_DOWNLOAD_STATUS_CANCEL:I = 0x2af9

.field public static final WHAT_DOWNLOAD_STATUS_CHANGED:I = 0x2ee0

.field public static final WHAT_DOWNLOAD_STATUS_COMPLETED:I = 0x2afa

.field public static final WHAT_DOWNLOAD_STATUS_ERROR:I = 0x2afb

.field public static final WHAT_DOWNLOAD_STATUS_PROGRESS:I = 0x2afc

.field public static final WHAT_DOWNLOAD_STATUS_START:I = 0x2af8


# instance fields
.field private baseDownloadPercent:F

.field private volatile mCanceled:Z

.field private mCurrentFileKey:Ljava/lang/String;

.field private mCustomHeaderEncoded:Ljava/lang/String;

.field private mDownloadCmdHandler:Landroid/os/Handler;

.field private mDownloadM3u8FilePath:Ljava/lang/String;

.field private mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

.field private mDownloadThread:Landroid/os/HandlerThread;

.field private mId:Ljava/lang/String;

.field private mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

.field private mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

.field private mMdlProxyUrl:Ljava/lang/String;

.field private mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

.field private mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

.field private mPlaylistFileKey:Ljava/lang/String;

.field private mPlaylistRawKey:Ljava/lang/String;

.field private mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

.field private mStatusListenerHandler:Landroid/os/Handler;

.field private mSubMdlProxyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubUrlStepPercent:F

.field private mTotalPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;-><init>(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistRawKey:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 10
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadM3u8FilePath:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubUrlStepPercent:F

    .line 13
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mTotalPercent:F

    .line 14
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadThread:Landroid/os/HandlerThread;

    .line 15
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 16
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCanceled:Z

    .line 18
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 20
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 21
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 22
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 23
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 24
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 26
    iput p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mTotalPercent:F

    .line 27
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 29
    const-string p2, "k"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 31
    :cond_0
    const-string p2, "rk"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistRawKey:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistRawKey:Ljava/lang/String;

    .line 34
    :goto_0
    const-string p2, "h"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 36
    :cond_2
    const-string p2, "hlsproxyQuery"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mId:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 40
    const-string p2, "id"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mId:Ljava/lang/String;

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    if-eqz p1, :cond_4

    .line 43
    iget-object p2, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mId:Ljava/lang/String;

    :cond_4
    if-nez p1, :cond_5

    .line 44
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->initStatusListenerHandler()V

    .line 45
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->initDownloadCmdHandler()V

    :cond_5
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->cancelDownload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->processTsPreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubUrlStepPercent:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1500(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->updateDownloadProgress(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callStartListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callCancelListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callCompleteListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callErrorListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callProgressListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->downloadM3u8File(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callCancelListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private callCompleteListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;->onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private callErrorListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;->onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private callProgressListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "callProgressListener out info:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;->onProgress(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private callStartListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;->onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private declared-synchronized cancelDownload()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "cancel ts.. mCurrentFileKey:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->cancel(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->release()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->release()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 60
    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw v0
.end method

.method private declared-synchronized changeStatusToCancel()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "<"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ">cancel ts.. mCurrentFileKey:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->suspendDownload(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->release()V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 65
    .line 66
    const/16 v1, 0x2af9

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw v0
.end method

.method private declared-synchronized changeStatusToCompleted()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 5
    .line 6
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x15

    .line 12
    .line 13
    iput v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 14
    .line 15
    const-wide/16 v1, 0x3

    .line 16
    .line 17
    iput-wide v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 18
    .line 19
    const-string v1, "%d,%d,%s,%s"

    .line 20
    .line 21
    const-wide/16 v2, 0x2710

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadM3u8FilePath:Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {v4, v2, v3, v5}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v1, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callCompleteListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->release()V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 66
    .line 67
    :cond_1
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 68
    .line 69
    const/16 v2, 0x2afa

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :goto_0
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw v0
.end method

.method private declared-synchronized changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 5
    .line 6
    const-wide/16 v0, 0x3

    .line 7
    .line 8
    iput-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    iput-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->release()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callErrorListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/16 v1, 0x2afb

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :goto_1
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method private changeStatusToStart()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Start:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/16 v1, 0x2af8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private declared-synchronized downloadM3u8File(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "<"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "> downloadM3u8File : "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "<"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "> main url is empty. "

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 68
    .line 69
    .line 70
    iput v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 71
    .line 72
    const-wide/16 v0, -0xfa0

    .line 73
    .line 74
    iput-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_0
    :try_start_1
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 85
    .line 86
    invoke-direct {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 90
    .line 91
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;

    .line 92
    .line 93
    invoke-direct {p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->version:I

    .line 98
    .line 99
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 102
    .line 103
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Caching:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->cacheStatus:I

    .line 110
    .line 111
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->writeHlsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;)V

    .line 114
    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadM3u8FilePath:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->download()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-gez v1, :cond_1

    .line 126
    .line 127
    iget-boolean v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCanceled:Z

    .line 128
    .line 129
    if-nez v3, :cond_1

    .line 130
    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v3, "<"

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v3, ">open main m3u8 url fail : "

    .line 145
    .line 146
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 160
    .line 161
    invoke-direct {p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 162
    .line 163
    .line 164
    iput v2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 165
    .line 166
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/Defines;->getErrorCode(I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    int-to-long v0, v0

    .line 171
    iput-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 172
    .line 173
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 178
    :cond_1
    :try_start_2
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Cached:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->cacheStatus:I

    .line 185
    .line 186
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 187
    .line 188
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->writeHlsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->getDownloadFilePath()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadM3u8FilePath:Ljava/lang/String;

    .line 198
    .line 199
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->getType()Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 206
    .line 207
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 208
    .line 209
    if-ne p1, v1, :cond_2

    .line 210
    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v1, "<"

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, "> main url is Master "

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->getMasterPlaylist()Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->getAllMasterDownloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 250
    .line 251
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->getSubUrls(Ljava/lang/String;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    new-instance v0, Ljava/util/LinkedList;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 260
    .line 261
    .line 262
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 263
    .line 264
    if-eqz p1, :cond_3

    .line 265
    .line 266
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-lez v0, :cond_3

    .line 271
    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_3

    .line 281
    .line 282
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/String;

    .line 287
    .line 288
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 289
    .line 290
    invoke-direct {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;-><init>()V

    .line 291
    .line 292
    .line 293
    iput-object v0, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 296
    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 302
    .line 303
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    if-eqz p1, :cond_4

    .line 308
    .line 309
    monitor-exit p0

    .line 310
    return-void

    .line 311
    :cond_4
    :try_start_3
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mTotalPercent:F

    .line 312
    .line 313
    const/high16 v0, 0x3f000000    # 0.5f

    .line 314
    .line 315
    sub-float/2addr p1, v0

    .line 316
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    int-to-float v1, v1

    .line 323
    div-float/2addr p1, v1

    .line 324
    iput p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubUrlStepPercent:F

    .line 325
    .line 326
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 327
    .line 328
    add-float/2addr p1, v0

    .line 329
    iput p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 330
    .line 331
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->removeDownloadedSubUrls()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 336
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v2, "<"

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v2, ">removeDownloadedSubUrls : "

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    if-lez p1, :cond_5

    .line 366
    .line 367
    const/4 v0, 0x0

    .line 368
    :goto_2
    if-ge v0, p1, :cond_5

    .line 369
    .line 370
    iget v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 371
    .line 372
    iget v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubUrlStepPercent:F

    .line 373
    .line 374
    add-float/2addr v1, v2

    .line 375
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 376
    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->downloadNextUrl()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    .line 382
    .line 383
    monitor-exit p0

    .line 384
    return-void

    .line 385
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 386
    throw p1
.end method

.method private declared-synchronized downloadNextUrl()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCanceled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "<"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ">downloadNextUrl...but canceled"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 39
    .line 40
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 41
    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    .line 44
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "<"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ">downloadNextUrl...but error before"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :try_start_2
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "<"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v3, ">downloadNextUrl() completed. proxyUrlsEmpty"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 112
    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->allDownloadCompleted()V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mTotalPercent:F

    .line 119
    .line 120
    invoke-direct {p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->updateDownloadProgress(F)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToCompleted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 140
    .line 141
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v3, "<"

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v3, "> downloadNextUrl = "

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_4

    .line 176
    .line 177
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 178
    .line 179
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 180
    .line 181
    .line 182
    const/16 v1, 0x8

    .line 183
    .line 184
    iput v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 185
    .line 186
    const-wide/16 v1, -0xfa0

    .line 187
    .line 188
    iput-wide v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 189
    .line 190
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    .line 192
    .line 193
    monitor-exit p0

    .line 194
    return-void

    .line 195
    :cond_4
    :try_start_4
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const-string v3, "k"

    .line 200
    .line 201
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    .line 207
    const-string v3, "k"

    .line 208
    .line 209
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/lang/String;

    .line 214
    .line 215
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 216
    .line 217
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "<"

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v3, ">MDL downloadResource filekey = "

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, " proxyUrl = "

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 256
    .line 257
    if-eqz v2, :cond_7

    .line 258
    .line 259
    new-instance v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 260
    .line 261
    invoke-direct {v2}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;-><init>()V

    .line 262
    .line 263
    .line 264
    const/4 v3, 0x3

    .line 265
    iput v3, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->version:I

    .line 266
    .line 267
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 268
    .line 269
    iput-object v3, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 270
    .line 271
    sget-object v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Caching:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    iput v3, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->cacheStatus:I

    .line 278
    .line 279
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 280
    .line 281
    sget-object v4, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 282
    .line 283
    if-ne v3, v4, :cond_6

    .line 284
    .line 285
    const/4 v3, 0x1

    .line 286
    iput v3, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_6
    const/4 v3, 0x2

    .line 290
    iput v3, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 291
    .line 292
    :goto_0
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 293
    .line 294
    invoke-virtual {v3, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->writeTsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)V

    .line 295
    .line 296
    .line 297
    :cond_7
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 298
    .line 299
    sget-object v3, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 300
    .line 301
    if-ne v2, v3, :cond_9

    .line 302
    .line 303
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 304
    .line 305
    if-eqz v2, :cond_8

    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->release()V

    .line 308
    .line 309
    .line 310
    :cond_8
    new-instance v2, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 311
    .line 312
    invoke-direct {v2, v0, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;-><init>(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V

    .line 313
    .line 314
    .line 315
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 316
    .line 317
    new-instance v3, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;

    .line 318
    .line 319
    invoke-direct {v3, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$3;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->setLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;)V

    .line 323
    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v3, "<"

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v3, ">sub m3u8 downloadSource filekey = "

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v3, " proxyUrl = "

    .line 349
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->download()I

    .line 366
    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_9
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->downloadResource(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    .line 375
    .line 376
    :goto_1
    monitor-exit p0

    .line 377
    return-void

    .line 378
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    throw v0
.end method

.method private getAllMasterDownloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    array-length v3, v1

    .line 15
    move v4, v2

    .line 16
    :goto_0
    if-ge v4, v3, :cond_1

    .line 17
    .line 18
    aget-object v5, v1, v4

    .line 19
    .line 20
    new-instance v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 21
    .line 22
    invoke-direct {v6}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mUri:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v5, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    array-length v3, v1

    .line 40
    move v4, v2

    .line 41
    :goto_1
    if-ge v4, v3, :cond_2

    .line 42
    .line 43
    aget-object v5, v1, v4

    .line 44
    .line 45
    new-instance v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 46
    .line 47
    invoke-direct {v6}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mUri:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v5, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    array-length v3, v1

    .line 65
    move v4, v2

    .line 66
    :goto_2
    if-ge v4, v3, :cond_3

    .line 67
    .line 68
    aget-object v5, v1, v4

    .line 69
    .line 70
    new-instance v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 71
    .line 72
    invoke-direct {v6}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mUri:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v5, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    array-length v3, v1

    .line 90
    move v4, v2

    .line 91
    :goto_3
    if-ge v4, v3, :cond_4

    .line 92
    .line 93
    aget-object v5, v1, v4

    .line 94
    .line 95
    new-instance v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 96
    .line 97
    invoke-direct {v6}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;->mUri:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v5, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    iget-object p1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    array-length v1, p1

    .line 115
    :goto_4
    if-ge v2, v1, :cond_5

    .line 116
    .line 117
    aget-object v3, p1, v2

    .line 118
    .line 119
    new-instance v4, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 120
    .line 121
    invoke-direct {v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v3, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mUri:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v3, v4, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistRawKey:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v4, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v5, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mId:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 159
    .line 160
    const/4 v7, 0x1

    .line 161
    invoke-static/range {v2 .. v7}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->generateProxyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iput-object v2, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    return-object v0
.end method

.method private initDownloadCmdHandler()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "playlistDownloader"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$2;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method private initStatusListenerHandler()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$1;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method private isPlaylistFileKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public static parseDownloadLogInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v0, p0

    .line 16
    const/4 v2, 0x4

    .line 17
    if-ge v0, v2, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aget-object v1, p0, v1

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->downloadedSize:J

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    aget-object v1, p0, v1

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iput-wide v1, v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->mediaSize:J

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    aget-object v1, p0, v1

    .line 45
    .line 46
    iput-object v1, v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->key:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    aget-object p0, p0, v1

    .line 50
    .line 51
    iput-object p0, v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->localFilePath:Ljava/lang/String;

    .line 52
    .line 53
    return-object v0
.end method

.method private processM3u8PreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "do nothing ... processM3u8PreloadStatus = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", mCurrentFileKey = "

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", mUrlFileKey = "

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", status = "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

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
    invoke-static {p3, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private declared-synchronized processTsPreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "processTsPreloadStatus = "

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
    const-string v2, ", status = "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", info.loginfo = "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 47
    .line 48
    if-ne p2, v1, :cond_2

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p3, "<"

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, ">sub download completed  , key = "

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {v0, p2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 93
    .line 94
    invoke-direct {p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;-><init>()V

    .line 95
    .line 96
    .line 97
    const/4 p2, 0x3

    .line 98
    iput p2, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->version:I

    .line 99
    .line 100
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 101
    .line 102
    iput-object p2, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 103
    .line 104
    sget-object p2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Cached:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iput p2, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->cacheStatus:I

    .line 111
    .line 112
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 113
    .line 114
    sget-object p3, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem$PlayListType;

    .line 115
    .line 116
    if-ne p2, p3, :cond_0

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    iput p2, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_0
    const/4 p2, 0x2

    .line 126
    iput p2, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 127
    .line 128
    :goto_0
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->writeTsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)V

    .line 131
    .line 132
    .line 133
    :cond_1
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 134
    .line 135
    iget p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubUrlStepPercent:F

    .line 136
    .line 137
    add-float/2addr p1, p2

    .line 138
    iput p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->updateDownloadProgress(F)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->downloadNextUrl()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_2
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 149
    .line 150
    if-ne p2, p1, :cond_3

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string p2, "<"

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p2, ">mdl canceled... "

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_3
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 185
    .line 186
    if-ne p2, p1, :cond_4

    .line 187
    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string p2, "<"

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p2, ">mdl Error ... "

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p2, " , info :"

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object p2, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 229
    .line 230
    invoke-direct {p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 231
    .line 232
    .line 233
    const/16 p2, 0x8

    .line 234
    .line 235
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 236
    .line 237
    iget-wide p2, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 238
    .line 239
    iput-wide p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 240
    .line 241
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Progress:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;

    .line 246
    .line 247
    if-ne p2, p1, :cond_5

    .line 248
    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string p2, "<"

    .line 255
    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string p2, ">mdl progress ... "

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p2, " , info :"

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object p2, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->parseDownloadLogInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    if-eqz p1, :cond_5

    .line 296
    .line 297
    iget p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->baseDownloadPercent:F

    .line 298
    .line 299
    iget-wide v0, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->downloadedSize:J

    .line 300
    .line 301
    long-to-float p3, v0

    .line 302
    iget v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubUrlStepPercent:F

    .line 303
    .line 304
    mul-float/2addr p3, v0

    .line 305
    iget-wide v0, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadLogInfo;->mediaSize:J

    .line 306
    .line 307
    long-to-float p1, v0

    .line 308
    div-float/2addr p3, p1

    .line 309
    add-float/2addr p2, p3

    .line 310
    invoke-direct {p0, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->updateDownloadProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .line 312
    .line 313
    :cond_5
    :goto_1
    monitor-exit p0

    .line 314
    return-void

    .line 315
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    throw p1
.end method

.method private removeDownloadedSubUrls()I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Download:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getTsCacheInfos(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_8

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    array-length v1, v0

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_0
    if-ge v2, v1, :cond_7

    .line 29
    .line 30
    aget-object v4, v0, v2

    .line 31
    .line 32
    iget-object v5, v4, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget v4, v4, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->cacheStatus:I

    .line 42
    .line 43
    sget-object v6, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Caching:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ne v4, v6, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_6

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;

    .line 69
    .line 70
    iget-object v7, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v7, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v7}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, "k"

    .line 86
    .line 87
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_4

    .line 92
    .line 93
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mSubMdlProxyUrls:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    return v3

    .line 114
    :cond_8
    :goto_3
    return v1
.end method

.method private updateDownloadProgress(F)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-long v1, p1

    .line 5
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mTotalPercent:F

    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-long v3, p1

    .line 9
    new-instance p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 16
    .line 17
    const-wide/16 v5, 0x3

    .line 18
    .line 19
    iput-wide v5, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mPlaylistFileKey:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadM3u8FilePath:Ljava/lang/String;

    .line 32
    .line 33
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "%d,%d,%s,%s"

    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->callProgressListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 v1, 0x2afc

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCanceled:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->cancel()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->cancel()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/16 v1, 0x2712

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :cond_3
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw v0
.end method

.method declared-synchronized checkIfIntercept(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isPlaylistFileKey(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Progress:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return v2

    .line 16
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    if-ne p2, p1, :cond_1

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :cond_1
    :try_start_2
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    if-ne p2, p1, :cond_2

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return v2

    .line 28
    :cond_2
    monitor-exit p0

    .line 29
    return v1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isTsFileKey(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return v1

    .line 40
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isMediaFileKey(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->checkIfIntercept(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;)Z

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    return p1

    .line 54
    :cond_5
    monitor-exit p0

    .line 55
    return v2

    .line 56
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    throw p1
.end method

.method public download()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCanceled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "<"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, ">download has been cancled"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/16 v2, 0x2710

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMdlProxyUrl:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->downloadM3u8File(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return v1
.end method

.method public declared-synchronized isMediaFileKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isMyKey(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public isMyKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isPlaylistFileKey(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isTsFileKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isMediaFileKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method public isTsFileKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mCurrentFileKey:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public processStatusChange(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->checkIfIntercept(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "processStatusChange checkIfIntercept: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/16 v2, 0x2ee0

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "status"

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const-string p2, "fileKey"

    .line 50
    .line 51
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadCmdHandler:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    .line 63
    .line 64
    return v0
.end method

.method declared-synchronized processStatusChangeInner(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isPlaylistFileKey(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->processM3u8PreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isTsFileKey(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->processTsPreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->isMediaFileKey(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mMediaListDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->processStatusChangeInner(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$DownloadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mDownloadThread:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;->release()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mM3u8FileDownloader:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public setLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistDownloader$IDownloadListener;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "@"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
