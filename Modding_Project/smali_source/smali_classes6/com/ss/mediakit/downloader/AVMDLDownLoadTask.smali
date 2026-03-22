.class public Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;
.super Ljava/lang/Object;
.source "AVMDLDownLoadTask.java"


# static fields
.field public static final IsHttpOpen:I = 0x0

.field public static final IsHttpRead:I = 0x1

.field public static final IsInValidStep:I = -0x1

.field public static final IsReponseHeader:I = 0x0

.field public static final IsResponseComplete:I = 0x3

.field public static final IsResponseData:I = 0x1

.field public static final IsResponseDownloadInterruptEnd:I = 0x5

.field public static final IsResponseError:I = 0x2

.field public static final IsResponseInfo:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AVMDLDownLoadTask"


# instance fields
.field private file:Ljava/io/File;

.field fos:Ljava/io/FileOutputStream;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mHandle:J

.field private mHandleLock:Ljava/util/concurrent/locks/Lock;

.field private mIsRunning:Z

.field private mRequest:Lcom/ss/mediakit/downloader/AVMDLRequest;

.field private mResonseLock:Ljava/util/concurrent/locks/Lock;

.field private mResponse:Lcom/ss/mediakit/downloader/AVMDLResponse;

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandle:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mIsRunning:Z

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mStep:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResonseLock:Ljava/util/concurrent/locks/Lock;

    .line 27
    .line 28
    return-void
.end method

.method private static native _notifyLoadInfo(JIJJLjava/lang/String;)V
.end method

