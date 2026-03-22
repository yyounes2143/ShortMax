.class public Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;
.super Ljava/lang/Object;
.source "PlaylistLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHAT_PRELOAD_CMD_CANCEL:I = 0x2712

.field private static final WHAT_PRELOAD_CMD_NEXT:I = 0x2711

.field private static final WHAT_PRELOAD_CMD_START:I = 0x2710

.field private static final WHAT_PRELOAD_STATUS_CANCEL:I = 0x2af9

.field public static final WHAT_PRELOAD_STATUS_CHANGED:I = 0x2ee0

.field private static final WHAT_PRELOAD_STATUS_COMPLETED:I = 0x2afa

.field private static final WHAT_PRELOAD_STATUS_ERROR:I = 0x2afb

.field private static final WHAT_PRELOAD_STATUS_START:I = 0x2af8


# instance fields
.field private mCacheDir:Ljava/lang/String;

.field private volatile mCanceled:Z

.field private mCurrentFileKey:Ljava/lang/String;

.field private mCustomHeaderEncoded:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

.field private mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

.field private mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

.field private mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

.field private mMdlProxyUrl:Ljava/lang/String;

.field private mOnMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

.field private mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

.field private mPlaylistFileKey:Ljava/lang/String;

.field private mPlaylistRawKey:Ljava/lang/String;

.field private mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

.field private mPreloadHandler:Landroid/os/Handler;

.field private mPreloadThread:Landroid/os/HandlerThread;

.field private mPreloadedSize:I

.field private mStatusListenerHandler:Landroid/os/Handler;

