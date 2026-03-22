.class Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;
.super Ljava/lang/Object;
.source "PlaylistFetcher.java"

# interfaces
.implements Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->fetch(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

.field final synthetic this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

.field final synthetic val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

.field final synthetic val$playlistRequest:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->val$playlistRequest:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p2, p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->mPlaylistHolder:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public onCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "onCacheInfo playlistCacheInfo == null "

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->id:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$100(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getEngineId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "onCacheInfo engineId miss match!"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1$1;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$1;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 51
    .line 52
    .line 53
    return-void
.end method
