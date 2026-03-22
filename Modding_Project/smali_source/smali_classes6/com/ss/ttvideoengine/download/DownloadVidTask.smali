.class public Lcom/ss/ttvideoengine/download/DownloadVidTask;
.super Lcom/ss/ttvideoengine/download/DownloadTask;
.source "DownloadVidTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.DownloadVidTask"


# instance fields
.field private apiString:Ljava/lang/String;

.field private apiVersion:I

.field private authString:Ljava/lang/String;

.field private baseDashEnable:Z

.field private boeEnable:Z

.field private codecType:Ljava/lang/String;

.field private currentResolution:Lcom/ss/ttvideoengine/Resolution;

.field private fallbackAPI:Ljava/lang/String;

.field private fetchListener:Lcom/ss/ttvideoengine/download/IDownloadVidTaskListener;

.field private fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

.field private httpsEnable:Z

.field private keySeed:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private netClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolution:Lcom/ss/ttvideoengine/Resolution;

.field private resolutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private retryCount:I

.field private videoModel:Lcom/ss/ttvideoengine/model/VideoModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    const-string v1, "h264"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->httpsEnable:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->boeEnable:Z

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->videoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 21
    .line 22
    iput v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->authString:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fallbackAPI:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->keySeed:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->netClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetchListener:Lcom/ss/ttvideoengine/download/IDownloadVidTaskListener;

    .line 43
    .line 44
    iput v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->retryCount:I

    .line 45
    .line 46
    return-void
.end method

