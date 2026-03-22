.class public Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;
.super Ljava/lang/Object;
.source "PlaylistLoaderItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;,
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlaylistOption;
    }
.end annotation


# static fields
.field public static BoolOption_TryNextEvenIfError:I

.field public static IntOption_TimeoutMs:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativeHandler:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PlaylistDownloaderItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->IntOption_TimeoutMs:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sput v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->BoolOption_TryNextEvenIfError:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 7
    .line 8
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_createLoader(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "api-native not match: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void
.end method

.method private native _cancel(J)V
.end method

.method private native _createLoader(Ljava/lang/String;)J
.end method

.method private native _getBestStreamIndex(J)Ljava/lang/Object;
.end method

.method private native _getExpireTime(J)J
.end method

.method private native _getMasterPlaylistInfo(J)Ljava/lang/Object;
.end method

.method private native _getPlaylistType(J)I
.end method

.method private native _getStrOption(JI)Ljava/lang/String;
.end method

.method private native _getSubUrls(J)Ljava/lang/Object;
.end method

.method private native _getSubUrls(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native _preload(J)I
.end method

.method private native _releaseLoader(J)V
.end method

.method private native _setIntOption(JII)V
.end method

.method private native _writeHlsNodeInfo(JLjava/lang/Object;)V
.end method

.method private native _writeTsNodeInfo(JLjava/lang/Object;)V
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_cancel(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public getBestStreamIndex()Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getBestStreamIndex(J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    check-cast v0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;

    .line 43
    .line 44
    return-object v0
.end method

.method public getExpireTime()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getExpireTime(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-wide v2
.end method

.method public getMasterPlaylist()Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getMasterPlaylistInfo(J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "api-native not match: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0
.end method

.method public getStrOption(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlaylistOption;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getStrOption(JI)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public getSubUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->getSubUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubUrls(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getSubUrls(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api-native not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getSubUrls(J)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    :goto_0
    if-nez p1, :cond_0

    return-object v3

    .line 6
    :cond_0
    check-cast p1, Ljava/util/LinkedList;

    return-object p1

    :cond_1
    return-object v3
.end method

.method public getType()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_getPlaylistType(J)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    if-eq v0, v1, :cond_0

    .line 55
    .line 56
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Event:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Vod:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Live:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->MasterPlaylist:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_4
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_5
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;->Unknown:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem$PlayListType;

    .line 75
    .line 76
    return-object v0
.end method

.method public preload()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_preload(J)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v0, -0x1

    .line 42
    :goto_0
    return v0
.end method

.method public release()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_releaseLoader(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 41
    .line 42
    return-void
.end method

.method public setIntOption(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_setIntOption(JII)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    sget-object p2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public writeHlsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_writeHlsNodeInfo(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public writeTsNodeInfo(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->nativeHandler:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->_writeTsNodeInfo(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderItem;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method
