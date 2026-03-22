.class public Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;
.super Ljava/lang/Object;
.source "TTVideoEngineSourceRefreshStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;
    }
.end annotation


# static fields
.field private static final ENGINE_LISTENER:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;

.field private static final STRATEGY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static sUrlCache:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

.field private static sUrlFetcherFactory:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;


# instance fields
.field private final mEngineId:Ljava/lang/String;

.field private final mEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogcatTag:Ljava/lang/String;

.field private mLogger:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

.field private final mMDLURLFetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

.field private volatile mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->STRATEGY_MAP:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$1;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->ENGINE_LISTENER:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mEngineId:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->logcatTag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ".SourceRefresh"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogcatTag:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    new-instance p2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 44
    .line 45
    invoke-direct {p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogger:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 49
    .line 50
    new-instance p2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 51
    .line 52
    invoke-direct {p2, v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 56
    .line 57
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->put(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private dumpLog()Lorg/json/JSONObject;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogger:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->toJson()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0

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

.method static declared-synchronized get(Ljava/lang/String;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->STRATEGY_MAP:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method

.method public static declared-synchronized getUrlCache()Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->sUrlCache:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;->DEFAULT:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    .line 9
    .line 10
    sput-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->sUrlCache:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->sUrlCache:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public static declared-synchronized getUrlFetcherFactory()Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->sUrlFetcherFactory:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static isEnable()Z
    .locals 2

    .line 1
    const-string v0, "enable_source_refresh_strategy"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public static isEnableM3u8Opt()Z
    .locals 2

    .line 1
    const-string v0, "enable_source_refresh_strategy_m3u8_opt"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method static declared-synchronized put(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->STRATEGY_MAP:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p0
.end method

.method static declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->STRATEGY_MAP:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p0
.end method

.method public static declared-synchronized setUrlCache(Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->sUrlCache:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setUrlFetcherFactory(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->sUrlFetcherFactory:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->ENGINE_LISTENER:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->setNewFetcherMaker(Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->setFetcherMaker(Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->setCacheModuleInfoListener(Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->setNewFetcherMaker(Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherBridge;->setFetcherMaker(Lcom/ss/mediakit/fetcher/AVMDLFetcherMakerInterface;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->setCacheModuleInfoListener(Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method


# virtual methods
.method cacheUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->isEnableM3u8Opt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->buildPlaylistHierarchy(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method closeFetchers()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;->close()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void

    .line 53
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v1
.end method

.method createFetcher()Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isReleased()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mMDLURLFetchers:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method findChildUrlInfoInPlaylistHierarchy(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->isEnableM3u8Opt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->findChildUrlInfoInPlaylistHierarchy(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method getEngine()Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    return-object v0
.end method

.method getEngineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mEngineId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method isReleased()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mReleased:Z

    .line 2
    .line 3
    return v0
.end method

.method logcatTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogcatTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogger:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public recordLog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->closeFetchers()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->dumpLog()Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logcatTag()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x2

    .line 37
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setSourceRefreshLog(Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->reset()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mReleased:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mEngineId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->remove(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->closeFetchers()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogger:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 11
    .line 12
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mLogcatTag:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method
