.class public Lcom/ss/ttvideoengine/download/DownloadURLTask;
.super Lcom/ss/ttvideoengine/download/DownloadTask;
.source "DownloadURLTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.DownloadURLTask"


# instance fields
.field private key:Ljava/lang/String;

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method static taskItem()Lcom/ss/ttvideoengine/download/DownloadURLTask;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/download/DownloadURLTask;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->setupBaseFiled()V

    return-object v0
.end method

.method static taskItem(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadURLTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ss/ttvideoengine/download/DownloadURLTask;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->NONE:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    invoke-static {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->taskItem(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;)Lcom/ss/ttvideoengine/download/DownloadURLTask;

    move-result-object p0

    return-object p0
.end method

.method static taskItem(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;)Lcom/ss/ttvideoengine/download/DownloadURLTask;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;",
            ")",
            "Lcom/ss/ttvideoengine/download/DownloadURLTask;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->taskItem()Lcom/ss/ttvideoengine/download/DownloadURLTask;

    move-result-object v0

    .line 6
    iput-object p0, v0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->updateUrls(Ljava/util/ArrayList;)V

    .line 8
    iput-object p2, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 9
    iget-object p1, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    iput-object p3, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    return-object v0

    .line 12
    :cond_2
    :goto_0
    const-string p0, "TTVideoEngine.DownloadURLTask"

    const-string p1, "[downloader] key or urls is invalid."

    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method _shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method assignWithJson(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "base_json"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->assignWithJson(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "key"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v0, "urls"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ge v1, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->updateUrls(Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-class v2, Lcom/ss/ttvideoengine/download/DownloadURLTask;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    check-cast p1, Lcom/ss/ttvideoengine/download/DownloadURLTask;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method jsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "base_json"

    .line 7
    .line 8
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->mapInfo()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "key"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "urls"

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public resume()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[downloader] did call resume, key = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "TTVideoEngine.DownloadURLTask"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "[downloader] task did canceled"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x2

    .line 44
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    const-string v0, "[downloader] state is running"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->resume()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->shouldResume(Lcom/ss/ttvideoengine/download/DownloadTask;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "[downloader] not should resume task = "

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->usingUrls:Ljava/util/HashMap;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget-object v6, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v7, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    new-array v2, v2, [Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v8, v0

    .line 128
    check-cast v8, [Ljava/lang/String;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->getVersion()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    iget-object v10, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual/range {v5 .. v10}, Lcom/ss/ttvideoengine/DataLoaderHelper;->downloadUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4, v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->startDownload(Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_3

    .line 164
    .line 165
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "resume download fail. url = "

    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, " dataload state is "

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->isRunning()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v2, "kTTVideoErrorDomainDownload"

    .line 201
    .line 202
    const/16 v4, -0x270c

    .line 203
    .line 204
    invoke-direct {v1, v2, v4, v3, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v3, "[downloader] resume a task. key = "

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, " downloader url is "

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 242
    .line 243
    if-eqz v0, :cond_4

    .line 244
    .line 245
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->resume(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 246
    .line 247
    .line 248
    :cond_4
    return-void
.end method

.method setupBaseFiled()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setupBaseFiled()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->updateUrls(Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->key:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "url_task"

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskType:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public suspend()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[downloader] did call suspend, key = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "TTVideoEngine.DownloadURLTask"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "[downloader] task did canceled"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x3

    .line 44
    if-eq v0, v2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x5

    .line 57
    if-ne v0, v2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->suspended(Lcom/ss/ttvideoengine/download/DownloadTask;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "[downloader] suspend task, task in waiting, taskIdentifier: "

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 79
    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->suspend()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-lez v0, :cond_3

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-ge v0, v1, :cond_3

    .line 112
    .line 113
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->suspendedDownload(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->tryNextWaitingTask(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void

    .line 139
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v2, "[downloader] not need suspend, state = "

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public updateUrls(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadURLTask;->urls:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->M3u8:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->Other:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 28
    .line 29
    :goto_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object p1, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->Unknown:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 35
    .line 36
    :goto_1
    return-void
.end method
