.class public Lcom/ss/ttvideoengine/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/download/Downloader$TaskThread;,
        Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;
    }
.end annotation


# static fields
.field private static final MESSAGE_COMPLETE:I = 0x3

.field private static final MESSAGE_FAIL:I = 0x1

.field private static final MESSAGE_LOADTASKS:I = 0x4

.field private static final MESSAGE_OPEN_DB_FAIL:I = 0x5

.field private static final MESSAGE_PROGRESS:I = 0x0

.field private static final MESSAGE_SUSPEND:I = 0x2

.field private static final MIN_FREE_SIZE:J = 0x40000000L

.field private static final PRIVATE_MESSAGE_LOADALLTASK:I = 0xa

.field private static final PRIVATE_MESSAGE_SAVETASK:I = 0xb

.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.Downloader"

.field private static final dataBaseName:Ljava/lang/String; = "TTVideoEngine_download_database_v01"

.field private static final ourInstance:Lcom/ss/ttvideoengine/download/Downloader;

.field private static final tasksIndex:Ljava/lang/String; = "TTVideoEngine_download_index_v01"


# instance fields
.field private allTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

.field private indexArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private limitFreeDiskSize:J

.field private listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

.field private loadData:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private maxDownloadOperationCount:J

.field private maxTaskId:J

.field private readAllTask:Z

.field private runingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private taskThread:Lcom/ss/ttvideoengine/download/Downloader$TaskThread;

.field private temLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private waitingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/download/Downloader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/download/Downloader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/download/Downloader;->ourInstance:Lcom/ss/ttvideoengine/download/Downloader;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 10
    .line 11
    const-wide/32 v3, 0x40000000

    .line 12
    .line 13
    .line 14
    iput-wide v3, p0, Lcom/ss/ttvideoengine/download/Downloader;->limitFreeDiskSize:J

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->temLoadedTasks:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->indexArray:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->readAllTask:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->loadData:Z

    .line 32
    .line 33
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 38
    .line 39
    new-instance v0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->taskThread:Lcom/ss/ttvideoengine/download/Downloader$TaskThread;

    .line 45
    .line 46
    const-wide/16 v5, -0x1

    .line 47
    .line 48
    iput-wide v5, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->indexArray:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 77
    .line 78
    const-wide/16 v5, 0x1

    .line 79
    .line 80
    iput-wide v5, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 81
    .line 82
    iput-wide v3, p0, Lcom/ss/ttvideoengine/download/Downloader;->limitFreeDiskSize:J

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->readAllTask:Z

    .line 85
    .line 86
    return-void
.end method

