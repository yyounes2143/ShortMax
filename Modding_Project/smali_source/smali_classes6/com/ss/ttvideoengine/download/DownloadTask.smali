.class public Lcom/ss/ttvideoengine/download/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;,
        Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_TASK_STATE_CANCELING:I = 0x4

.field public static final DOWNLOAD_TASK_STATE_COMPLETED:I = 0x5

.field public static final DOWNLOAD_TASK_STATE_INIT:I = 0x0

.field public static final DOWNLOAD_TASK_STATE_RUNNING:I = 0x2

.field public static final DOWNLOAD_TASK_STATE_SUSPENDED:I = 0x3

.field public static final DOWNLOAD_TASK_STATE_WAITING:I = 0x1

.field public static final MESSAGE_CANCEL:I = 0x6f

.field public static final MESSAGE_FINISHED:I = 0x71

.field public static final MESSAGE_RECEIVE_ERROR:I = 0x70

.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.DownloadTask"


# instance fields
.field protected authToken:Ljava/lang/String;

.field protected availableLocalFilePath:Ljava/lang/String;

.field protected bytesExpectedToReceive:J

.field protected bytesExpectedToReceiveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected bytesReceived:J

.field protected bytesReceivedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected canceled:Z

.field protected customDir:Ljava/lang/String;

.field protected downloader:Lcom/ss/ttvideoengine/download/Downloader;

.field protected encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

.field protected error:Lcom/ss/ttvideoengine/utils/Error;

.field protected finished:Z

.field protected mFirstResumeCallback:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

.field protected mediaKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field protected taskDescription:Ljava/lang/String;

.field protected taskIdentifier:J

.field protected taskType:Ljava/lang/String;

.field protected updateBytesReceived:J

.field protected updateTs:J

.field protected usingUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskDescription:Ljava/lang/String;

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 10
    .line 11
    const-string v1, "base_task"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskType:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    iput v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->availableLocalFilePath:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->usingUrls:Ljava/util/HashMap;

    .line 31
    .line 32
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 35
    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->authToken:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 41
    .line 42
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->updateTs:J

    .line 43
    .line 44
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->updateBytesReceived:J

    .line 45
    .line 46
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceiveMap:Ljava/util/HashMap;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    sget-object v1, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->NONE:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v0, Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;->Unknown:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 61
    .line 62
    return-void
.end method

