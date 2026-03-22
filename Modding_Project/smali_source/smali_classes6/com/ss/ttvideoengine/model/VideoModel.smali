.class public Lcom/ss/ttvideoengine/model/VideoModel;
.super Ljava/lang/Object;
.source "VideoModel.java"

# interfaces
.implements Lcom/ss/ttvideoengine/model/IVideoModel;


# static fields
.field public static final IS_LIVE_SOURCE:I = 0x0

.field public static final IS_VOD_SOURCE:I = 0x1

.field public static final VIDEO_MODEL_VER1:I = 0x1

.field public static final VIDEO_MODEL_VER2:I = 0x2

.field public static final VIDEO_MODEL_VER3:I = 0x3

.field public static final VIDEO_MODEL_VER4:I = 0x4


# instance fields
.field public liveVideoRef:Lcom/ss/ttvideoengine/model/LiveVideoRef;

.field private mJsonInfo:Lorg/json/JSONObject;

.field private mKeyseed:Ljava/lang/String;

.field private mResolutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceType:I

.field private mURLEncrypted:Z

.field private mVersion:I

.field public videoAdRefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoAdRef;",
            ">;"
        }
    .end annotation
.end field

.field public videoRef:Lcom/ss/ttvideoengine/model/VideoRef;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->videoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->videoAdRefList:Ljava/util/List;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->liveVideoRef:Lcom/ss/ttvideoengine/model/LiveVideoRef;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mSourceType:I

    .line 15
    .line 16
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mResolutionMap:Ljava/util/HashMap;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mJsonInfo:Lorg/json/JSONObject;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mURLEncrypted:Z

    .line 24
    .line 25
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mKeyseed:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public allVideoURLs(Lcom/ss/ttvideoengine/Resolution;)[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->allVideoURLs(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public allVideoURLs(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/model/VideoRef;->allVideoURLs(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->liveVideoRef:Lcom/ss/ttvideoengine/model/LiveVideoRef;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/LiveVideoRef;->getLiveVideoInfo()Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/ss/ttvideoengine/model/LiveVideoInfo;->mURLs:[Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public extractFields(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mJsonInfo:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    const-string v0, "VideoModel"

    .line 17
    .line 18
    const-string v1, "generate mJsonInfo error"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const-string/jumbo v0, "video_info"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "data"

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    iput v2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 42
    .line 43
    new-instance v2, Lcom/ss/ttvideoengine/model/VideoRef;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/ss/ttvideoengine/model/VideoRef;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v3, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoRef;->setVersion(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/16 v3, 0xdb

    .line 58
    .line 59
    iget-boolean v4, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mURLEncrypted:Z

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/ss/ttvideoengine/model/VideoRef;->setValue(IZ)V

    .line 62
    .line 63
    .line 64
    const/16 v3, 0xda

    .line 65
    .line 66
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mKeyseed:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/ss/ttvideoengine/model/VideoRef;->setValueStr(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/model/VideoRef;->extractFields(Lorg/json/JSONObject;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->videoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 75
    .line 76
    iput-object v2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 77
    .line 78
    :cond_1
    const-string/jumbo v0, "video_ad_list"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v2, 0x0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-lez v3, :cond_2

    .line 93
    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v3, p0, Lcom/ss/ttvideoengine/model/VideoModel;->videoAdRefList:Ljava/util/List;

    .line 100
    .line 101
    move v3, v2

    .line 102
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-ge v3, v4, :cond_2

    .line 107
    .line 108
    :try_start_1
    new-instance v4, Lcom/ss/ttvideoengine/model/VideoAdRef;

    .line 109
    .line 110
    invoke-direct {v4}, Lcom/ss/ttvideoengine/model/VideoAdRef;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Lcom/ss/ttvideoengine/model/VideoAdRef;->extractFields(Lorg/json/JSONObject;)V

    .line 118
    .line 119
    .line 120
    iget-object v5, p0, Lcom/ss/ttvideoengine/model/VideoModel;->videoAdRefList:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    .line 125
    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const-string v0, "live_info"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    iput v2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mSourceType:I

    .line 137
    .line 138
    new-instance v2, Lcom/ss/ttvideoengine/model/LiveVideoRef;

    .line 139
    .line 140
    invoke-direct {v2}, Lcom/ss/ttvideoengine/model/LiveVideoRef;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->liveVideoRef:Lcom/ss/ttvideoengine/model/LiveVideoRef;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->liveVideoRef:Lcom/ss/ttvideoengine/model/LiveVideoRef;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/model/LiveVideoRef;->extractFields(Lorg/json/JSONObject;)V

    .line 152
    .line 153
    .line 154
    :cond_3
    const-string v0, "PlayInfoList"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-gtz v0, :cond_5

    .line 167
    .line 168
    :cond_4
    const-string v0, "VideoID"

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    const-string v0, "Vid"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_7

    .line 191
    .line 192
    :cond_5
    const-string v0, "Version"

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    const/4 v1, 0x4

    .line 199
    if-ne v0, v1, :cond_6

    .line 200
    .line 201
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_6
    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 206
    .line 207
    :goto_2
    new-instance v0, Lcom/ss/ttvideoengine/model/VideoRef;

    .line 208
    .line 209
    invoke-direct {v0}, Lcom/ss/ttvideoengine/model/VideoRef;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 213
    .line 214
    iget v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->setVersion(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 220
    .line 221
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->extractFields(Lorg/json/JSONObject;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mResolutionMap:Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoModel;->setUpResolution(Ljava/util/HashMap;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public fromMediaInfoJsonObject(Lorg/json/JSONObject;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method public fromMediaInfoJsonString(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method public getCodec()Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    const-string v1, "h264"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mVersion:I

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v2, v3, :cond_5

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getCodecs()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    array-length v2, v0

    .line 19
    move v3, v4

    .line 20
    :goto_0
    const-string v5, "h265"

    .line 21
    .line 22
    if-ge v4, v2, :cond_3

    .line 23
    .line 24
    aget-object v6, v0, v4

    .line 25
    .line 26
    const-string v7, "h266"

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_1

    .line 33
    .line 34
    return-object v7

    .line 35
    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    if-eqz v3, :cond_4

    .line 46
    .line 47
    return-object v5

    .line 48
    :cond_4
    return-object v1

    .line 49
    :cond_5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfoList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_9

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_6

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 67
    .line 68
    if-nez v0, :cond_7

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_7
    iget-object v0, v0, Lcom/ss/ttvideoengine/model/VideoInfo;->mCodecType:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_8

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_8
    return-object v0

    .line 81
    :cond_9
    :goto_1
    return-object v1
.end method

.method public getCodecs()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getCodecs()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public getDnsInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getDnsInfo()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getDynamicType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xd7

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueStr(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    return-object v0
.end method

.method public getFormats()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ss/ttvideoengine/model/IVideoModel$Format;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    const/16 v2, 0xce

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 29
    .line 30
    const/16 v2, 0xd0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->HLS:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 49
    .line 50
    const/16 v2, 0xcd

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 63
    .line 64
    const/16 v2, 0xcf

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    :cond_2
    sget-object v1, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 77
    .line 78
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getJsonInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mJsonInfo:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaInfo()Lorg/json/JSONObject;
    .locals 7

    .line 1
    const/16 v0, 0xd3

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefInt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfoList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->toMediaInfo()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object v3, v3, Lcom/ss/ttvideoengine/model/VideoRef;->mMaskInfo:Lcom/ss/ttvideoengine/model/BarrageMaskInfo;

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->getMediaInfo()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    const-string v3, "format"

    .line 75
    .line 76
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v0, "vid"

    .line 80
    .line 81
    .line 82
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v0, "bid"

    .line 86
    .line 87
    const/16 v1, 0xf6

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v0, "category"

    .line 97
    .line 98
    const/16 v1, 0xe8

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefInt(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v0, "duration"

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v0, "infos"

    .line 121
    .line 122
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    const-string v1, "pallas_vid_labels"

    .line 130
    .line 131
    const/16 v2, 0xed

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueStr(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    .line 141
    .line 142
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    const/4 v0, 0x0

    .line 150
    return-object v0
.end method

.method public getOriginalAudioInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/16 v2, 0xea

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueList(I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 42
    .line 43
    const/16 v3, 0x2a

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-object v1
.end method

.method public getPreloadInterval(Lcom/ss/ttvideoengine/Resolution;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/16 v0, 0xd

    .line 3
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result p1

    return p1
.end method

.method public getPreloadInterval(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0xd

    .line 6
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSource()Lcom/ss/ttvideoengine/model/IVideoModel$Source;
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Source;->None:Lcom/ss/ttvideoengine/model/IVideoModel$Source;

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mSourceType:I

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Source;->VOD:Lcom/ss/ttvideoengine/model/IVideoModel$Source;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Source;->LIVE:Lcom/ss/ttvideoengine/model/IVideoModel$Source;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mSourceType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpadea()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfoList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 48
    return-object v0
.end method

.method public getSubInfoList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/SubInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/model/VideoRef;->mSubInfoList:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getSupportInfoId(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ne v3, p1, :cond_2

    .line 46
    .line 47
    iget v2, v2, Lcom/ss/ttvideoengine/model/VideoInfo;->mInfoId:I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSupportQualityInfos()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getSupportQualityInfos()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Lcom/ss/ttvideoengine/Resolution;

    .line 12
    .line 13
    return-object v0
.end method

.method public getSupportSubtitleLangs()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getSupportSubtitleLangs()[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getSupportedTTSAudioInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/16 v2, 0xe7

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueList(I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 42
    .line 43
    const/16 v3, 0x2a

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-object v1
.end method

.method public getThumbInfoList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoThumbInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/model/VideoRef;->mThumbInfoList:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getVType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xd3

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueStr(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "mp4"

    .line 13
    .line 14
    return-object v0
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-nez p4, :cond_0

    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getAllQualityInfos()[Ljava/lang/String;

    move-result-object p4

    .line 19
    array-length v1, p4

    const/4 v2, 0x0

    if-lez v1, :cond_5

    if-eqz p3, :cond_5

    const/16 v1, 0x20

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    array-length v3, p4

    add-int/lit8 v3, v3, -0x1

    if-nez v0, :cond_5

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    move v5, v2

    .line 23
    :goto_0
    array-length v6, p4

    if-ge v5, v6, :cond_2

    .line 24
    aget-object v6, p4, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v4, v3

    :cond_3
    if-nez v0, :cond_5

    .line 25
    aget-object v0, p4, v4

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 28
    :cond_4
    array-length v5, p4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    array-length v5, p4

    rem-int/2addr v4, v5

    if-ne v4, v3, :cond_3

    .line 29
    :cond_5
    invoke-static {}, Lcom/ss/ttvideoengine/Resolution;->getAllResolutions()[Lcom/ss/ttvideoengine/Resolution;

    move-result-object p3

    .line 30
    array-length p4, p3

    if-gtz p4, :cond_6

    return-object v0

    .line 31
    :cond_6
    array-length p4, p3

    add-int/lit8 p4, p4, -0x1

    if-eqz p1, :cond_8

    .line 32
    :goto_2
    array-length v1, p3

    if-ge v2, v1, :cond_8

    .line 33
    aget-object v1, p3, v2

    .line 34
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    move-result v3

    if-ne v1, v3, :cond_7

    move p4, v2

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    move p1, p4

    :cond_9
    if-nez v0, :cond_b

    .line 35
    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, p2, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 37
    :cond_a
    array-length v1, p3

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    array-length v1, p3

    rem-int/2addr p1, v1

    if-ne p1, p4, :cond_9

    :cond_b
    :goto_4
    return-object v0
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;IZ)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 13
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueInt(I)I

    move-result v0

    .line 14
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    .line 10
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueInt(I)I

    move-result v0

    .line 11
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getVideoInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoInfoByInfoId(I)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfoList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 37
    .line 38
    iget v3, v2, Lcom/ss/ttvideoengine/model/VideoInfo;->mInfoId:I

    .line 39
    .line 40
    if-ne v3, p1, :cond_2

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getVideoInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getVideoInfoList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getVideoRef()Lcom/ss/ttvideoengine/model/VideoRef;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoRefBool(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public getVideoRefFloat(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public getVideoRefInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueInt(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public getVideoRefLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueLong(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getVideoRefStr(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueStr(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, ""

    .line 11
    .line 12
    return-object p1
.end method

.method public getVideoSeekTS()Lcom/ss/ttvideoengine/model/VideoSeekTs;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/model/VideoRef;->mSeekTs:Lcom/ss/ttvideoengine/model/VideoSeekTs;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getVideoStyle()Lcom/ss/ttvideoengine/model/VideoStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/model/VideoRef;->mVideoStyle:Lcom/ss/ttvideoengine/model/VideoStyle;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->liveVideoRef:Lcom/ss/ttvideoengine/model/LiveVideoRef;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/VideoModel$1;->$SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 26
    .line 27
    const/16 v0, 0xcd

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 39
    .line 40
    const/16 v0, 0xce

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 52
    .line 53
    const/16 v0, 0xd0

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    :goto_0
    return v1
.end method

.method public initWithJson(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "mb_refactor"

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "data"

    .line 21
    .line 22
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo v1, "video_info"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoModel;->extractFields(Lorg/json/JSONObject;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public isDashSource()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xcd

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isHlsSource()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xd0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isLiveSource()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getSource()Lcom/ss/ttvideoengine/model/IVideoModel$Source;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/ss/ttvideoengine/model/IVideoModel$Source;->LIVE:Lcom/ss/ttvideoengine/model/IVideoModel$Source;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isMp4Source()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xce

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoRef;->getValueBool(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isSupportBash()Z
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getDynamicType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    const-string v3, "segment_base"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const/16 v0, 0xde

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefBool(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getSpadea()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    return v2

    .line 70
    :cond_2
    return v1
.end method

.method public isSupportHLSSeamlessSwitch()Z
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->HLS:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0xde

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefBool(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1
    return v1
.end method

.method public resolutionToString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->resolutionToString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/Resolution;->toString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public setUpResolution(Ljava/util/HashMap;)V
    .locals 1
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mResolutionMap:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/model/VideoRef;->setUpResolution(Ljava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVideoRef(Lcom/ss/ttvideoengine/model/VideoRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mResolutionMap:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoModel;->setUpResolution(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVideoRefBool(IZ)V
    .locals 1

    .line 1
    const/16 v0, 0xdb

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mURLEncrypted:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setVideoRefStr(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;->vodVideoRef:Lcom/ss/ttvideoengine/model/VideoRef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/model/VideoRef;->setValueStr(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/16 v0, 0xda

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iput-object p2, p0, Lcom/ss/ttvideoengine/model/VideoModel;->mKeyseed:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public toMediaInfoJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getMediaInfo()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method