.method private _loadAllTasks()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "base_json"

    .line 4
    .line 5
    const-string v0, "index"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v4, v1, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v5, "TTVideoEngine_download_index_v01"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, ""

    .line 22
    .line 23
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v1, v4}, Lcom/ss/ttvideoengine/download/Downloader;->stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v7, v1, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 32
    .line 33
    invoke-virtual {v7, v0}, Lcom/ss/ttvideoengine/database/KVDBManager;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Lcom/ss/ttvideoengine/download/Downloader;->stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    if-nez v7, :cond_0

    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_0
    const-string v8, "TTVideoEngine.Downloader"

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_e

    .line 59
    .line 60
    :cond_1
    :goto_0
    const-string v0, "[downloader] index maybe save fail."

    .line 61
    .line 62
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    if-nez v7, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    if-nez v5, :cond_3

    .line 71
    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    :goto_1
    move-object v5, v7

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-le v0, v4, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v4, "[downloader] index array:"

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move v4, v6

    .line 112
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    if-ge v4, v0, :cond_16

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    iget-object v9, v1, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 126
    .line 127
    invoke-virtual {v9, v0}, Lcom/ss/ttvideoengine/database/KVDBManager;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    new-instance v10, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    if-eqz v9, :cond_6

    .line 141
    .line 142
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const-string/jumbo v11, "task_type"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    const-string/jumbo v11, "url_task"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-eqz v11, :cond_5

    .line 161
    .line 162
    invoke-static {}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->taskItem()Lcom/ss/ttvideoengine/download/DownloadURLTask;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    goto :goto_4

    .line 167
    :catchall_1
    move-exception v0

    .line 168
    move/from16 v16, v4

    .line 169
    .line 170
    move-object v15, v5

    .line 171
    move v4, v6

    .line 172
    goto/16 :goto_c

    .line 173
    .line 174
    :cond_5
    const-string/jumbo v11, "vid_task"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_6

    .line 182
    .line 183
    invoke-static {}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem()Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    :cond_6
    :goto_4
    if-nez v7, :cond_8

    .line 188
    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v10, "[downloader] load task fail. taskIdentifier = "

    .line 195
    .line 196
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    .line 208
    .line 209
    if-eqz v7, :cond_7

    .line 210
    .line 211
    :try_start_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->setDownloader(Lcom/ss/ttvideoengine/download/Downloader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .line 216
    .line 217
    :cond_7
    move/from16 v16, v4

    .line 218
    .line 219
    move-object v15, v5

    .line 220
    move v4, v6

    .line 221
    goto/16 :goto_d

    .line 222
    .line 223
    :cond_8
    :try_start_4
    invoke-virtual {v7, v10}, Lcom/ss/ttvideoengine/download/DownloadTask;->assignWithJson(Lorg/json/JSONObject;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 227
    .line 228
    const-wide/16 v9, 0x0

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-lez v0, :cond_b

    .line 237
    .line 238
    move v0, v6

    .line 239
    move-wide v11, v9

    .line 240
    move-wide v13, v11

    .line 241
    :goto_5
    iget-object v15, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    if-ge v0, v15, :cond_a

    .line 248
    .line 249
    iget-object v15, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    check-cast v15, Ljava/lang/String;

    .line 256
    .line 257
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v6, v15}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 265
    if-eqz v6, :cond_9

    .line 266
    .line 267
    move/from16 v16, v4

    .line 268
    .line 269
    move-object v15, v5

    .line 270
    :try_start_6
    iget-wide v4, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 271
    .line 272
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    add-long/2addr v11, v4

    .line 277
    iget-wide v4, v6, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 278
    .line 279
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    add-long/2addr v13, v4

    .line 284
    goto :goto_7

    .line 285
    :catchall_2
    move-exception v0

    .line 286
    :goto_6
    const/4 v4, 0x0

    .line 287
    goto/16 :goto_c

    .line 288
    .line 289
    :cond_9
    move/from16 v16, v4

    .line 290
    .line 291
    move-object v15, v5

    .line 292
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 293
    .line 294
    move-object v5, v15

    .line 295
    move/from16 v4, v16

    .line 296
    .line 297
    const/4 v6, 0x0

    .line 298
    goto :goto_5

    .line 299
    :catchall_3
    move-exception v0

    .line 300
    move/from16 v16, v4

    .line 301
    .line 302
    move-object v15, v5

    .line 303
    goto :goto_6

    .line 304
    :cond_a
    move/from16 v16, v4

    .line 305
    .line 306
    move-object v15, v5

    .line 307
    goto :goto_8

    .line 308
    :cond_b
    move/from16 v16, v4

    .line 309
    .line 310
    move-object v15, v5

    .line 311
    move-wide v11, v9

    .line 312
    move-wide v13, v11

    .line 313
    :goto_8
    iput-wide v11, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 314
    .line 315
    iput-wide v13, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 316
    .line 317
    invoke-virtual {v7}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    const/4 v4, 0x5

    .line 322
    const/4 v5, 0x3

    .line 323
    if-ne v0, v4, :cond_f

    .line 324
    .line 325
    iget-wide v11, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 326
    .line 327
    cmp-long v0, v11, v9

    .line 328
    .line 329
    if-gtz v0, :cond_d

    .line 330
    .line 331
    iget-wide v13, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 332
    .line 333
    cmp-long v0, v13, v9

    .line 334
    .line 335
    if-lez v0, :cond_c

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_c
    const/4 v6, 0x0

    .line 339
    invoke-virtual {v7, v6}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_d
    :goto_9
    iget-wide v13, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 344
    .line 345
    cmp-long v0, v11, v13

    .line 346
    .line 347
    if-nez v0, :cond_e

    .line 348
    .line 349
    invoke-virtual {v7, v4}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_e
    invoke-virtual {v7, v5}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 354
    .line 355
    .line 356
    :cond_f
    :goto_a
    iget-boolean v0, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 357
    .line 358
    if-eqz v0, :cond_10

    .line 359
    .line 360
    iget-object v0, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 361
    .line 362
    if-eqz v0, :cond_10

    .line 363
    .line 364
    invoke-virtual {v7, v4}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 365
    .line 366
    .line 367
    :cond_10
    invoke-virtual {v7}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    const/4 v4, 0x2

    .line 372
    if-ne v0, v4, :cond_11

    .line 373
    .line 374
    invoke-virtual {v7, v5}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 375
    .line 376
    .line 377
    :cond_11
    invoke-virtual {v7}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    const/4 v4, 0x1

    .line 382
    if-ne v0, v4, :cond_12

    .line 383
    .line 384
    iget-wide v11, v7, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 385
    .line 386
    cmp-long v0, v11, v9

    .line 387
    .line 388
    if-lez v0, :cond_13

    .line 389
    .line 390
    invoke-virtual {v7, v5}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 391
    .line 392
    .line 393
    :cond_12
    const/4 v4, 0x0

    .line 394
    goto :goto_b

    .line 395
    :cond_13
    const/4 v4, 0x0

    .line 396
    :try_start_7
    invoke-virtual {v7, v4}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 397
    .line 398
    .line 399
    goto :goto_b

    .line 400
    :catchall_4
    move-exception v0

    .line 401
    goto :goto_c

    .line 402
    :goto_b
    invoke-virtual {v7}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    const/4 v6, 0x4

    .line 407
    if-ne v0, v6, :cond_14

    .line 408
    .line 409
    const-string v0, "[downloader] task state invalid. is canceling"

    .line 410
    .line 411
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7, v5}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 415
    .line 416
    .line 417
    :cond_14
    :try_start_8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->setDownloader(Lcom/ss/ttvideoengine/download/Downloader;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 421
    .line 422
    .line 423
    goto :goto_d

    .line 424
    :goto_c
    :try_start_9
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 425
    .line 426
    .line 427
    :goto_d
    add-int/lit8 v0, v16, 0x1

    .line 428
    .line 429
    move v6, v4

    .line 430
    move-object v5, v15

    .line 431
    move v4, v0

    .line 432
    goto/16 :goto_3

    .line 433
    .line 434
    :catchall_5
    move-exception v0

    .line 435
    move-object v2, v0

    .line 436
    if-eqz v7, :cond_15

    .line 437
    .line 438
    :try_start_a
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->setDownloader(Lcom/ss/ttvideoengine/download/Downloader;)V

    .line 442
    .line 443
    .line 444
    :cond_15
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 445
    :goto_e
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 446
    .line 447
    .line 448
    :cond_16
    return-object v3
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/download/Downloader;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadTask;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->taskForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/database/KVDBManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/database/KVDBManager;)Lcom/ss/ttvideoengine/database/KVDBManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/download/Downloader;->_loadAllTasks()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1300(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/download/Downloader;->writeTask(Lcom/ss/ttvideoengine/download/DownloadTask;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/ss/ttvideoengine/download/Downloader;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->loadData:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->temLoadedTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->temLoadedTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/download/Downloader;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->indexArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/ss/ttvideoengine/download/Downloader;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->readAllTask:Z

    .line 2
    .line 3
    return p1
.end method

.method private addTask(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/ss/ttvideoengine/download/DownloadTask;
    .locals 7

    .line 1
    invoke-virtual {p1, p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setDownloader(Lcom/ss/ttvideoengine/download/Downloader;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->readAllTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "TTVideoEngine.Downloader"

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v1, v0

    .line 32
    check-cast v1, Lcom/ss/ttvideoengine/download/DownloadTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setDownloader(Lcom/ss/ttvideoengine/download/Downloader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    move-object v1, p1

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :try_start_3
    iget-wide v3, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 45
    .line 46
    const-wide/16 v5, 0x1

    .line 47
    .line 48
    add-long/2addr v3, v5

    .line 49
    iput-wide v3, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 50
    .line 51
    iput-wide v3, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 52
    .line 53
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->indexArray:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "[downloader] add task fail. taskIdentifier = "

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-wide v3, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object p1, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->indexArray:Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-wide v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxTaskId:J

    .line 92
    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->saveTaskInfo(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 106
    .line 107
    .line 108
    move-object v1, p1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const-string v0, "[downloader] should load all tasks first."

    .line 111
    .line 112
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .line 114
    .line 115
    :goto_1
    return-object v1

    .line 116
    :goto_2
    :try_start_4
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 117
    .line 118
    .line 119
    :catchall_2
    return-object v1
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/download/Downloader;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/download/Downloader;->ourInstance:Lcom/ss/ttvideoengine/download/Downloader;

    .line 2
    .line 3
    return-object v0
.end method

.method private indexToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    if-ge v1, v2, :cond_0

    .line 33
    .line 34
    const-string v2, ","

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method private initHandle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/download/Downloader$1;

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p0, v1, p0}, Lcom/ss/ttvideoengine/download/Downloader$1;-><init>(Lcom/ss/ttvideoengine/download/Downloader;Landroid/os/Looper;Lcom/ss/ttvideoengine/download/Downloader;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method private saveTaskInfo(Lcom/ss/ttvideoengine/download/DownloadTask;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;-><init>(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/Downloader$1;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, v0, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->alltasks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->taskThread:Lcom/ss/ttvideoengine/download/Downloader$TaskThread;

    .line 30
    .line 31
    const/16 v1, 0xb

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    if-lez v0, :cond_3

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_2

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    move-object v1, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v1, v0

    .line 48
    goto :goto_3

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    :goto_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_3
    return-object v1
.end method

.method private taskForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadTask;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-lez v3, :cond_3

    .line 41
    .line 42
    iget-object v3, v2, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    move-object v1, v2

    .line 67
    :cond_3
    if-eqz v1, :cond_1

    .line 68
    .line 69
    :cond_4
    return-object v1
.end method

.method private writeIndexesToDisk(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 21
    .line 22
    iget-wide v2, v1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-wide v1, v1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/download/Downloader;->indexToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 52
    .line 53
    const-string v1, "index"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/database/KVDBManager;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string v2, "TTVideoEngine_download_index_v01"

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private writeTask(Lcom/ss/ttvideoengine/download/DownloadTask;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/ss/ttvideoengine/download/Downloader;->writeIndexesToDisk(Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->jsonObject()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-wide v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "[downloader] write task. key "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " value: "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "TTVideoEngine.Downloader"

    .line 44
    .line 45
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v2, -0x1

    .line 53
    const/16 v4, -0x26dd

    .line 54
    .line 55
    const-string v5, "kTTVideoErrorDomainDownload"

    .line 56
    .line 57
    const-string v6, " taskIdentifier = "

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    iget-object p2, p0, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 62
    .line 63
    invoke-virtual {p2, v1, v0}, Lcom/ss/ttvideoengine/database/KVDBManager;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "[downloader] save task fail, videoid = "

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-wide v6, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 88
    .line 89
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {v3, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lcom/ss/ttvideoengine/utils/Error;

    .line 100
    .line 101
    invoke-direct {p2, v5, v4, v2, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/download/Downloader;->dbObject:Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Lcom/ss/ttvideoengine/database/KVDBManager;->remove(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_1

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v1, "[downloader] remove task fail, videoid = "

    .line 122
    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-wide v6, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 135
    .line 136
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {v3, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p2, Lcom/ss/ttvideoengine/utils/Error;

    .line 147
    .line 148
    invoke-direct {p2, v5, v4, v2, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method cancel(Lcom/ss/ttvideoengine/download/DownloadTask;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->indexArray:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-wide v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "task info: "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

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
    const-string v2, "kTTVideoErrorDomainDownload"

    .line 47
    .line 48
    const/16 v3, -0x270b

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method completeError(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 9

    .line 1
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 2
    .line 3
    const-string v1, "TTVideoEngine.Downloader"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->canceled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "[downloader] task did finished, info = "

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    if-eqz p2, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "[downloader] error info "

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->finished:Z

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->saveTaskInfo(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    if-nez p2, :cond_2

    .line 73
    .line 74
    iget-wide v7, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 75
    .line 76
    move-object v3, p0

    .line 77
    move-object v4, p1

    .line 78
    move-wide v5, v7

    .line 79
    invoke-interface/range {v2 .. v8}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderProgress(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 83
    .line 84
    invoke-interface {v0, p0, p1, p2}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidComplete(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v0, "[downloader] task complete, task info = "

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {v1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->tryNextWaitingTask(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public downloadDidSuspened(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public downloadFail(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public getLimitFreeDiskSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->limitFreeDiskSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getListener()Lcom/ss/ttvideoengine/download/IDownloaderListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxDownloadOperationCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public invalidateAndCancelAllTasks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->invalidateAndCancel()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return-void
.end method

.method public loadAllTasks(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "kTTVideoErrorDomainDownload"

    .line 3
    .line 4
    const-string v2, "TTVideoEngine.Downloader"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const-string p1, "[downloader] context == null"

    .line 10
    .line 11
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 19
    .line 20
    const/16 v4, -0x270f

    .line 21
    .line 22
    const-string v5, "context is null"

    .line 23
    .line 24
    invoke-direct {v2, v1, v4, v0, v5}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p0, v3, v2}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidLoadAllTask(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/List;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->isRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    const-string p1, "[downloader] need start dataloader first."

    .line 42
    .line 43
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 51
    .line 52
    const/16 v4, -0x26da

    .line 53
    .line 54
    const-string v5, "need start medialoader"

    .line 55
    .line 56
    invoke-direct {v2, v1, v4, v0, v5}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, p0, v3, v2}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidLoadAllTask(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/List;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->readAllTask:Z

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 79
    .line 80
    invoke-interface {v0, p0, p1, v3}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidLoadAllTask(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/List;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->loadData:Z

    .line 85
    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->loadData:Z

    .line 90
    .line 91
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/ss/ttvideoengine/download/Downloader;->initHandle()V

    .line 94
    .line 95
    .line 96
    new-instance p1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->taskThread:Lcom/ss/ttvideoengine/download/Downloader$TaskThread;

    .line 105
    .line 106
    const/16 v1, 0xa

    .line 107
    .line 108
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->postMessage(Ljava/util/ArrayList;I)V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_0
    return-void
.end method

.method public progress(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method resume(Lcom/ss/ttvideoengine/download/DownloadTask;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "[downloader] resume task. is waiting,  task = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "TTVideoEngine.Downloader"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-wide v4, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 61
    .line 62
    const-wide/16 v0, 0x1

    .line 63
    .line 64
    cmp-long v2, v4, v0

    .line 65
    .line 66
    if-ltz v2, :cond_4

    .line 67
    .line 68
    iget-wide v6, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 69
    .line 70
    cmp-long v0, v6, v0

    .line 71
    .line 72
    if-gez v0, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    move-object v2, p0

    .line 80
    move-object v3, p1

    .line 81
    invoke-interface/range {v1 .. v7}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidResume(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    return-void
.end method

.method public resumeAllTasks()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x3

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    :cond_2
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->resume()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return-void
.end method

.method public setLimitFreeDiskSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->limitFreeDiskSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/download/IDownloaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->listener:Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxDownloadOperationCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 2
    .line 3
    return-void
.end method

.method shouldResume(Lcom/ss/ttvideoengine/download/DownloadTask;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const-string v1, "TTVideoEngine.Downloader"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v4, 0x3

    .line 31
    if-eq v0, v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v4, 0x5

    .line 38
    if-ne v0, v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "[downloader] task is waiting, task info "

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v3

    .line 82
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getFreeSize(Landroid/content/Context;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v6, "[downloader] get free size, size = "

    .line 94
    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v6, ", limite = "

    .line 102
    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/Downloader;->getLimitFreeDiskSize()J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/download/Downloader;->getLimitFreeDiskSize()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    cmp-long v0, v4, v0

    .line 125
    .line 126
    if-gtz v0, :cond_3

    .line 127
    .line 128
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 129
    .line 130
    const/16 v1, -0x26db

    .line 131
    .line 132
    const-string v2, "available size is less than 1073741824 M"

    .line 133
    .line 134
    const-string v4, "kTTVideoErrorDomainDownload"

    .line 135
    .line 136
    invoke-direct {v0, v4, v1, v3, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 140
    .line 141
    .line 142
    return v3

    .line 143
    :cond_3
    return v2
.end method

.method public suspendAllTasks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->allTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/download/DownloadTask;->suspend()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return-void
.end method

.method suspended(Lcom/ss/ttvideoengine/download/DownloadTask;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[downloader] task is waiting. key ="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "TTVideoEngine.Downloader"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 p1, 0x1

    .line 45
    return p1
.end method

.method tryNextWaitingTask(Lcom/ss/ttvideoengine/download/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    int-to-long v0, p1

    .line 21
    iget-wide v2, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    const-string v0, "TTVideoEngine.Downloader"

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "[downloader] running task count is "

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->runingTasks:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " max count is "

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-wide v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->maxDownloadOperationCount:J

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/4 v1, 0x1

    .line 73
    if-ge p1, v1, :cond_2

    .line 74
    .line 75
    const-string p1, "[downloader] waiting task is empty"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/Downloader;->waitingTasks:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->resume()V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "[downloader] auto resume waiting task: "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public urlTask([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadURLTask;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_4

    .line 10
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 13
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p2, v0, p3}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->taskItem(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadURLTask;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->addTask(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/ss/ttvideoengine/download/DownloadTask;

    move-result-object p1

    check-cast p1, Lcom/ss/ttvideoengine/download/DownloadURLTask;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->updateUrls(Ljava/util/ArrayList;)V

    :cond_3
    return-object p1

    .line 17
    :cond_4
    :goto_1
    const-string p1, "TTVideoEngine.Downloader"

    const-string p2, "[downloader] urls or key is invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public urlTask([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;)Lcom/ss/ttvideoengine/download/DownloadURLTask;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    invoke-static {p2, v0, p3, p4}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->taskItem(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/ss/ttvideoengine/download/DownloadTask$EncryptVersion;)Lcom/ss/ttvideoengine/download/DownloadURLTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->addTask(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/ss/ttvideoengine/download/DownloadTask;

    move-result-object p1

    check-cast p1, Lcom/ss/ttvideoengine/download/DownloadURLTask;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/download/DownloadURLTask;->updateUrls(Ljava/util/ArrayList;)V

    :cond_2
    return-object p1

    .line 8
    :cond_3
    :goto_0
    const-string p1, "TTVideoEngine.Downloader"

    const-string p2, "[downloader] urls or key is invalid."

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public vidTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    invoke-direct {p0, p2}, Lcom/ss/ttvideoengine/download/Downloader;->addTask(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/ss/ttvideoengine/download/DownloadTask;

    move-result-object p2

    check-cast p2, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    if-eqz p2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    iput-object v0, p2, Lcom/ss/ttvideoengine/download/DownloadVidTask;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    :cond_1
    return-object p2
.end method

.method public vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/download/Downloader;->vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p1

    return-object p1
.end method

.method public vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZ)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/download/Downloader;->vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p1

    return-object p1
.end method

.method public vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->taskItem(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZLjava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->addTask(Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/ss/ttvideoengine/download/DownloadTask;

    move-result-object p1

    check-cast p1, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    if-eqz p1, :cond_1

    .line 10
    iget-object p2, p0, Lcom/ss/ttvideoengine/download/Downloader;->mContext:Landroid/content/Context;

    iput-object p2, p1, Lcom/ss/ttvideoengine/download/DownloadVidTask;->mContext:Landroid/content/Context;

    :cond_1
    return-object p1
.end method

.method public vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;ZZZ)Lcom/ss/ttvideoengine/download/DownloadVidTask;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    const-string p3, "h265"

    :goto_0
    move-object v3, p3

    goto :goto_1

    .line 3
    :cond_1
    const-string p3, "h264"

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/download/Downloader;->vidTask(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;ZZ)Lcom/ss/ttvideoengine/download/DownloadVidTask;

    move-result-object p1

    return-object p1
.end method
