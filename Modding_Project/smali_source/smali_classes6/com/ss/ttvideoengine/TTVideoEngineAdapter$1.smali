.class final Lcom/ss/ttvideoengine/TTVideoEngineAdapter$1;
.super Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;
.source "TTVideoEngineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->setPreloadChooseUrlCallback(Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onSelectPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;
    .locals 4
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
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->convert(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->access$000()Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;->chooseUrls(Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback$TTVideoEnginePreloadUrlInfo;

    .line 42
    .line 43
    new-instance v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v3, v1, Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback$TTVideoEnginePreloadUrlInfo;->preloadSize:I

    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iput-object v3, v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mPreloadSize:Ljava/lang/Integer;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback$TTVideoEnginePreloadUrlInfo;->uri:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v1, v2, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$PreloadUrlInfo;->mUrl:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v0

    .line 65
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method
