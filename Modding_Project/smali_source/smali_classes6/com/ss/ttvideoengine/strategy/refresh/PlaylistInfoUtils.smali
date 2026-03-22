.class public final Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;
.super Ljava/lang/Object;
.source "PlaylistInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;,
        Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dumpPlaylistCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Ljava/lang/String;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget v4, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 20
    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorMsg:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    move v6, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    array-length v6, v6

    .line 35
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v1, "%s %s %s %d %s %s %s"

    .line 57
    .line 58
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method static dumpUrlInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v1, "%s %s %s"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method static findChildUrlInfoInPlaylist(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_0
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 9
    .line 10
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Unknown:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Master:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v1, v2, :cond_7

    .line 19
    .line 20
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    move v4, v3

    .line 26
    :goto_0
    if-ge v4, v2, :cond_3

    .line 27
    .line 28
    aget-object v5, v1, v4

    .line 29
    .line 30
    invoke-static {v5}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    iget-object v6, v5, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v7, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    iget-object v6, v5, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v7, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    new-instance p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, p1, v0, v5, v1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;-><init>(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Z)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v1, :cond_9

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    iget-object v4, v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 89
    .line 90
    if-nez v4, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    array-length v5, v4

    .line 94
    move v6, v3

    .line 95
    :goto_2
    if-ge v6, v5, :cond_4

    .line 96
    .line 97
    aget-object v7, v4, v6

    .line 98
    .line 99
    invoke-static {v7}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_6

    .line 104
    .line 105
    iget-object v8, v7, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v9, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    iget-object v8, v7, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v9, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_6

    .line 124
    .line 125
    new-instance p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    .line 126
    .line 127
    invoke-direct {p0, p1, v2, v7, v3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;-><init>(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Z)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Media:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 135
    .line 136
    if-ne v1, v2, :cond_9

    .line 137
    .line 138
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 139
    .line 140
    array-length v2, v1

    .line 141
    move v4, v3

    .line 142
    :goto_3
    if-ge v4, v2, :cond_9

    .line 143
    .line 144
    aget-object v5, v1, v4

    .line 145
    .line 146
    invoke-static {v5}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_8

    .line 151
    .line 152
    iget-object v6, v5, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v7, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    iget-object v6, v5, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v7, p0, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_8

    .line 171
    .line 172
    new-instance p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    .line 173
    .line 174
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;-><init>(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Z)V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_9
    :goto_4
    return-object v0
.end method

.method public static isAllChildPlaylistDownload(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 6
    .line 7
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Media:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    return v3

    .line 13
    :cond_1
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Master:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 30
    .line 31
    array-length p0, p0

    .line 32
    if-ne v1, p0, :cond_2

    .line 33
    .line 34
    move v0, v3

    .line 35
    :cond_2
    return v0
.end method

.method static isMasterPlaylistParentOfChildPlaylist(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 8
    .line 9
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Master:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    return v0

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    move v2, v0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_5

    .line 24
    .line 25
    aget-object v3, p0, v2

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    return v0

    .line 30
    :cond_3
    iget-object v4, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 31
    .line 32
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoEquals(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    :goto_1
    return v0
.end method

.method static isUrlInfoEquals(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    :goto_0
    return p0
.end method

.method static isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method
