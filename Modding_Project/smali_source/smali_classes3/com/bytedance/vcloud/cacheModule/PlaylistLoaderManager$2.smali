.class Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$2;
.super Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;
.source "PlaylistLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->preloadSource(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSelectPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager$2;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;->access$400(Lcom/bytedance/vcloud/cacheModule/PlaylistLoaderManager;)Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$OnMasterPlaylistListener;->onSelectPreloadUrls(Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