.method private static native _onRecvData(J[BI)I
.end method

.method static synthetic access$000(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Lcom/ss/mediakit/downloader/AVMDLRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mRequest:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mIsRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mStep:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mStep:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;Lcom/ss/mediakit/downloader/AVMDLRequest;)Lcom/ss/mediakit/downloader/AVMDLResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->httOpen(Lcom/ss/mediakit/downloader/AVMDLRequest;)Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;Lcom/ss/mediakit/downloader/AVMDLResponse;[B)Lcom/ss/mediakit/downloader/AVMDLResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->httpRead(Lcom/ss/mediakit/downloader/AVMDLResponse;[B)Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private cancelResponse()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    const-string v0, "AVMDLDownLoadTask"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResonseLock:Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResponse:Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "start cancel response"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-object v3, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResponse:Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/ss/mediakit/downloader/AVMDLResponse;->cancel()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 28
    .line 29
    const-string v4, "end cancel cost time:%d"

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long/2addr v5, v1

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResonseLock:Ljava/util/concurrent/locks/Lock;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResonseLock:Ljava/util/concurrent/locks/Lock;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method private httOpen(Lcom/ss/mediakit/downloader/AVMDLRequest;)Lcom/ss/mediakit/downloader/AVMDLResponse;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "start http open, url:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 13
    .line 14
    iget v2, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    .line 15
    .line 16
    aget-object v1, v1, v2

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "object:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "handle:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-wide v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandle:J

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "AVMDLDownLoadTask"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v0, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, v2}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->setResponse(Lcom/ss/mediakit/downloader/AVMDLResponse;)V

    .line 52
    .line 53
    .line 54
    move v3, v0

    .line 55
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v7, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    .line 67
    .line 68
    aget v7, v7, v3

    .line 69
    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v8, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mUrlErrCount:[I

    .line 75
    .line 76
    aget v8, v8, v3

    .line 77
    .line 78
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget v9, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mMaxTryCout:I

    .line 83
    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "http open index:%d state:%d trycount:%d maxTry:%d"

    .line 93
    .line 94
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v5, " url:"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v5, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 107
    .line 108
    aget-object v5, v5, v3

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v1, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v4, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    .line 121
    .line 122
    aget v4, v4, v3

    .line 123
    .line 124
    const-string v5, "end http open"

    .line 125
    .line 126
    if-nez v4, :cond_3

    .line 127
    .line 128
    iget v4, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mMaxTryCout:I

    .line 129
    .line 130
    if-lez v4, :cond_1

    .line 131
    .line 132
    iget-object v6, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mUrlErrCount:[I

    .line 133
    .line 134
    aget v6, v6, v3

    .line 135
    .line 136
    if-ge v6, v4, :cond_3

    .line 137
    .line 138
    :cond_1
    :try_start_0
    invoke-static {p1, v3}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->excute(Lcom/ss/mediakit/downloader/AVMDLRequest;I)Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 139
    .line 140
    .line 141
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception v4

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v7, "io exception:"

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, "for url:"

    .line 162
    .line 163
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v4, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 167
    .line 168
    aget-object v4, v4, v3

    .line 169
    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v1, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v4, v2

    .line 181
    :goto_0
    if-eqz v4, :cond_2

    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/ss/mediakit/downloader/AVMDLResponse;->isOpenSuccessful()Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_2

    .line 188
    .line 189
    const-string v0, "http open suc"

    .line 190
    .line 191
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v4}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->setResponse(Lcom/ss/mediakit/downloader/AVMDLResponse;)V

    .line 195
    .line 196
    .line 197
    iget v0, v4, Lcom/ss/mediakit/downloader/AVMDLResponse;->statusCode:I

    .line 198
    .line 199
    int-to-long v8, v0

    .line 200
    iget-wide v10, v4, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 201
    .line 202
    const/4 v12, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    move-object v6, p0

    .line 205
    invoke-virtual/range {v6 .. v12}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->notifyToNative(IJJLjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v1, v5}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iput-object p1, v4, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 212
    .line 213
    return-object v4

    .line 214
    :cond_2
    iget-object v6, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mUrlErrCount:[I

    .line 215
    .line 216
    aget v7, v6, v3

    .line 217
    .line 218
    const/4 v8, 0x1

    .line 219
    add-int/2addr v7, v8

    .line 220
    aput v7, v6, v3

    .line 221
    .line 222
    if-eqz v4, :cond_3

    .line 223
    .line 224
    iget v4, v4, Lcom/ss/mediakit/downloader/AVMDLResponse;->statusCode:I

    .line 225
    .line 226
    const/16 v6, 0x190

    .line 227
    .line 228
    if-lt v4, v6, :cond_3

    .line 229
    .line 230
    const/16 v6, 0x258

    .line 231
    .line 232
    if-ge v4, v6, :cond_3

    .line 233
    .line 234
    iget-object v4, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->mUrlState:[I

    .line 235
    .line 236
    aput v8, v4, v3

    .line 237
    .line 238
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 239
    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const-string v7, "set url state forbidden index:%d"

    .line 249
    .line 250
    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v1, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 258
    .line 259
    iget-object v4, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 260
    .line 261
    array-length v4, v4

    .line 262
    rem-int/2addr v3, v4

    .line 263
    if-ne v3, v0, :cond_0

    .line 264
    .line 265
    invoke-static {v1, v5}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object v2
.end method

.method private httpRead(Lcom/ss/mediakit/downloader/AVMDLResponse;[B)Lcom/ss/mediakit/downloader/AVMDLResponse;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/ss/mediakit/downloader/AVMDLResponse;->readData([B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    .line 12
    iget-wide v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    cmp-long v3, v1, v3

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v1, v2, p2, v0}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->_onRecvData(J[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    iget-object p2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_2
    return-object p1
.end method

.method private setHandle(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandle:J

    .line 7
    .line 8
    const-string v0, "AVMDLDownLoadTask"

    .line 9
    .line 10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    const-string v2, "set handle:%d"

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method private setResponse(Lcom/ss/mediakit/downloader/AVMDLResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResonseLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResponse:Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mResonseLock:Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->setHandle(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mIsRunning:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->cancelResponse()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public notifyToNative(IJJLjava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "notify type:%d code:%d param:%d "

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "AVMDLDownLoadTask"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandle:J

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    cmp-long v0, v1, v3

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    move v3, p1

    .line 44
    move-wide v4, p2

    .line 45
    move-wide v6, p4

    .line 46
    move-object v8, p6

    .line 47
    invoke-static/range {v1 .. v8}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->_notifyLoadInfo(JIJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    iget-object p2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mHandleLock:Ljava/util/concurrent/locks/Lock;

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public open(JLjava/lang/Object;Ljava/lang/Object;III)I
    .locals 0

    .line 1
    const-wide/16 p4, 0x0

    .line 2
    .line 3
    cmp-long p4, p1, p4

    .line 4
    .line 5
    const-string p5, "AVMDLDownLoadTask"

    .line 6
    .line 7
    if-eqz p4, :cond_3

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    check-cast p3, Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 13
    .line 14
    iget-object p4, p3, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    array-length p4, p4

    .line 19
    if-nez p4, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-object p3, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mRequest:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->setHandle(J)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mStep:I

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mIsRunning:Z

    .line 32
    .line 33
    new-instance p2, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;-><init>(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lcom/ss/mediakit/net/AVMDLThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->mFuture:Ljava/util/concurrent/Future;

    .line 43
    .line 44
    return p1

    .line 45
    :cond_2
    :goto_0
    const-string p1, "no url err"

    .line 46
    .line 47
    invoke-static {p5, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, -0x2

    .line 51
    return p1

    .line 52
    :cond_3
    :goto_1
    const-string p1, "handle zero err"

    .line 53
    .line 54
    invoke-static {p5, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, -0x1

    .line 58
    return p1
.end method
