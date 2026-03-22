.class final Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;
.super Ljava/lang/Object;
.source "PlaylistCache.java"


# static fields
.field private static final sGlobalCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/LruCache;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;->sGlobalCache:Landroid/util/LruCache;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;->sGlobalCache:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 8
    .line 9
    return-object p0
.end method

.method public static isExpired(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistExpireTimeS:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const-wide/16 v4, 0x3e8

    .line 8
    .line 9
    div-long/2addr v2, v4

    .line 10
    cmp-long p0, v0, v2

    .line 11
    .line 12
    if-gez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static put(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistCache;->sGlobalCache:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