.method private _downloadUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;)Z
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object v2, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    move-object v2, v0

    .line 19
    :goto_0
    const/16 v7, -0x270c

    .line 20
    .line 21
    const-string v1, " filehash = "

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    array-length v3, v0

    .line 27
    const/4 v9, 0x1

    .line 28
    if-lt v3, v9, :cond_4

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "[downloader] download urlinfo videoId = "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/Resolution;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v1, "TTVideoEngine.DownloadVidTask"

    .line 80
    .line 81
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->usingUrls:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->getVersion()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    iget-object v6, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 111
    .line 112
    move-object v4, v0

    .line 113
    invoke-virtual/range {v1 .. v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->downloadUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    aget-object v0, v0, v8

    .line 118
    .line 119
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->isM3u8(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    sget-object v1, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->M3u8:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    sget-object v1, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->Other:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 129
    .line 130
    :goto_1
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 131
    .line 132
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->startDownload(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_3

    .line 141
    .line 142
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "resume download fail. url = "

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, " dataloader state is "

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->isRunning()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string v1, "kTTVideoErrorDomainDownload"

    .line 178
    .line 179
    invoke-direct {v0, v1, v7, v8, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 183
    .line 184
    .line 185
    return v8

    .line 186
    :cond_3
    return v9

    .line 187
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v0, "error info  urls or filehash is null: apiString = "

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, " authString = "

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->authString:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 223
    .line 224
    const-string v1, "kTTVideoErrorDomainFetchingInfo"

    .line 225
    .line 226
    invoke-direct {v0, v1, v7, v8, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 230
    .line 231
    .line 232
    return v8
.end method

.method private _downloadWithVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->usingUrls:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoModel;->getDynamicType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    const-string v1, "segment_base"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 33
    .line 34
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 35
    .line 36
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_downloadUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 58
    .line 59
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 60
    .line 61
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_downloadUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_downloadUrlInfo(Lcom/ss/ttvideoengine/model/VideoInfo;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 105
    .line 106
    :cond_5
    :goto_0
    return-void
.end method

.method private _fetchVideoModel()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->authString:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 7
    .line 8
    new-instance v1, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->netClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 18
    .line 19
    new-instance v2, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;

    .line 20
    .line 21
    invoke-direct {v2, p0, p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;-><init>(Lcom/ss/ttvideoengine/download/DownloadVidTask;Lcom/ss/ttvideoengine/download/DownloadVidTask;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setListener(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setResolutionMap(Ljava/util/HashMap;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setVideoID(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseVideoModelCache(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fallbackAPI:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/JniUtils;->getDecodeMethod()I

    .line 57
    .line 58
    .line 59
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move v2, v1

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fallbackAPI:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "%s&method=%d"

    .line 73
    .line 74
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 79
    .line 80
    iget-boolean v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->boeEnable:Z

    .line 81
    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->buildBoeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 89
    .line 90
    :cond_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->BuildHttpsApi(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->keySeed:Ljava/lang/String;

    .line 99
    .line 100
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v3, "[downloader] api string from fallback api:%s ,keySeed = %s"

    .line 105
    .line 106
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "TTVideoEngine.DownloadVidTask"

    .line 111
    .line 112
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 116
    .line 117
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseFallbakApi(Ljava/lang/Boolean;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->keySeed:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->fetchInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_1
    const/4 v1, 0x4

    .line 133
    iput v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 134
    .line 135
    new-instance v2, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->authToken:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {v2, v3, v4}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->getAPIString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 149
    .line 150
    invoke-virtual {v3, v2, v0, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->fetchInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/download/DownloadVidTask;Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_downloadWithVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/download/DownloadVidTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/download/DownloadVidTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->authString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/download/DownloadVidTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 2
    .line 3
    return p0
.end method

.method static taskItem()Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setupBaseFiled()V

    return-object v0
.end method

.method static taskItem(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 22
    const-string v1, "TTVideoEngine.DownloadVidTask"

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 23
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    const-string p0, "[downloader] videoId is invalid"

    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem()Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object v0

    .line 27
    iput-object v2, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 29
    iput-object p1, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 30
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getCodecs()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "h266"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    iput-object v1, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getCodecs()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "h265"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    iput-object v1, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 34
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getDynamicType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 35
    const-string v1, "segment_base"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    :cond_4
    const/16 p1, 0x6a

    .line 36
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefBool(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->httpsEnable:Z

    return-object v0

    .line 37
    :cond_5
    :goto_1
    const-string p0, "[downloader] videoModel or resolution is invalid"

    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZ)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p0

    return-object p0
.end method

.method static taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 7

    .line 7
    sget-object v6, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->NONE:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p0

    return-object p0
.end method

.method static taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskItem videoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codecType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", baseDashEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", httpsEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",authToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTVideoEngine.DownloadVidTask"

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 10
    const-string p0, "[downloader] videoId is invalid"

    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    .line 11
    const-string p0, "[downloader]  resolution is invalid"

    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 12
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem()Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object v0

    .line 13
    iput-object p0, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 14
    iput-object p1, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 16
    const-string p0, "h264"

    iput-object p0, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_2
    iput-object p2, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 18
    :goto_0
    iput-boolean p3, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 19
    iput-boolean p4, v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->httpsEnable:Z

    .line 20
    iput-object p5, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->authToken:Ljava/lang/String;

    .line 21
    iput-object p6, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    return-object v0
.end method

.method static taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;ZZZ)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    const-string p2, "h265"

    goto :goto_0

    .line 4
    :cond_0
    const-string p2, "h264"

    .line 5
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZ)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method _shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->_shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->retryCount:I

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_1
    return v0
.end method

.method assignWithJson(Lorg/json/JSONObject;)V
    .locals 5

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
    const-string v0, "codec_type"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "base_dash"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 25
    .line 26
    const-string v0, "https"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->httpsEnable:Z

    .line 33
    .line 34
    const-string v0, "boe"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->boeEnable:Z

    .line 41
    .line 42
    const-string v0, "resolution"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/ss/ttvideoengine/Resolution;->forString(Ljava/lang/String;)Lcom/ss/ttvideoengine/Resolution;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 53
    .line 54
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 55
    .line 56
    if-ne v0, v1, :cond_0

    .line 57
    .line 58
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 61
    .line 62
    :cond_0
    const-string v0, "param"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-lez v1, :cond_1

    .line 75
    .line 76
    new-instance v1, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "resolution_map"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-lez v1, :cond_2

    .line 126
    .line 127
    new-instance v1, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_2

    .line 143
    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Ljava/lang/String;

    .line 149
    .line 150
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v4}, Lcom/ss/ttvideoengine/Resolution;->forString(Ljava/lang/String;)Lcom/ss/ttvideoengine/Resolution;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    const-string v0, "api_version"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iput v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 171
    .line 172
    const-string v0, "curr_resolution"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/ss/ttvideoengine/Resolution;->forString(Ljava/lang/String;)Lcom/ss/ttvideoengine/Resolution;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 183
    .line 184
    const-string/jumbo v0, "video_model"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_3

    .line 192
    .line 193
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-lez v0, :cond_3

    .line 198
    .line 199
    new-instance v0, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 200
    .line 201
    invoke-direct {v0}, Lcom/ss/ttvideoengine/model/VideoModel;-><init>()V

    .line 202
    .line 203
    .line 204
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoModel;->extractFields(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catchall_0
    :try_start_1
    const-string p1, "TTVideoEngine.DownloadVidTask"

    .line 212
    .line 213
    const-string v1, "[downloader] ssignWithJson fail."

    .line 214
    .line 215
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .line 217
    .line 218
    const/4 p1, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :catchall_1
    move-exception p1

    .line 224
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_3
    :goto_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-class v3, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v3, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    if-nez v1, :cond_5

    .line 63
    .line 64
    iget-object v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    move v1, v0

    .line 71
    :goto_0
    if-eqz v1, :cond_6

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 74
    .line 75
    iget-boolean v3, p1, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 76
    .line 77
    if-ne v1, v3, :cond_6

    .line 78
    .line 79
    move v1, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    move v1, v0

    .line 82
    :goto_1
    if-eqz v1, :cond_7

    .line 83
    .line 84
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, p1, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    move v1, v2

    .line 95
    goto :goto_2

    .line 96
    :cond_7
    move v1, v0

    .line 97
    :goto_2
    if-eqz v1, :cond_8

    .line 98
    .line 99
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 102
    .line 103
    if-ne v1, p1, :cond_8

    .line 104
    .line 105
    move v0, v2

    .line 106
    :cond_8
    return v0
.end method

.method public getApiVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvailableLocalFilePath()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getSpadea()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getAvailableLocalFilePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getCurrentResolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFetchListener()Lcom/ss/ttvideoengine/download/IDownloadVidTaskListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetchListener:Lcom/ss/ttvideoengine/download/IDownloadVidTaskListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetClient()Lcom/ss/ttvideoengine/net/TTVNetClient;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->netClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolutionMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->videoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public invalidateAndCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->invalidateAndCancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public isBaseDashEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isBoeEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->boeEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHttpsEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->httpsEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public ish265Enable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "h265"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public ish266Enable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "h266"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method jsonObject()Lorg/json/JSONObject;
    .locals 5

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
    const-string v1, "codec_type"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->codecType:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "base_dash"

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->baseDashEnable:Z

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string v1, "https"

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->httpsEnable:Z

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const-string v1, "boe"

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->boeEnable:Z

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/ss/ttvideoengine/Resolution;->toString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "resolution"

    .line 50
    .line 51
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "param"

    .line 55
    .line 56
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-lez v1, :cond_1

    .line 70
    .line 71
    new-instance v1, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lcom/ss/ttvideoengine/Resolution;

    .line 105
    .line 106
    invoke-static {v4}, Lcom/ss/ttvideoengine/Resolution;->toString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    const-string v2, "resolution_map"

    .line 115
    .line 116
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    const-string v1, "api_version"

    .line 120
    .line 121
    iget v2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 122
    .line 123
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->currentResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/ss/ttvideoengine/Resolution;->toString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "curr_resolution"

    .line 133
    .line 134
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lorg/json/JSONObject;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    const-string/jumbo v0, "video_model"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getJsonInfo()Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    :cond_2
    return-object v1

    .line 163
    :catch_0
    :try_start_1
    const-string v0, "TTVideoEngine.DownloadVidTask"

    .line 164
    .line 165
    const-string v2, "[downloader] jsonObject fail."

    .line 166
    .line 167
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    :catchall_0
    return-object v1
.end method

.method receiveError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->retryCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->retryCount:I

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_fetchVideoModel()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[downloader] did call resume, videoId = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TTVideoEngine.DownloadVidTask"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "[downloader] task did canceled"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x2

    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    const-string v0, "[downloader] state is running"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->resume()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->shouldResume(Lcom/ss/ttvideoengine/download/DownloadTask;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->retryCount:I

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->resume(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_downloadWithVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-direct {p0}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->_fetchVideoModel()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public setApiVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public setBoeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->boeEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFetchListener(Lcom/ss/ttvideoengine/download/IDownloadVidTaskListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fetchListener:Lcom/ss/ttvideoengine/download/IDownloadVidTaskListener;

    .line 2
    .line 3
    return-void
.end method

.method public setNetClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->netClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->params:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setResolutionMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolutionMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->videoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 2
    .line 3
    sget-object v0, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->Unknown:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 6
    .line 7
    const/16 v0, 0xd9

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0xda

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "TTVideoEngine.DownloadVidTask"

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->fallbackAPI:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "[downloader] set fallbackapi "

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->keySeed:Ljava/lang/String;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "[downloader] set keyseed "

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->keySeed:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method setupBaseFiled()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setupBaseFiled()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->retryCount:I

    .line 6
    .line 7
    const-string/jumbo v1, "vid_task"

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskType:Ljava/lang/String;

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->apiVersion:I

    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 17
    .line 18
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
    const-string v1, "[downloader] did call suspend, videoId = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TTVideoEngine.DownloadVidTask"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "[downloader] task did canceled"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq v0, v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x5

    .line 53
    if-ne v0, v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/download/Downloader;->suspended(Lcom/ss/ttvideoengine/download/DownloadTask;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "[downloader] suspend task, task in waiting, taskIdentifier: "

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    invoke-super {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->suspend()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-lez v0, :cond_3

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ge v0, v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->suspendedDownload(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    return-void

    .line 128
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "[downloader] not need suspend, state = "

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
