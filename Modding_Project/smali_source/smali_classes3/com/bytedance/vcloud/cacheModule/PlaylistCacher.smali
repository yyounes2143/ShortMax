.class public Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;
.super Ljava/lang/Object;
.source "PlaylistCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHAT_CACHE_CMD_CANCEL:I = 0x2712

.field private static final WHAT_CACHE_CMD_START:I = 0x2710

.field private static final WHAT_CACHE_STATUS_RESULT:I = 0x2af9


# instance fields
.field private mBoolOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheHandler:Landroid/os/Handler;

.field private mCacheInfoListener:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

.field private mCacherThread:Landroid/os/HandlerThread;

.field private volatile mCanceled:Z

.field private mChildUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomHeaderEncoded:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIntOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mM3u8FileKey:Ljava/lang/String;

.field private mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

.field private mM3u8FileType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

.field private mM3u8MdlProxyUrl:Ljava/lang/String;

.field private mM3u8RawKey:Ljava/lang/String;

.field private mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

.field private mNeedInfoCallback:Z

.field private mParentCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

.field private mStatusListenerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8MdlProxyUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8RawKey:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileKey:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacherThread:Landroid/os/HandlerThread;

    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheHandler:Landroid/os/Handler;

    .line 10
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mStatusListenerHandler:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 12
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mParentCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 14
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mChildUrls:Ljava/util/List;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z

    .line 16
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheInfoListener:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

    .line 17
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mNeedInfoCallback:Z

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mIntOptions:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mBoolOptions:Ljava/util/Map;

    .line 21
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ">PlaylistCacher() parent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mdlproxyurl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mParentCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 24
    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8MdlProxyUrl:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 26
    const-string p2, "k"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 27
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileKey:Ljava/lang/String;

    .line 28
    :cond_0
    const-string p2, "rk"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 29
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8RawKey:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8RawKey:Ljava/lang/String;

    .line 31
    :goto_0
    const-string p2, "h"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 32
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 33
    :cond_2
    const-string p2, "hlsproxyQuery"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 34
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 37
    const-string p2, "id"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    .line 39
    :cond_3
    const-string p2, "enableInfoCallback"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "1"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mNeedInfoCallback:Z

    .line 40
    :cond_5
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mParentCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    if-eqz p1, :cond_6

    .line 41
    iget-object p2, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    .line 42
    iget-boolean p2, p1, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mNeedInfoCallback:Z

    iput-boolean p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mNeedInfoCallback:Z

    :cond_6
    if-nez p1, :cond_7

    .line 43
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->initStatusListenerHandler()V

    .line 44
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->initPreloadCmdHandler()V

    :cond_7
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheInfoListener:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8MdlProxyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->cacheM3u8File(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->cancelCache()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mBoolOptions:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->preLoadNextUrl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->id:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/Defines;->getErrorMsg(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorMsg:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->convertType(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getExpireTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistExpireTimeS:J

    .line 33
    .line 34
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlaylistOption;->CdnUrlStr:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlaylistOption;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getStrOption(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlaylistOption;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    iget-object v1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 54
    .line 55
    iput-object p1, v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileKey:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8RawKey:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 64
    .line 65
    return-object v0
.end method

.method private buildChildUrlInfos(Ljava/util/List;)[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_5

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 35
    .line 36
    invoke-direct {v4}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v3, v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v5, "k"

    .line 46
    .line 47
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    iput-object v5, v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 60
    .line 61
    :cond_1
    const-string v5, "rk"

    .line 62
    .line 63
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    iput-object v5, v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v5, v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v5, v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 81
    .line 82
    :goto_1
    const-string v5, "u0"

    .line 83
    .line 84
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_4

    .line 89
    .line 90
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    move-object v3, v0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_2
    iput-object v3, v4, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 109
    .line 110
    :cond_4
    aput-object v4, v1, v2

    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-object v1

    .line 116
    :cond_6
    :goto_3
    return-object v0
.end method

.method private declared-synchronized cacheM3u8File(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->TAG:Ljava/lang/String;

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
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "<"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "> main url is empty. "

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 p1, -0xfa0

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_0
    :try_start_1
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 78
    .line 79
    invoke-direct {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mIntOptions:Ljava/util/Map;

    .line 85
    .line 86
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;->PlaylistTimeOutMs_Int:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 95
    .line 96
    sget v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->IntOption_TimeoutMs:I

    .line 97
    .line 98
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mIntOptions:Ljava/util/Map;

    .line 99
    .line 100
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p1, v2, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->setIntOption(II)V

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->preload()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-gez p1, :cond_2

    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z

    .line 122
    .line 123
    if-nez v1, :cond_2

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "<"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, ">open main m3u8 url fail : "

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/Defines;->getErrorCode(I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    monitor-exit p0

    .line 165
    return-void

    .line 166
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v1, "<"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ">cache main m3u8 url end "

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;

    .line 192
    .line 193
    invoke-direct {p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;-><init>()V

    .line 194
    .line 195
    .line 196
    const/4 v1, 0x3

    .line 197
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->version:I

    .line 198
    .line 199
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileKey:Ljava/lang/String;

    .line 200
    .line 201
    iput-object v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 202
    .line 203
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Cached:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->cacheStatus:I

    .line 210
    .line 211
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getExpireTime()J

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    iput-wide v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->expireTime:J

    .line 218
    .line 219
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 220
    .line 221
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->writeHlsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getType()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 231
    .line 232
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    if-ne p1, v1, :cond_3

    .line 236
    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v1, "<"

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, "> main url is Master "

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getMasterPlaylist()Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->selectMasterPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mChildUrls:Ljava/util/List;

    .line 273
    .line 274
    invoke-direct {p0, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mChildUrls:Ljava/util/List;

    .line 279
    .line 280
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildChildUrlInfos(Ljava/util/List;)[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iput-object v0, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 285
    .line 286
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 287
    .line 288
    .line 289
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->preLoadNextUrl()V

    .line 290
    .line 291
    .line 292
    goto :goto_0

    .line 293
    :cond_3
    invoke-direct {p0, v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 298
    .line 299
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getSubUrls(Ljava/lang/String;)Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildChildUrlInfos(Ljava/util/List;)[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iput-object v0, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 310
    .line 311
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .line 313
    .line 314
    :goto_0
    monitor-exit p0

    .line 315
    return-void

    .line 316
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    throw p1
.end method

.method private callInfoListener(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheInfoListener:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;->onCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private declared-synchronized callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mStatusListenerHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x2af9

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mStatusListenerHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callInfoListener(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method private declared-synchronized cancelCache()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->cancel()V

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/16 v0, -0x3ec

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method private convertType(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Master:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Unknown:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Media:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 16
    .line 17
    return-object p1
.end method

.method private initPreloadCmdHandler()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "playlistCacher"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacherThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$2;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacherThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$2;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheHandler:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method private initStatusListenerHandler()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$1;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$1;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mStatusListenerHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method private declared-synchronized preLoadNextUrl()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->TAG:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z
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
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mParentCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mChildUrls:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mChildUrls:Ljava/util/List;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    const/16 v0, -0xfa0

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->buildBaseCacheInfo(I)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->callbackCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "<"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, "> preLoadNextUrl = "

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/utils/UriUtils;->parseURLParam(Ljava/lang/String;)Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v3, "k"

    .line 113
    .line 114
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    const-string v3, "k"

    .line 121
    .line 122
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    const/4 v2, 0x0

    .line 130
    :goto_0
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    new-instance v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 135
    .line 136
    invoke-direct {v3}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;-><init>()V

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x2

    .line 140
    iput v4, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->version:I

    .line 141
    .line 142
    iput-object v2, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 145
    .line 146
    sget-object v6, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 147
    .line 148
    if-ne v5, v6, :cond_5

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    iput v4, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    iput v4, v3, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 155
    .line 156
    :goto_1
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 157
    .line 158
    invoke-virtual {v4, v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->writeTsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileType:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 162
    .line 163
    sget-object v4, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 164
    .line 165
    if-ne v3, v4, :cond_8

    .line 166
    .line 167
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 168
    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->release()V

    .line 172
    .line 173
    .line 174
    :cond_7
    new-instance v3, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 175
    .line 176
    iget-object v4, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v3, v4, v1, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V

    .line 179
    .line 180
    .line 181
    iput-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 182
    .line 183
    new-instance v4, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;

    .line 184
    .line 185
    invoke-direct {v4, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v4}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->setCacheInfoListener(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;)V

    .line 189
    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "<"

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v4, ">start sub m3u8  filekey = "

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v2, " , proxyUrl = "

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    .line 231
    .line 232
    :cond_8
    monitor-exit p0

    .line 233
    return-void

    .line 234
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    throw v0
.end method

.method private selectMasterPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mUri:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    move v4, v2

    .line 34
    :goto_1
    if-ge v4, v3, :cond_2

    .line 35
    .line 36
    aget-object v5, v1, v4

    .line 37
    .line 38
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mUri:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    array-length v3, v1

    .line 51
    move v4, v2

    .line 52
    :goto_2
    if-ge v4, v3, :cond_3

    .line 53
    .line 54
    aget-object v5, v1, v4

    .line 55
    .line 56
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mUri:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    array-length v3, v1

    .line 69
    move v4, v2

    .line 70
    :goto_3
    if-ge v4, v3, :cond_4

    .line 71
    .line 72
    aget-object v5, v1, v4

    .line 73
    .line 74
    iget-object v5, v5, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;->mUri:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    iget-object p1, p1, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    array-length v1, p1

    .line 87
    :goto_4
    if-ge v2, v1, :cond_5

    .line 88
    .line 89
    aget-object v3, p1, v2

    .line 90
    .line 91
    iget-object v3, v3, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mUri:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    new-instance p1, Ljava/util/LinkedList;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object v4, v1

    .line 119
    check-cast v4, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8RawKey:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileKey:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mId:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCustomHeaderEncoded:Ljava/lang/String;

    .line 128
    .line 129
    const/4 v7, 0x1

    .line 130
    invoke-static/range {v2 .. v7}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->generateProxyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_6
    return-object p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z
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
    iput-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheHandler:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x2712

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->cancelCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacherThread:Landroid/os/HandlerThread;

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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->release()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8FileLoader:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->release()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mMasterChildUrlCacher:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :cond_2
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
    throw v0
.end method

.method public setBoolOption(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mBoolOptions:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCacheInfoListener(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheInfoListener:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setIntOption(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mIntOptions:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCanceled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "<"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ">cache has been canceled"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheHandler:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x2710

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mCacheHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->mM3u8MdlProxyUrl:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->cacheM3u8File(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
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
