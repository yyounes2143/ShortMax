.class public Lcom/ss/ttvideoengine/log/ContentDataReporter;
.super Ljava/lang/Object;
.source "ContentDataReporter.java"


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContentDataReporter"

.field private static final mAssertsFileName:Ljava/lang/String; = "CN_content_data_transmit_url.json"

.field private static volatile mInit:Z = false

.field private static mRequestUrl:Ljava/lang/String;

.field private static volatile mRetryCnt:I


# instance fields
.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mInitialUrl:Ljava/lang/String;

.field private mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInitialUrl:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/ContentDataReporter;->readRequestUrlFromAsserts()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/log/ContentDataReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/ContentDataReporter;->lambda$readRequestUrlFromAsserts$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/log/ContentDataReporter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mCanceled:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic lambda$readRequestUrlFromAsserts$0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "CN_content_data_transmit_url.json"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    new-array v2, v2, [B

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "UTF-8"

    .line 31
    .line 32
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "requestUrl+CN"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const-string v0, "requestUrl+CN"

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mRequestUrl:Ljava/lang/String;

    .line 55
    .line 56
    sput-boolean v1, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-class v2, Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 61
    .line 62
    monitor-enter v2

    .line 63
    :try_start_1
    sget v3, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mRetryCnt:I

    .line 64
    .line 65
    add-int/2addr v3, v1

    .line 66
    sput v3, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mRetryCnt:I

    .line 67
    .line 68
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const-string v1, "ContentDataReporter"

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw v0

    .line 82
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mCanceled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mCanceled:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInitialUrl:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public readRequestUrlFromAsserts()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-class v0, Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget v1, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mRetryCnt:I

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance v0, Lcom/ss/ttvideoengine/log/a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/log/a;-><init>(Lcom/ss/ttvideoengine/log/ContentDataReporter;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method

.method public setInitialUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInitialUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public startTask(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mCanceled:Z

    .line 2
    .line 3
    const-string v1, "ContentDataReporter"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "canceled, return"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mRequestUrl:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "mRequestUrl is empty, return"

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInitialUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_5

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInitialUrl:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "?"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v2, -0x1

    .line 50
    if-ne v0, v2, :cond_3

    .line 51
    .line 52
    const-string p1, "cant find ?, return"

    .line 53
    .line 54
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mRequestUrl:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mInitialUrl:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v6, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .line 85
    .line 86
    :try_start_0
    const-string/jumbo v0, "start_event_time"

    .line 87
    .line 88
    .line 89
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt:J

    .line 90
    .line 91
    invoke-virtual {v6, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v0, "end_event_time"

    .line 95
    .line 96
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 97
    .line 98
    const-wide/16 v7, 0x0

    .line 99
    .line 100
    cmp-long v5, v2, v7

    .line 101
    .line 102
    if-lez v5, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 106
    .line 107
    :goto_0
    invoke-virtual {v6, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v0, "video_duration"

    .line 111
    .line 112
    .line 113
    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    .line 114
    .line 115
    invoke-virtual {v6, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string p2, "end_position"

    .line 119
    .line 120
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curPlayBackTime:J

    .line 121
    .line 122
    invoke-virtual {v6, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string p2, "duration"

    .line 126
    .line 127
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->watchduration:I

    .line 128
    .line 129
    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string p1, "custom_id"

    .line 133
    .line 134
    sget p2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 135
    .line 136
    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 140
    .line 141
    new-instance v8, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;

    .line 142
    .line 143
    invoke-direct {v8, p0, v4}, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;-><init>(Lcom/ss/ttvideoengine/log/ContentDataReporter;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v7, 0x1

    .line 148
    invoke-virtual/range {v3 .. v8}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v0, "JSONObject put error:%s"

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_5
    :goto_1
    const-string p1, "null parameter, return"

    .line 179
    .line 180
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
