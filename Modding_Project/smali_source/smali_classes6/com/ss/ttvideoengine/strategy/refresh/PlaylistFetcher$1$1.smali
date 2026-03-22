.class Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;
.super Ljava/lang/Object;
.source "PlaylistFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->onCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

.field final synthetic val$playlistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->val$playlistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->val$playlistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 7
    .line 8
    iget v2, v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 17
    .line 18
    invoke-static {v3, v2, v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$200(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->buildPlaylistHierarchy(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->getPlaylistCacheInfo()Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isAllChildPlaylistDownload(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->val$playlistRequest:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;->put(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v3, v2, v1, v4}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$300(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;->this$1:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "notifyProgress "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpPlaylistCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v1
.end method