.method public static putToMap(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putToMap(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 0

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static putToMap(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method _shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget p1, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 6
    .line 7
    const/16 v1, -0x270b

    .line 8
    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, -0x26dc

    .line 12
    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, -0x26dd

    .line 16
    .line 17
    if-eq p1, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, -0x26db

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, -0x26da

    .line 24
    .line 25
    if-ne p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_2
    :goto_0
    return v0
.end method

.method assignWithJson(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "id"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 11
    .line 12
    const-string v0, "des"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskDescription:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "res_size"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->updateBytesReceived:J

    .line 29
    .line 30
    const-string v0, "content_size"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 37
    .line 38
    const-string/jumbo v0, "state"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 46
    .line 47
    const-string v0, "error"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->errorWithJson(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/utils/Error;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 58
    .line 59
    const-string v0, "file_path"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->availableLocalFilePath:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "custom_dir"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 74
    .line 75
    const-string v0, "media_keys"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-lez v2, :cond_2

    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 96
    .line 97
    move v2, v1

    .line 98
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ge v2, v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_1

    .line 113
    .line 114
    iget-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 128
    .line 129
    :cond_3
    const-string v0, "finish"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 136
    .line 137
    const-string v0, "cancel"

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 144
    .line 145
    const-string/jumbo v0, "task_type"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskType:Ljava/lang/String;

    .line 153
    .line 154
    const-string/jumbo v0, "vid"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 162
    .line 163
    const-string v0, "auth_token"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->authToken:Ljava/lang/String;

    .line 170
    .line 171
    const-string v0, "encrypt_version"

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/4 v1, 0x1

    .line 178
    if-ne v0, v1, :cond_4

    .line 179
    .line 180
    sget-object v0, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->MDL_VERSION_1:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_4
    sget-object v0, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->NONE:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 188
    .line 189
    :goto_1
    const-string v0, "bytes_rec_map"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_5

    .line 196
    .line 197
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-lez v1, :cond_5

    .line 202
    .line 203
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_5

    .line 212
    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Ljava/lang/String;

    .line 218
    .line 219
    iget-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 222
    .line 223
    .line 224
    move-result-wide v4

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_5
    const-string v0, "bytes_expect_map"

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    if-eqz p1, :cond_6

    .line 240
    .line 241
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-lez v0, :cond_6

    .line 246
    .line 247
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_6

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Ljava/lang/String;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceiveMap:Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_6
    return-void
.end method

.method downloadEnd()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 3
    .line 4
    const/4 v1, 0x5

    .line 5
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, p0, v0}, Lcom/ss/ttvideoengine/download/Downloader;->completeError(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public getAvailableLocalFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->availableLocalFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBytesExpectedToReceive()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getBytesReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getError()Lcom/ss/ttvideoengine/utils/Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaType()Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mMediaType:Lcom/ss/ttvideoengine/download/DownloadTask$MediaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public getTaskDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected initHandle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/download/DownloadTask$2;

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p0, v1, p0}, Lcom/ss/ttvideoengine/download/DownloadTask$2;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;Landroid/os/Looper;Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method public invalidateAndCancel()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[downloader] did call invalidateAndCancel, key = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "TTVideoEngine.DownloadTask"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "[downloader] task did canceled, self.taskIdentifier = "

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->initHandle()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 74
    .line 75
    new-instance v1, Lcom/ss/ttvideoengine/download/DownloadTask$1;

    .line 76
    .line 77
    invoke-direct {v1, p0, v0}, Lcom/ss/ttvideoengine/download/DownloadTask$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method jsonObject()Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->mapInfo()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method mapInfo()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "id"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    const-string v1, "des"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskDescription:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "res_size"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    const-string v1, "content_size"

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "state"

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const-string v2, "error"

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/utils/Error;->toMap()Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const-string v1, "file_path"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->availableLocalFilePath:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "media_keys"

    .line 63
    .line 64
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "use_urls"

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->usingUrls:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "finish"

    .line 78
    .line 79
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    const-string v1, "cancel"

    .line 85
    .line 86
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "task_type"

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskType:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v1, "vid"

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "auth_token"

    .line 108
    .line 109
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->authToken:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "bytes_rec_map"

    .line 115
    .line 116
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    .line 120
    .line 121
    const-string v1, "bytes_expect_map"

    .line 122
    .line 123
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceiveMap:Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->encryptVersion:Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;->getVersion()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const-string v2, "encrypt_version"

    .line 135
    .line 136
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_1

    .line 146
    .line 147
    const-string v1, "custom_dir"

    .line 148
    .line 149
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    return-object v0
.end method

.method receiveError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->initHandle()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x70

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->initHandle()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->updateTs:J

    .line 15
    .line 16
    return-void
.end method

.method public setCustomDir(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->customDir:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public setDownloader(Lcom/ss/ttvideoengine/download/Downloader;)V
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 2
    .line 3
    return-void
.end method

.method public setState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "[downloader] state did changed. state = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " key = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "TTVideoEngine.DownloadTask"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/Downloader;->getListener()Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "[downloader] state did changed. and notify downloader state = "

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/Downloader;->getListener()Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 84
    .line 85
    invoke-interface {v0, v1, p0, p1}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderStateChanged(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public setTaskDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method setupBaseFiled()V
    .locals 5

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 4
    .line 5
    const-string v0, "base_task"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskType:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    iput-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 20
    .line 21
    iput-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->availableLocalFilePath:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v4, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->usingUrls:Ljava/util/HashMap;

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 33
    .line 34
    iput-object v3, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->updateTs:J

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceiveMap:Ljava/util/HashMap;

    .line 51
    .line 52
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "   id = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", state = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->state:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",  videoId "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
