.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;
.super Ljava/lang/Object;
.source "SourceRefreshFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
        "Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

.field final synthetic val$playlistUrlResultInfo:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->val$playlistUrlResultInfo:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 6
    .line 7
    invoke-static {v1, v0, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$200(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;)V
    .locals 5
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    iget-object v1, p1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->playlistInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->findChildUrlInfoInPlaylist(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    move-result-object v0

    const/16 v1, -0x2716

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    iget-object v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    iget-object p1, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    const-string v2, "findChildUrlInfoInPlaylist return null"

    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$200(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->urlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    invoke-static {v2}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    iget-object v2, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    iget-object p1, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findChildUrlInfoInPlaylist playlistChildUrlInfo.urlInfo is not valid! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->urlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v2, p1, v1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$200(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->urlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->val$playlistUrlResultInfo:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    iget-wide v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    invoke-direct {v1, v0, v2, v3}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;-><init>(Ljava/lang/String;J)V

    .line 10
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    iget-boolean p1, p1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->fromCache:Z

    invoke-direct {v0, v1, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;Z)V

    .line 11
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;

    iget-object v1, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    iget-object p1, p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    invoke-static {v1, p1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$300(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;

    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;->onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;)V

    return-void
.end method
