.class Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;
.super Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;
.source "TTVideoEngineSourceRefreshStrategy.java"

# interfaces
.implements Lcom/ss/mediakit/fetcher/AVMDLNewFetcherMakerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy$EngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheHit(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public cacheUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->get(Ljava/lang/String;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->cacheUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;
    .locals 0

    .line 1
    invoke-static {p4}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->get(Ljava/lang/String;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->createFetcher()Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
