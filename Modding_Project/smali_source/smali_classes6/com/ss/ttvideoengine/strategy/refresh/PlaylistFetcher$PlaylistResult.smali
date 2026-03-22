.class Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;
.super Ljava/lang/Object;
.source "PlaylistFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistResult"
.end annotation


# instance fields
.field final fromCache:Z

.field final playlistInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->playlistInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->fromCache:Z

    .line 7
    .line 8
    return-void
.end method

.method static dump(Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->fromCache:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const-string v1, "hintCache "

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v1, "hintNet"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->playlistInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpPlaylistCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
