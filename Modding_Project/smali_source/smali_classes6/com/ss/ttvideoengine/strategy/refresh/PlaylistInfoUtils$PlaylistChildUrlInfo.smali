.class Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;
.super Ljava/lang/Object;
.source "PlaylistInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistChildUrlInfo"
.end annotation


# instance fields
.field final childPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final isUrlInfoPlaylist:Z

.field final parentPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final urlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Z)V
    .locals 0
    .param p1    # Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->parentPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->childPlaylist:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->urlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;->isUrlInfoPlaylist:Z

    .line 11
    .line 12
    return-void
.end method