.field private mSubPreloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetPreloadSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;-><init>(Ljava/lang/String;ILcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistRawKey:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCustomHeaderEncoded:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCacheDir:Ljava/lang/String;

    .line 10
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 12
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mSubPreloadUrls:Ljava/util/List;

    .line 14
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 15
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadThread:Landroid/os/HandlerThread;

    .line 16
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

    .line 17
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z

    .line 19
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 21
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 22
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 23
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mOnMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 24
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">PlaylistLoader() parent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mdlproxyurl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->getCacheDir()Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 27
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 29
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 30
    const-string p2, "k"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 31
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 32
    :cond_0
    const-string p2, "rk"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 33
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistRawKey:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistRawKey:Ljava/lang/String;

    .line 35
    :goto_0
    const-string p2, "h"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 36
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 37
    :cond_2
    const-string p2, "hlsproxyQuery"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mId:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 41
    const-string p2, "id"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 42
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mId:Ljava/lang/String;

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mParentLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    if-eqz p1, :cond_4

    .line 44
    iget-object p2, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mId:Ljava/lang/String;

    :cond_4
    if-nez p1, :cond_5

    .line 45
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->initStatusListenerHandler()V

    .line 46
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->initPreloadCmdHandler()V

    :cond_5
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->cancelPreload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1102(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callStartListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callCancelListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callCompleteListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callErrorListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preloadM3u8File(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preLoadNextUrl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callCancelListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private callCompleteListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private callErrorListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private callStartListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;->onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private declared-synchronized cancelPreload()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->release()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 60
    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToCancel()V
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

.method private changeStatusToCancel()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x2af9

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private declared-synchronized changeStatusToCompleted()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 5
    .line 6
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    iput v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 13
    .line 14
    const-wide/16 v1, 0x2

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 17
    .line 18
    const-string v1, "%d,%d,%s,%s"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getCacheSize(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->getCacheDir()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v6, "/"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v6, ".plc"

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->release()V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 101
    .line 102
    :cond_1
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    const/16 v2, 0x2afa

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {p0, v1, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callCompleteListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_1
    monitor-exit p0

    .line 126
    return-void

    .line 127
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw v0
.end method

.method private declared-synchronized changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    iput-wide v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    iput-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->release()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const/16 v1, 0x2afb

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callErrorListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :goto_1
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p1
.end method

.method private changeStatusToStart()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Start:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x2af8

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->callStartListener(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private getCacheDir()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCacheDir:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->CACHE_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getStringOption(Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCacheDir:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCacheDir:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method

.method private initPreloadCmdHandler()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "playlistPreloader"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$2;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method private initStatusListenerHandler()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$1;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mStatusListenerHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method private isPlaylistFileKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

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

.method private isTsFileKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

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

.method private declared-synchronized preLoadNextUrl()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

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
    const-string v2, ">preLoadNextUrl..."

    .line 18
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
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mSubPreloadUrls:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 42
    .line 43
    iget v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x1

    .line 47
    if-lt v2, v3, :cond_1

    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v4

    .line 52
    :goto_0
    if-nez v1, :cond_a

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_2
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mSubPreloadUrls:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;

    .line 65
    .line 66
    iget-object v2, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 77
    .line 78
    .line 79
    const/16 v1, 0x8

    .line 80
    .line 81
    iput v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 82
    .line 83
    const-wide/16 v1, -0xfa0

    .line 84
    .line 85
    iput-wide v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v4, "<"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v4, "> preLoadNextUrl = "

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, " , size = "

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v4, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v0, v3}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const-string v4, "k"

    .line 138
    .line 139
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_4

    .line 144
    .line 145
    const-string v4, "k"

    .line 146
    .line 147
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/lang/String;

    .line 152
    .line 153
    iput-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 154
    .line 155
    :cond_4
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 156
    .line 157
    if-eqz v3, :cond_6

    .line 158
    .line 159
    new-instance v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 160
    .line 161
    invoke-direct {v3}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;-><init>()V

    .line 162
    .line 163
    .line 164
    const/4 v4, 0x2

    .line 165
    iput v4, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->version:I

    .line 166
    .line 167
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v6, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 172
    .line 173
    sget-object v7, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 174
    .line 175
    if-ne v6, v7, :cond_5

    .line 176
    .line 177
    iput v5, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    iput v4, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 181
    .line 182
    :goto_1
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 183
    .line 184
    invoke-virtual {v4, v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->writeTsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 188
    .line 189
    iget v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 190
    .line 191
    sub-int/2addr v3, v4

    .line 192
    iget-object v4, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 193
    .line 194
    if-eqz v4, :cond_7

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-lez v4, :cond_7

    .line 201
    .line 202
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    :cond_7
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 209
    .line 210
    sget-object v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 211
    .line 212
    if-ne v1, v4, :cond_9

    .line 213
    .line 214
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 215
    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->release()V

    .line 219
    .line 220
    .line 221
    :cond_8
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 222
    .line 223
    invoke-direct {v1, v2, v3, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;-><init>(Ljava/lang/String;ILcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V

    .line 224
    .line 225
    .line 226
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 227
    .line 228
    new-instance v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;

    .line 229
    .line 230
    invoke-direct {v4, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$3;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->setLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;)V

    .line 234
    .line 235
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v4, "<"

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v4, ">sub m3u8 preloadSource filekey = "

    .line 250
    .line 251
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, " , preloadSize = "

    .line 260
    .line 261
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v3, " proxyUrl = "

    .line 268
    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preload()I

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v4, "<"

    .line 294
    .line 295
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v4, ">MDL preloadSource filekey = "

    .line 302
    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v4, " , preloadSize = "

    .line 312
    .line 313
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v4, " proxyUrl = "

    .line 320
    .line 321
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->preloadResource(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    .line 340
    .line 341
    :goto_2
    monitor-exit p0

    .line 342
    return-void

    .line 343
    :cond_a
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v4, "<"

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v4, ">preLoadNextUrl() completed. proxyUrlsEmpty:"

    .line 357
    .line 358
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, ", hasReachPreloadSize :"

    .line 365
    .line 366
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 381
    .line 382
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    .line 384
    .line 385
    monitor-exit p0

    .line 386
    return-void

    .line 387
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 388
    throw v0
.end method

.method private declared-synchronized preloadM3u8File(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

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
    const-string v2, "> preloadM3u8File : "

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
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
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
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_0
    :try_start_1
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 85
    .line 86
    invoke-direct {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->preload()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-gez p1, :cond_1

    .line 96
    .line 97
    iget-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z

    .line 98
    .line 99
    if-nez v1, :cond_1

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v3, "<"

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, ">open main m3u8 url fail : "

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 132
    .line 133
    .line 134
    iput v2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 135
    .line 136
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/Defines;->getErrorCode(I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    int-to-long v1, p1

    .line 141
    iput-wide v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 142
    .line 143
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 149
    .line 150
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 151
    .line 152
    invoke-static {p1, v1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getHlsCacheSizeWithoutTs(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    long-to-int p1, v1

    .line 157
    iget v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 158
    .line 159
    add-int/2addr v1, p1

    .line 160
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v2, "<"

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, ">preload main m3u8 url cost size : "

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;

    .line 191
    .line 192
    invoke-direct {p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;-><init>()V

    .line 193
    .line 194
    .line 195
    const/4 v1, 0x3

    .line 196
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->version:I

    .line 197
    .line 198
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 201
    .line 202
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Cached:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->cacheStatus:I

    .line 209
    .line 210
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getExpireTime()J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    iput-wide v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->expireTime:J

    .line 217
    .line 218
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 219
    .line 220
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->writeHlsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getType()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 230
    .line 231
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 232
    .line 233
    if-ne p1, v1, :cond_2

    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v1, "<"

    .line 241
    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, "> main url is Master "

    .line 249
    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getMasterPlaylist()Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->selectMasterPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mSubPreloadUrls:Ljava/util/List;

    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 274
    .line 275
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getSubUrls(Ljava/lang/String;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    new-instance v0, Ljava/util/LinkedList;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 284
    .line 285
    .line 286
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mSubPreloadUrls:Ljava/util/List;

    .line 287
    .line 288
    if-eqz p1, :cond_3

    .line 289
    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_3

    .line 299
    .line 300
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Ljava/lang/String;

    .line 305
    .line 306
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;

    .line 307
    .line 308
    invoke-direct {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;-><init>()V

    .line 309
    .line 310
    .line 311
    iput-object v0, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    iput-object v2, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 315
    .line 316
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mSubPreloadUrls:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 322
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v3, "target preload url : "

    .line 329
    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preLoadNextUrl()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .line 346
    .line 347
    monitor-exit p0

    .line 348
    return-void

    .line 349
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    throw p1
.end method

.method private processM3u8PreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "processM3u8PreloadStatus = "

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
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

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

.method private processTsPreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "processSubPreloadStatus = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", mCurrentFileKey = "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", mUrlFileKey = "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", status = "

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Completed:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 56
    .line 57
    const-string v1, "<"

    .line 58
    .line 59
    if-ne p2, p1, :cond_1

    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getCacheSize(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    iget p3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 77
    .line 78
    int-to-long v2, p3

    .line 79
    add-long/2addr v2, p1

    .line 80
    long-to-int p3, v2

    .line 81
    iput p3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ">sub preload completd size = "

    .line 95
    .line 96
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, " , key = "

    .line 103
    .line 104
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", cacheSize = "

    .line 113
    .line 114
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, " , mPreloadedSize = "

    .line 121
    .line 122
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadedSize:I

    .line 126
    .line 127
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, " , mTargetPreloadSize = "

    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 136
    .line 137
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preLoadNextUrl()V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Cancel:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 155
    .line 156
    if-ne p2, p1, :cond_2

    .line 157
    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p2, ">mdl canceled... "

    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCurrentFileKey:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_2
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;

    .line 188
    .line 189
    if-ne p2, p1, :cond_3

    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p2, ">mdl Error ... code : "

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-wide v1, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 208
    .line 209
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 220
    .line 221
    invoke-direct {p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 222
    .line 223
    .line 224
    const/16 p2, 0x8

    .line 225
    .line 226
    iput p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 227
    .line 228
    iget-wide p2, p3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 229
    .line 230
    iput-wide p2, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 231
    .line 232
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->changeStatusToError(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 233
    .line 234
    .line 235
    :cond_3
    :goto_0
    return-void
.end method

.method private selectMasterPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mOnMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;->onSelectPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v1, "<"

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_8

    .line 28
    .line 29
    :cond_2
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, "> select url is empty. try preload first VariantStream"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getBestStreamIndex()Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_8

    .line 66
    .line 67
    iget-object v3, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x1

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget v6, v2, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;->varIndex:I

    .line 74
    .line 75
    if-ltz v6, :cond_3

    .line 76
    .line 77
    array-length v3, v3

    .line 78
    if-ge v6, v3, :cond_3

    .line 79
    .line 80
    move v3, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v3, v4

    .line 83
    :goto_1
    iget-object v6, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 84
    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    iget v7, v2, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;->rendIndex:I

    .line 88
    .line 89
    if-ltz v7, :cond_4

    .line 90
    .line 91
    array-length v6, v6

    .line 92
    if-ge v7, v6, :cond_4

    .line 93
    .line 94
    move v4, v5

    .line 95
    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    .line 96
    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    new-instance v6, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;

    .line 100
    .line 101
    invoke-direct {v6}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v7, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 105
    .line 106
    iget v8, v2, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;->varIndex:I

    .line 107
    .line 108
    aget-object v7, v7, v8

    .line 109
    .line 110
    iget-object v7, v7, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mUri:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v7, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 113
    .line 114
    iget v7, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 115
    .line 116
    int-to-float v7, v7

    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    const v8, 0x3f4ccccd    # 0.8f

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move v8, v5

    .line 124
    :goto_2
    mul-float/2addr v7, v8

    .line 125
    float-to-int v7, v7

    .line 126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    iput-object v7, v6, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    if-eqz v4, :cond_8

    .line 136
    .line 137
    new-instance v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;

    .line 138
    .line 139
    invoke-direct {v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 143
    .line 144
    iget v2, v2, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;->rendIndex:I

    .line 145
    .line 146
    aget-object p1, p1, v2

    .line 147
    .line 148
    iget-object p1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mUri:Ljava/lang/String;

    .line 149
    .line 150
    iput-object p1, v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 151
    .line 152
    iget p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mTargetPreloadSize:I

    .line 153
    .line 154
    int-to-float p1, p1

    .line 155
    if-eqz v3, :cond_7

    .line 156
    .line 157
    const v5, 0x3e4ccccd    # 0.2f

    .line 158
    .line 159
    .line 160
    :cond_7
    mul-float/2addr p1, v5

    .line 161
    float-to-int p1, p1

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_8
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, "> select urls are :"

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {p1, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_9

    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_a

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;

    .line 221
    .line 222
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistRawKey:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPlaylistFileKey:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v4, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v5, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mId:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 231
    .line 232
    const/4 v7, 0x1

    .line 233
    invoke-static/range {v2 .. v7}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->generateProxyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iput-object v2, v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_a
    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z
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
    iput-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->cancel()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->cancel()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

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
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->cancelPreload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v0
.end method

.method declared-synchronized checkIfIntercept(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isPlaylistFileKey(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mLoadStatus:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :cond_0
    :try_start_1
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;->Error:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;
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
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isTsFileKey(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return v1

    .line 34
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->checkIfIntercept(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;)Z

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    return p1

    .line 44
    :cond_4
    monitor-exit p0

    .line 45
    return v1

    .line 46
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    throw p1
.end method

.method public declared-synchronized isMyKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isPlaylistFileKey(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isTsFileKey(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isMyKey(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_2
    :goto_0
    monitor-exit p0

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public preload()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mCanceled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->TAG:Ljava/lang/String;

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
    const-string v3, ">preload has been canceled"

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

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
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMdlProxyUrl:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preloadM3u8File(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return v1
.end method

.method public processStatusChange(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->checkIfIntercept(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v2, 0x2ee0

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "status"

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string p2, "fileKey"

    .line 30
    .line 31
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return v0
.end method

.method declared-synchronized processStatusChangeInner(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isPlaylistFileKey(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->processM3u8PreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

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
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isTsFileKey(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->processTsPreloadStatus(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mMasterUrlLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->processStatusChangeInner(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mPreloadThread:Landroid/os/HandlerThread;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->release()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;
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

.method public setLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnMasterPlaylistListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->mOnMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

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
