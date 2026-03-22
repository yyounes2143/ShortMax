.class public Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;
.super Ljava/lang/Object;
.source "PlaylistInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistCacheInfoHolder"
.end annotation


# instance fields
.field private final mLogcatTag:Ljava/lang/String;

.field private mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mLogcatTag:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private isMasterPlaylistContainsChildPlaylist(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoEquals(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public buildPlaylistHierarchy(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isUrlInfoValid(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 14
    .line 15
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Master:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mLogcatTag:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "buildPlaylistHierarchy master "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpPlaylistCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Media:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 53
    .line 54
    if-ne v0, v2, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v2, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 61
    .line 62
    if-ne v2, v1, :cond_3

    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->isMasterPlaylistParentOfChildPlaylist(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 82
    .line 83
    :cond_2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->isMasterPlaylistContainsChildPlaylist(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mLogcatTag:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "buildPlaylistHierarchy master add "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpPlaylistCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childCacheInfos:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    if-nez v0, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mLogcatTag:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "buildPlaylistHierarchy media "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->dumpPlaylistCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 152
    .line 153
    :cond_4
    :goto_0
    return-void
.end method

.method findChildUrlInfoInPlaylistHierarchy(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils;->findChildUrlInfoInPlaylist(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistChildUrlInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getPlaylistCacheInfo()Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistInfoUtils$PlaylistCacheInfoHolder;->mPlaylistCacheInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 2
    .line 3
    return-object v0
.end method
