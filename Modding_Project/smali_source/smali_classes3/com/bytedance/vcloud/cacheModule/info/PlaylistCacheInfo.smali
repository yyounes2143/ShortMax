.class public Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
.super Ljava/lang/Object;
.source "PlaylistCacheInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;,
        Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaylistCacheInfo"


# instance fields
.field public childCacheInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field public childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public playlistExpireTimeS:J

.field public playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

.field public playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method private static parseChildUrlInfos(Ljava/lang/String;)[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    new-array v1, p0, [Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->parseUrlInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v1

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static parsePlaylistCacheInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "parsePlaylistCacheInfo : "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "id"

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->id:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "errorCode"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iput v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 51
    .line 52
    const-string v2, "errorMsg"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorMsg:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "playlistExpireTimeS"

    .line 61
    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    iput-wide v4, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistExpireTimeS:J

    .line 69
    .line 70
    const-string v2, "playlistType"

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_0

    .line 77
    .line 78
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Unknown:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 79
    .line 80
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v3, 0x1

    .line 84
    if-ne v2, v3, :cond_1

    .line 85
    .line 86
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Master:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 87
    .line 88
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sget-object v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;->Media:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistType:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$PlaylistType;

    .line 94
    .line 95
    :goto_0
    const-string v2, "playlistUrlInfo"

    .line 96
    .line 97
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->parseUrlInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 106
    .line 107
    const-string v2, "childUrlInfos"

    .line 108
    .line 109
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->parseChildUrlInfos(Ljava/lang/String;)[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->childUrlInfos:[Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    return-object p0

    .line 120
    :catch_0
    const/4 p0, 0x0

    .line 121
    return-object p0
.end method

.method private static parseUrlInfo(Ljava/lang/String;)Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "fileKey"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "rawKey"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->rawKey:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "cdnUrl"

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->cdnUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :catch_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
