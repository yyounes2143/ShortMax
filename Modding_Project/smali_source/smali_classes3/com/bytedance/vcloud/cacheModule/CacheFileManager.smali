.class public Lcom/bytedance/vcloud/cacheModule/CacheFileManager;
.super Ljava/lang/Object;
.source "CacheFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;,
        Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;,
        Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;,
        Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheFileManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native _getAllHlsCacheSizeWithoutTs()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _getAllHlsCacheSizeWithoutTs(I)J
.end method

.method private static native _getHlsCacheSizeWithoutTs(Ljava/lang/String;)J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _getHlsCacheSizeWithoutTs(Ljava/lang/String;I)J
.end method

.method private static native _getTsCacheInfos(Ljava/lang/String;)[Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _getTsCacheInfos(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private static native _isCacheKey(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _isCacheKey(Ljava/lang/String;I)Z
.end method

.method private static native _removeAllHlsCacheWithoutTs()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _removeAllHlsCacheWithoutTs(I)V
.end method

.method private static native _removeHlsCacheWithoutTs(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _removeHlsCacheWithoutTs(Ljava/lang/String;I)V
.end method

.method public static clearAllPlaylistCache(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_removeAllHlsCacheWithoutTs(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 41
    .line 42
    if-ne p0, v0, :cond_0

    .line 43
    .line 44
    :try_start_1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_removeAllHlsCacheWithoutTs()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception p0

    .line 49
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    return-void
.end method

.method private static filterSameKey([Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    .line 15
    aget-object v4, p0, v3

    .line 16
    .line 17
    iget-object v5, v4, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    iget-object v5, v4, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-array v0, v2, [Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, [Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 44
    .line 45
    return-object p0
.end method

.method public static getAllPlaylistCacheSize(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_getAllHlsCacheSizeWithoutTs(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 42
    .line 43
    if-ne p0, v0, :cond_0

    .line 44
    .line 45
    :try_start_1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_getAllHlsCacheSizeWithoutTs()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    const-wide/16 v0, 0x0

    .line 76
    .line 77
    :goto_0
    return-wide v0
.end method

.method public static getCacheSize(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J
    .locals 9

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getHlsCacheSizeWithoutTs(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    :goto_0
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getTsCacheInfos(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->filterSameKey([Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_1
    array-length v4, p0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_1
    if-ge v5, v4, :cond_4

    .line 28
    .line 29
    aget-object v6, p0, v5

    .line 30
    .line 31
    invoke-static {v6}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getKeyType(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v8, 0x1

    .line 36
    if-ne v7, v8, :cond_2

    .line 37
    .line 38
    iget-object v6, v6, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v6, p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getCacheSize(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    cmp-long v8, v6, v2

    .line 45
    .line 46
    if-lez v8, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    iget-object v6, v6, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v7, v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getCacheSize(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    cmp-long v8, v6, v2

    .line 60
    .line 61
    if-lez v8, :cond_3

    .line 62
    .line 63
    :goto_2
    add-long/2addr v0, v6

    .line 64
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    return-wide v0
.end method

.method public static getHlsCacheSizeWithoutTs(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)J
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_getHlsCacheSizeWithoutTs(Ljava/lang/String;I)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 42
    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_getHlsCacheSizeWithoutTs(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    const-wide/16 p0, 0x0

    .line 76
    .line 77
    :goto_0
    return-wide p0
.end method

.method private static getKeyType(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->version:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    iget p0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 13
    .line 14
    return p0
.end method

.method public static getTsCacheInfos(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_getTsCacheInfos(Ljava/lang/String;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "api-native not match: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 44
    .line 45
    if-ne p1, v0, :cond_0

    .line 46
    .line 47
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_getTsCacheInfos(Ljava/lang/String;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    move-object v0, p0

    .line 52
    check-cast v0, [Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p0

    .line 56
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0
.end method

.method public static isCacheKey(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_isCacheKey(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "api-native not match: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 42
    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_isCacheKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    const/4 p0, 0x0

    .line 76
    :goto_0
    return p0
.end method

.method public static removeFileCache(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getTsCacheInfos(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->filterSameKey([Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)[Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->removeHlsCacheWithoutTs(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V

    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    array-length p0, v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, p0, :cond_2

    .line 18
    .line 19
    aget-object v2, v0, v1

    .line 20
    .line 21
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->getKeyType(Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    iget-object v2, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, p1}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->removeFileCache(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v2, v2, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->removeFileCache(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method private static removeHlsCacheWithoutTs(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0, v0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_removeHlsCacheWithoutTs(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "api-native not match: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;->Preload:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$CacheFileType;

    .line 41
    .line 42
    if-ne p1, v0, :cond_0

    .line 43
    .line 44
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->_removeHlsCacheWithoutTs(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception p0

    .line 49
    sget-object p1, Lcom/bytedance/vcloud/cacheModule/CacheFileManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    return-void
.end method
