.class public Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;
.super Ljava/lang/Object;
.source "CacheModuleInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;
    }
.end annotation


# static fields
.field public static final HIT_TYPE_CACHE:I = 0x1

.field public static final HIT_TYPE_DOWNLOAD:I = 0x2

.field public static final HIT_TYPE_UNKNOWN:I = 0x0

.field static final INFO_TYPE_CACHE:I = 0x2

.field static final INFO_TYPE_HIT:I = 0x1

.field static final INFO_TYPE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parseHitInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;-><init>(Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$1;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "fileKey"

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;->fileKey:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "hitType"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;->hitType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object p1

    .line 32
    :catch_0
    return-object v0
.end method


# virtual methods
.method public cacheHit(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public cacheUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method onInfoListener(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;->parseHitInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p2, p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;->fileKey:Ljava/lang/String;

    .line 11
    .line 12
    iget p1, p1, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener$HitInfo;->hitType:I

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;->cacheHit(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-static {p2}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->parsePlaylistCacheInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheModuleInfoListener;->cacheUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
