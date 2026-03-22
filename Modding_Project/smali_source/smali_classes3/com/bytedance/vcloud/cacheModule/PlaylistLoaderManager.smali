.class public Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;
.super Ljava/lang/Object;
.source "PlaylistLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$PlaylistLoaderMangerInner;
    }
.end annotation


# static fields
.field private static final PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

.field private static final TAG:Ljava/lang/String; = "PlaylistLoaderManager"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

.field private final mPreloaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 2
    .line 3
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mListeners:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$PlaylistLoaderMangerInner;->access$000()Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mListeners:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cancel : fileKey = "

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
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isMyKey(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "cancel : playlistLoader = "

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->cancel()V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method

.method public cancelAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->cancel()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v1
.end method

.method public clearAllPlaylistCache()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->clearAllPlaylistCache(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAllCacheSize()J
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getAllPlaylistCacheSize(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCacheSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getCacheSize(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getOnMasterPlaylistListener()Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCacheKey(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->isCacheKey(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "isCacheKey : fileKey = "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ":"

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method public onPreloadStatusChanged(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPreloadStatusChanged : fileKey = "

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
    const-string v2, ", status = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isMyKey(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    invoke-virtual {v2, p1, p2, p3}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->processStatusChange(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$LoadStatus;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    monitor-exit v0

    .line 79
    return p1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    monitor-exit v0

    .line 83
    const/4 p1, 0x0

    .line 84
    return p1

    .line 85
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p1
.end method

.method public preloadSource(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "preloadSource : url = "

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
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 39
    .line 40
    invoke-direct {v1, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$1;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->setLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$2;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$2;-><init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->setOnMasterPlaylistListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->preload()I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public removeFileCache(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mPreloaders:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;->isMyKey(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_2
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->PRELOAD_FILE:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->removeFileCache(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public removeLoaderListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mListeners:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnMasterPlaylistListener(Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->mMasterPlaylistListener:Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 2
    .line 3
    return-void
.end method
