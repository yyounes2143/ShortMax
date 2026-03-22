.class Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;
.super Ljava/lang/Object;
.source "OkHTTPFileDownloadTask.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/core/IDownloadTask;


# static fields
.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CONNECTION:Ljava/lang/String; = "Connection"

.field private static final FORMAT_RANGE:Ljava/lang/String; = "bytes=%d-"

.field private static final RESPONSE_BODY_IS_NULL:Ljava/lang/String; = "response body is null"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "responseCode "

.field private static final RESPONSE_CONTENT_LENGTH_IS_NULL:Ljava/lang/String; = "response content length is null"

.field private static final RESPONSE_INPUTSTREAM_IS_NULL:Ljava/lang/String; = "response inputStream is null"

.field private static final RESPONSE_IS_NULL:Ljava/lang/String; = "response is null"


# instance fields
.field private final _databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private volatile _downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

.field private _downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

.field private final _downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field private _downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

.field private _downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

.field private _etag:Ljava/lang/String;

.field private _inputStream:Ljava/io/InputStream;

.field private _outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

.field private _responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

.field private monitor:Lcom/mbridge/msdk/tracker/network/p;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/database/DownloadModel;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_etag:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 17
    .line 18
    return-void
.end method

.method public static create(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/database/DownloadModel;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;)Lcom/mbridge/msdk/foundation/download/core/IDownloadTask;
    .locals 7

    .line 1
    invoke-static {p4}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p4, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 8
    .line 9
    const-string v0, "2000116"

    .line 10
    .line 11
    invoke-direct {p4, v0}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    move-object v6, p4

    .line 15
    new-instance p4, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;

    .line 16
    .line 17
    move-object v1, p4

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;-><init>(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/database/DownloadModel;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;)V

    .line 23
    .line 24
    .line 25
    return-object p4
.end method

.method private handleInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/DownloadResponse;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    const-string v23, ""

    .line 6
    .line 7
    const-string v6, "DownloadTask"

    .line 8
    .line 9
    new-instance v7, Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 10
    .line 11
    invoke-direct {v7}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 50
    .line 51
    .line 52
    move-result-wide v16

    .line 53
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    .line 56
    .line 57
    .line 58
    move-result v20

    .line 59
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadResourceType()Lcom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 62
    .line 63
    .line 64
    move-result-object v22

    .line 65
    const-wide/16 v18, 0x0

    .line 66
    .line 67
    const/16 v21, 0x1

    .line 68
    .line 69
    move-object/from16 v13, p4

    .line 70
    .line 71
    move-object/from16 v14, p2

    .line 72
    .line 73
    invoke-static/range {v10 .. v22}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILcom/mbridge/msdk/foundation/download/DownloadResourceType;)Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 78
    .line 79
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->insert(Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveDirectorPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveFileName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v15

    .line 121
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 124
    .line 125
    .line 126
    move-result-wide v16

    .line 127
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    .line 130
    .line 131
    .line 132
    move-result-wide v18

    .line 133
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    .line 136
    .line 137
    .line 138
    move-result v20

    .line 139
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/lit8 v21, v0, 0x1

    .line 146
    .line 147
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadResourceType()Lcom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 150
    .line 151
    .line 152
    move-result-object v22

    .line 153
    invoke-static/range {v10 .. v22}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILcom/mbridge/msdk/foundation/download/DownloadResourceType;)Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 158
    .line 159
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 160
    .line 161
    invoke-interface {v1, v0, v8}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->update(Lcom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Ljava/io/File;

    .line 169
    .line 170
    move-object/from16 v2, p1

    .line 171
    .line 172
    invoke-direct {v1, v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getDownloadFileOutputStream(Ljava/io/File;)Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 180
    .line 181
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 184
    .line 185
    .line 186
    move-result-wide v1

    .line 187
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->seek(J)V

    .line 188
    .line 189
    .line 190
    const/16 v10, 0x64

    .line 191
    .line 192
    const/4 v11, 0x0

    .line 193
    const/4 v1, 0x0

    .line 194
    :try_start_0
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 195
    .line 196
    if-eqz v0, :cond_2

    .line 197
    .line 198
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->isCheckMD5()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    .line 206
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getMd5()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_2

    .line 217
    .line 218
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getMd5()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    const-string v0, "MD5"

    .line 225
    .line 226
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-ne v0, v10, :cond_1

    .line 237
    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    if-nez v0, :cond_1

    .line 243
    .line 244
    move-object v0, v1

    .line 245
    move-object v15, v2

    .line 246
    move/from16 v24, v4

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    goto :goto_2

    .line 251
    :cond_1
    :goto_1
    move-object v0, v1

    .line 252
    move-object v15, v2

    .line 253
    move/from16 v24, v11

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    move-object/from16 v2, v23

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_2
    move-object v0, v1

    .line 261
    move/from16 v24, v11

    .line 262
    .line 263
    move-object/from16 v15, v23

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v3, v6, v0}, Lcom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :goto_3
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 283
    .line 284
    if-eqz v1, :cond_3

    .line 285
    .line 286
    const-string v2, "process_data_start"

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getByteBufferSize()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    new-array v12, v1, [B

    .line 300
    .line 301
    :goto_4
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 302
    .line 303
    invoke-virtual {v1, v12}, Ljava/io/InputStream;->read([B)I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    const/4 v2, -0x1

    .line 308
    if-eq v1, v2, :cond_8

    .line 309
    .line 310
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 311
    .line 312
    invoke-interface {v2, v12, v11, v1}, Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->write([BII)V

    .line 313
    .line 314
    .line 315
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 316
    .line 317
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 318
    .line 319
    .line 320
    move-result-wide v13

    .line 321
    int-to-long v4, v1

    .line 322
    add-long/2addr v13, v4

    .line 323
    invoke-virtual {v2, v13, v14}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 324
    .line 325
    .line 326
    if-eqz v24, :cond_4

    .line 327
    .line 328
    if-eqz v0, :cond_4

    .line 329
    .line 330
    :try_start_2
    invoke-virtual {v0, v12, v11, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    .line 332
    .line 333
    :catch_0
    :cond_4
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 334
    .line 335
    invoke-interface {v1}, Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->flushAndSync()V

    .line 336
    .line 337
    .line 338
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 341
    .line 342
    .line 343
    move-result-wide v1

    .line 344
    iget-object v3, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 345
    .line 346
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 347
    .line 348
    .line 349
    move-result-wide v3

    .line 350
    invoke-static {v1, v2, v3, v4}, Lcom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 355
    .line 356
    iget-object v3, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 357
    .line 358
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 361
    .line 362
    .line 363
    move-result-wide v4

    .line 364
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 365
    .line 366
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 367
    .line 368
    .line 369
    move-result-wide v17

    .line 370
    move-object/from16 v1, p0

    .line 371
    .line 372
    const/4 v14, 0x1

    .line 373
    move-object/from16 v25, v6

    .line 374
    .line 375
    move-object/from16 v26, v7

    .line 376
    .line 377
    move-wide/from16 v6, v17

    .line 378
    .line 379
    move v8, v13

    .line 380
    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->sendProgress(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/DownloadMessage;JJI)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 384
    .line 385
    if-eqz v1, :cond_5

    .line 386
    .line 387
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 390
    .line 391
    .line 392
    move-result-wide v2

    .line 393
    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/tracker/network/p;->c(J)V

    .line 394
    .line 395
    .line 396
    :cond_5
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eq v1, v10, :cond_6

    .line 403
    .line 404
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-lt v13, v1, :cond_6

    .line 411
    .line 412
    move-object/from16 v1, v26

    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_6
    iget-object v1, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    sget-object v2, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 422
    .line 423
    if-ne v1, v2, :cond_7

    .line 424
    .line 425
    move-object/from16 v1, v26

    .line 426
    .line 427
    invoke-virtual {v1, v14}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_7
    move-object/from16 v8, p2

    .line 432
    .line 433
    move v4, v14

    .line 434
    move-object/from16 v6, v25

    .line 435
    .line 436
    move-object/from16 v7, v26

    .line 437
    .line 438
    goto/16 :goto_4

    .line 439
    .line 440
    :cond_8
    move v14, v4

    .line 441
    move-object/from16 v25, v6

    .line 442
    .line 443
    move-object v1, v7

    .line 444
    :goto_5
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 445
    .line 446
    if-eqz v2, :cond_9

    .line 447
    .line 448
    const-string v3, "process_data_end"

    .line 449
    .line 450
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :cond_9
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseHelper()Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    iget-object v3, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 462
    .line 463
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    iget-object v3, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 468
    .line 469
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v12

    .line 473
    iget-object v3, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 474
    .line 475
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    iget-object v4, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 480
    .line 481
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 482
    .line 483
    .line 484
    move-result-wide v16

    .line 485
    iget-object v4, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 486
    .line 487
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 488
    .line 489
    .line 490
    move-result-wide v18

    .line 491
    iget-object v4, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 492
    .line 493
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    .line 494
    .line 495
    .line 496
    move-result v20

    .line 497
    iget-object v4, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 498
    .line 499
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    .line 500
    .line 501
    .line 502
    move-result v21

    .line 503
    iget-object v4, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 504
    .line 505
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadResourceType()Lcom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 506
    .line 507
    .line 508
    move-result-object v22

    .line 509
    move-object/from16 v10, p3

    .line 510
    .line 511
    move-object/from16 v13, p4

    .line 512
    .line 513
    move v4, v14

    .line 514
    move-object/from16 v14, p2

    .line 515
    .line 516
    move-object v5, v15

    .line 517
    move-object v15, v3

    .line 518
    invoke-static/range {v10 .. v22}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILcom/mbridge/msdk/foundation/download/DownloadResourceType;)Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    move-object/from16 v6, p2

    .line 523
    .line 524
    move-object/from16 v7, p3

    .line 525
    .line 526
    invoke-interface {v2, v7, v6, v3}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->updateProgress(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 527
    .line 528
    .line 529
    if-eqz v24, :cond_d

    .line 530
    .line 531
    :try_start_3
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 532
    .line 533
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    sget-object v3, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 538
    .line 539
    if-eq v2, v3, :cond_d

    .line 540
    .line 541
    iget-object v2, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 542
    .line 543
    if-eqz v2, :cond_a

    .line 544
    .line 545
    const-string v3, "validate_data_start"

    .line 546
    .line 547
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_6

    .line 551
    :catchall_2
    move-exception v0

    .line 552
    move-object/from16 v6, v25

    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_a
    :goto_6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->hexEncode([B)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_b

    .line 568
    .line 569
    :goto_7
    move-object/from16 v2, v23

    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_b
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 573
    .line 574
    invoke-virtual {v5, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v23

    .line 578
    goto :goto_7

    .line 579
    :goto_8
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v6, " "

    .line 596
    .line 597
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 607
    move-object/from16 v6, v25

    .line 608
    .line 609
    :try_start_4
    invoke-interface {v3, v6, v5}, Lcom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    iget-object v3, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 613
    .line 614
    if-eqz v3, :cond_c

    .line 615
    .line 616
    const-string v5, "validate_data_end"

    .line 617
    .line 618
    invoke-virtual {v3, v5}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    goto :goto_9

    .line 622
    :catchall_3
    move-exception v0

    .line 623
    goto :goto_a

    .line 624
    :cond_c
    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    if-nez v3, :cond_d

    .line 629
    .line 630
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-nez v0, :cond_d

    .line 635
    .line 636
    iget-object v0, v9, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 637
    .line 638
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->setMd5VerifyResult(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setFailed(Z)V

    .line 642
    .line 643
    .line 644
    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadError;

    .line 645
    .line 646
    new-instance v2, Ljava/lang/Exception;

    .line 647
    .line 648
    const-string v3, "File MD5 check fail."

    .line 649
    .line 650
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-direct {v0, v2}, Lcom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Lcom/mbridge/msdk/foundation/download/DownloadError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 657
    .line 658
    .line 659
    return-object v1

    .line 660
    :goto_a
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-interface {v2, v6, v0}, Lcom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    :cond_d
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->isCancelled()Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-nez v0, :cond_e

    .line 680
    .line 681
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 682
    .line 683
    .line 684
    :cond_e
    return-object v1
.end method

.method private handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "r_f_s_d_e"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/tools/r0;->a(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 31
    .line 32
    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Ljava/io/File;

    .line 40
    .line 41
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 78
    .line 79
    const-wide/16 p2, 0x0

    .line 80
    .line 81
    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 85
    .line 86
    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p3, "DownloadTask"

    .line 103
    .line 104
    invoke-interface {p2, p3, p1}, Lcom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 108
    .line 109
    invoke-virtual {p1, p4}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private handlerRequestSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/y;I)Lcom/mbridge/msdk/foundation/download/DownloadResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 7
    .line 8
    invoke-direct {p0, p5, v1}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->isSupportResume(ILcom/mbridge/msdk/foundation/download/database/DownloadModel;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    const/16 v4, 0xce

    .line 21
    .line 22
    if-ne p5, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p4}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 25
    .line 26
    .line 27
    move-result-object p5

    .line 28
    if-eqz p5, :cond_0

    .line 29
    .line 30
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 31
    .line 32
    invoke-virtual {p5}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    cmp-long p5, v4, v2

    .line 37
    .line 38
    if-lez p5, :cond_0

    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 41
    .line 42
    .line 43
    move-result-object p5

    .line 44
    invoke-virtual {p5}, Lcom/mbridge/msdk/thrid/okhttp/z;->h()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 49
    .line 50
    invoke-virtual {p5}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 55
    .line 56
    invoke-virtual {p5}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    sub-long/2addr v6, v8

    .line 61
    cmp-long p5, v4, v6

    .line 62
    .line 63
    if-eqz p5, :cond_0

    .line 64
    .line 65
    const/4 p5, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p5, 0x0

    .line 68
    :goto_0
    if-nez v1, :cond_2

    .line 69
    .line 70
    if-eqz p5, :cond_2

    .line 71
    .line 72
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 73
    .line 74
    invoke-virtual {p5, v2, v3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 75
    .line 76
    .line 77
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 78
    .line 79
    invoke-virtual {p5, v2, v3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 80
    .line 81
    .line 82
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 83
    .line 84
    invoke-static {p5}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p5

    .line 88
    if-eqz p5, :cond_1

    .line 89
    .line 90
    iget-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 91
    .line 92
    invoke-interface {p5, p3, p2}, Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    const/4 p5, 0x0

    .line 96
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadModel:Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 97
    .line 98
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 99
    .line 100
    .line 101
    move-result-object p5

    .line 102
    new-instance v1, Ljava/io/File;

    .line 103
    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p5, v1}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    invoke-virtual {p4}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 142
    .line 143
    invoke-static {p4}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p4

    .line 147
    if-eqz p4, :cond_3

    .line 148
    .line 149
    new-instance p1, Ljava/io/IOException;

    .line 150
    .line 151
    const-string p2, "response body is null"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Ljava/lang/Exception;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 160
    .line 161
    invoke-virtual {p1, v2, v3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 165
    .line 166
    invoke-virtual {p1, v2, v3}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_3
    iget-object p4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 171
    .line 172
    invoke-virtual {p4}, Lcom/mbridge/msdk/thrid/okhttp/z;->h()J

    .line 173
    .line 174
    .line 175
    move-result-wide p4

    .line 176
    cmp-long v1, p4, v2

    .line 177
    .line 178
    if-gtz v1, :cond_4

    .line 179
    .line 180
    new-instance p1, Ljava/io/IOException;

    .line 181
    .line 182
    const-string p2, "response content length is null"

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Ljava/lang/Exception;)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    cmp-long v1, v4, v2

    .line 198
    .line 199
    if-nez v1, :cond_5

    .line 200
    .line 201
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 202
    .line 203
    invoke-virtual {v1, p4, p5}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 204
    .line 205
    .line 206
    :cond_5
    iget-object p4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 207
    .line 208
    invoke-virtual {p4}, Lcom/mbridge/msdk/thrid/okhttp/z;->d()Ljava/io/InputStream;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 213
    .line 214
    invoke-static {p4}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p4

    .line 218
    if-eqz p4, :cond_6

    .line 219
    .line 220
    new-instance p1, Ljava/io/IOException;

    .line 221
    .line 222
    const-string p2, "response inputStream is null"

    .line 223
    .line 224
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Ljava/lang/Exception;)V

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_6
    iget-object p4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_etag:Ljava/lang/String;

    .line 232
    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handleInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    return-object p1
.end method

.method private isSupportResume(ILcom/mbridge/msdk/foundation/download/database/DownloadModel;)Z
    .locals 1

    .line 1
    const/16 v0, 0xce

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_etag:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_etag:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :goto_0
    const/4 p1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_1
    return p1
.end method

.method private reportDownloadMessage()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "su"

    .line 14
    .line 15
    invoke-virtual {v1, v3, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->isCancelled()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "ca"

    .line 31
    .line 32
    invoke-virtual {v2, v4, v3}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object v4, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-static {v2, v3, v4, v5}, Lcom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v4, "dr"

    .line 58
    .line 59
    invoke-virtual {v3, v4, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 60
    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->getErrorMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 73
    .line 74
    const-string v4, "re"

    .line 75
    .line 76
    invoke-virtual {v3, v4, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/tracker/network/p;->a(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->getErrorMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->getError()Lcom/mbridge/msdk/foundation/download/DownloadError;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    new-instance v2, Ljava/io/IOException;

    .line 115
    .line 116
    const-string v1, "download request canceled"

    .line 117
    .line 118
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/tracker/network/p;->a(Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    const-string v1, "timeout"

    .line 125
    .line 126
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 133
    .line 134
    const/4 v1, 0x3

    .line 135
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/p;->a(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 140
    .line 141
    const/4 v1, 0x2

    .line 142
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/network/p;->a(I)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->build()Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter;->report()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private sendProgress(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/DownloadMessage;JJI)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/mbridge/msdk/foundation/download/DownloadProgress;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    move-wide v3, p3

    .line 13
    move-wide v5, p5

    .line 14
    move v7, p7

    .line 15
    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(JJI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerProcessEvent(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public run()Lcom/mbridge/msdk/foundation/download/DownloadResponse;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const-string v0, "User-Agent"

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 11
    .line 12
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lcom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iget-object v4, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-static {v1, v2, v4, v5}, Lcom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iget-object v8, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 48
    .line 49
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v9, "dcr"

    .line 54
    .line 55
    invoke-virtual {v8, v9, v6}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 56
    .line 57
    .line 58
    iget-object v6, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 59
    .line 60
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v9, "ddb"

    .line 65
    .line 66
    invoke-virtual {v6, v9, v8}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 67
    .line 68
    .line 69
    iget-object v6, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v9, "dtb"

    .line 76
    .line 77
    invoke-virtual {v6, v9, v8}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 78
    .line 79
    .line 80
    const-wide/16 v8, 0x0

    .line 81
    .line 82
    cmp-long v6, v1, v8

    .line 83
    .line 84
    if-eqz v6, :cond_1

    .line 85
    .line 86
    cmp-long v6, v4, v8

    .line 87
    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    cmp-long v1, v1, v4

    .line 91
    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 95
    .line 96
    const-string v1, "de"

    .line 97
    .line 98
    const-string v2, "t=c"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 101
    .line 102
    .line 103
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->build()Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter;->report()V

    .line 110
    .line 111
    .line 112
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_1
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getMonitor()Lcom/mbridge/msdk/tracker/network/p;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iput-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 151
    .line 152
    if-nez v2, :cond_2

    .line 153
    .line 154
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->canTrack()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_2

    .line 161
    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_2

    .line 167
    .line 168
    new-instance v2, Lcom/mbridge/msdk/tracker/network/p;

    .line 169
    .line 170
    iget-object v6, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 171
    .line 172
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/same/d;->a(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    const-string v13, "GET"

    .line 177
    .line 178
    invoke-direct {v2, v6, v13}, Lcom/mbridge/msdk/tracker/network/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/tracker/network/p;->f(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 187
    .line 188
    iget-object v6, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 189
    .line 190
    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->setMonitor(Lcom/mbridge/msdk/tracker/network/p;)V

    .line 191
    .line 192
    .line 193
    :cond_2
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTimeout()J

    .line 196
    .line 197
    .line 198
    move-result-wide v13

    .line 199
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getConnectTimeout()J

    .line 202
    .line 203
    .line 204
    move-result-wide v8

    .line 205
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 206
    .line 207
    move-wide/from16 v16, v4

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getReadTimeout()J

    .line 210
    .line 211
    .line 212
    move-result-wide v3

    .line 213
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getWriteTimeout()J

    .line 216
    .line 217
    .line 218
    move-result-wide v5

    .line 219
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadRequest:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 220
    .line 221
    move-object/from16 v18, v11

    .line 222
    .line 223
    move-object/from16 v19, v12

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->getRequestQueueTime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v11

    .line 229
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 230
    .line 231
    if-eqz v2, :cond_3

    .line 232
    .line 233
    invoke-virtual {v2, v13, v14}, Lcom/mbridge/msdk/tracker/network/p;->i(J)V

    .line 234
    .line 235
    .line 236
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 237
    .line 238
    invoke-virtual {v2, v8, v9}, Lcom/mbridge/msdk/tracker/network/p;->e(J)V

    .line 239
    .line 240
    .line 241
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 242
    .line 243
    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/tracker/network/p;->f(J)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 247
    .line 248
    invoke-virtual {v2, v5, v6}, Lcom/mbridge/msdk/tracker/network/p;->j(J)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 252
    .line 253
    const-string v15, "queue"

    .line 254
    .line 255
    invoke-virtual {v2, v15}, Lcom/mbridge/msdk/tracker/network/p;->d(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 259
    .line 260
    invoke-virtual {v2, v11, v12}, Lcom/mbridge/msdk/tracker/network/p;->a(J)V

    .line 261
    .line 262
    .line 263
    :cond_3
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 264
    .line 265
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    const-string v12, "bytes=%d-"

    .line 274
    .line 275
    invoke-static {v2, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getOkHttpClient()Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    invoke-virtual {v11}, Lcom/mbridge/msdk/thrid/okhttp/t;->s()Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 292
    .line 293
    invoke-virtual {v11, v8, v9, v12}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->b(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    new-instance v9, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;

    .line 298
    .line 299
    invoke-direct {v9, v1}, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v9}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Ljavax/net/ssl/HostnameVerifier;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v8, v3, v4, v12}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->d(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3, v5, v6, v12}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->e(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    const-wide/16 v4, 0x0

    .line 315
    .line 316
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 317
    .line 318
    .line 319
    move-result-wide v4

    .line 320
    invoke-virtual {v3, v4, v5, v12}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    new-instance v4, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;

    .line 325
    .line 326
    iget-object v5, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 327
    .line 328
    invoke-direct {v4, v5}, Lcom/mbridge/msdk/tracker/network/toolbox/OKHTTPEventListener;-><init>(Lcom/mbridge/msdk/tracker/network/p;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Lcom/mbridge/msdk/thrid/okhttp/n;)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    const/4 v4, 0x1

    .line 336
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a(Z)Lcom/mbridge/msdk/thrid/okhttp/t$b;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/t$b;->a()Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    new-instance v4, Lcom/mbridge/msdk/thrid/okhttp/c$a;

    .line 345
    .line 346
    invoke-direct {v4}, Lcom/mbridge/msdk/thrid/okhttp/c$a;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/c$a;->b()Lcom/mbridge/msdk/thrid/okhttp/c$a;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/c$a;->a()Lcom/mbridge/msdk/thrid/okhttp/c;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    new-instance v5, Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 358
    .line 359
    invoke-direct {v5}, Lcom/mbridge/msdk/thrid/okhttp/w$a;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Lcom/mbridge/msdk/thrid/okhttp/c;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    const-string v5, "Connection"

    .line 371
    .line 372
    const-string v6, "close"

    .line 373
    .line 374
    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    const-string v5, "Range"

    .line 379
    .line 380
    invoke-virtual {v4, v5, v2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    const-string v4, "okhttp/3.12.13/MAL_16.9.91"

    .line 389
    .line 390
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a()Lcom/mbridge/msdk/thrid/okhttp/w;

    .line 395
    .line 396
    .line 397
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 398
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/q;->g()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    const-string v5, "ht"

    .line 409
    .line 410
    invoke-virtual {v2, v5, v4}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 411
    .line 412
    .line 413
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 414
    .line 415
    const-string v4, "url"

    .line 416
    .line 417
    invoke-virtual {v2, v4, v1}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/d;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    const/4 v1, 0x0

    .line 425
    :try_start_1
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->d()Lcom/mbridge/msdk/thrid/okhttp/y;

    .line 426
    .line 427
    .line 428
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    :try_start_2
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-nez v0, :cond_8

    .line 434
    .line 435
    invoke-virtual {v9}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_4

    .line 444
    .line 445
    goto/16 :goto_2

    .line 446
    .line 447
    :cond_4
    invoke-virtual {v9}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->monitor:Lcom/mbridge/msdk/tracker/network/p;

    .line 452
    .line 453
    if-eqz v0, :cond_5

    .line 454
    .line 455
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/tracker/network/p;->b(I)V

    .line 456
    .line 457
    .line 458
    goto :goto_1

    .line 459
    :catchall_0
    move-exception v0

    .line 460
    move-object v1, v9

    .line 461
    goto/16 :goto_5

    .line 462
    .line 463
    :catch_0
    move-exception v0

    .line 464
    move-object v1, v9

    .line 465
    :goto_0
    move-object/from16 v2, v18

    .line 466
    .line 467
    move-object/from16 v3, v19

    .line 468
    .line 469
    goto/16 :goto_3

    .line 470
    .line 471
    :cond_5
    :goto_1
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloaderReporter:Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 472
    .line 473
    const-string v1, "drc"

    .line 474
    .line 475
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/download/core/DownloaderReporter$Builder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9}, Lcom/mbridge/msdk/thrid/okhttp/y;->n()Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-nez v0, :cond_7

    .line 487
    .line 488
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 489
    .line 490
    new-instance v1, Ljava/io/IOException;

    .line 491
    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v3, "responseCode "

    .line 498
    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Ljava/lang/Exception;)V

    .line 513
    .line 514
    .line 515
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    .line 517
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 518
    .line 519
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeInputStream(Ljava/io/InputStream;)V

    .line 520
    .line 521
    .line 522
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 523
    .line 524
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeOutputStream(Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;)V

    .line 525
    .line 526
    .line 527
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponse(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    .line 528
    .line 529
    .line 530
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 531
    .line 532
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponseBody(Lcom/mbridge/msdk/thrid/okhttp/z;)V

    .line 533
    .line 534
    .line 535
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->h()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-nez v1, :cond_6

    .line 540
    .line 541
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->cancel()V

    .line 542
    .line 543
    .line 544
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->reportDownloadMessage()V

    .line 545
    .line 546
    .line 547
    return-object v0

    .line 548
    :cond_7
    :try_start_3
    const-string v0, "ETag"

    .line 549
    .line 550
    const-string v1, ""

    .line 551
    .line 552
    invoke-virtual {v9, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    iput-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_etag:Ljava/lang/String;

    .line 557
    .line 558
    move-object/from16 v1, p0

    .line 559
    .line 560
    move-object v2, v10

    .line 561
    move-object/from16 v3, v18

    .line 562
    .line 563
    move-object/from16 v4, v19

    .line 564
    .line 565
    move-object v5, v9

    .line 566
    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerRequestSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/y;I)Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    iput-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 571
    .line 572
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 573
    .line 574
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeInputStream(Ljava/io/InputStream;)V

    .line 575
    .line 576
    .line 577
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeOutputStream(Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;)V

    .line 580
    .line 581
    .line 582
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponse(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    .line 583
    .line 584
    .line 585
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 586
    .line 587
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponseBody(Lcom/mbridge/msdk/thrid/okhttp/z;)V

    .line 588
    .line 589
    .line 590
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->h()Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-nez v0, :cond_a

    .line 595
    .line 596
    goto :goto_4

    .line 597
    :cond_8
    :goto_2
    :try_start_4
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 598
    .line 599
    new-instance v1, Ljava/io/IOException;

    .line 600
    .line 601
    const-string v2, "response is null"

    .line 602
    .line 603
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Ljava/lang/Exception;)V

    .line 607
    .line 608
    .line 609
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 610
    .line 611
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 612
    .line 613
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeInputStream(Ljava/io/InputStream;)V

    .line 614
    .line 615
    .line 616
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 617
    .line 618
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeOutputStream(Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponse(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    .line 622
    .line 623
    .line 624
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 625
    .line 626
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponseBody(Lcom/mbridge/msdk/thrid/okhttp/z;)V

    .line 627
    .line 628
    .line 629
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->h()Z

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    if-nez v1, :cond_9

    .line 634
    .line 635
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->cancel()V

    .line 636
    .line 637
    .line 638
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->reportDownloadMessage()V

    .line 639
    .line 640
    .line 641
    return-object v0

    .line 642
    :catchall_1
    move-exception v0

    .line 643
    goto :goto_5

    .line 644
    :catch_1
    move-exception v0

    .line 645
    goto/16 :goto_0

    .line 646
    .line 647
    :goto_3
    :try_start_5
    invoke-direct {v7, v10, v2, v3, v0}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 648
    .line 649
    .line 650
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 651
    .line 652
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeInputStream(Ljava/io/InputStream;)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 656
    .line 657
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeOutputStream(Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;)V

    .line 658
    .line 659
    .line 660
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponse(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    .line 661
    .line 662
    .line 663
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 664
    .line 665
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponseBody(Lcom/mbridge/msdk/thrid/okhttp/z;)V

    .line 666
    .line 667
    .line 668
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->h()Z

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    if-nez v0, :cond_a

    .line 673
    .line 674
    :goto_4
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->cancel()V

    .line 675
    .line 676
    .line 677
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->reportDownloadMessage()V

    .line 678
    .line 679
    .line 680
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 681
    .line 682
    return-object v0

    .line 683
    :goto_5
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_inputStream:Ljava/io/InputStream;

    .line 684
    .line 685
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeInputStream(Ljava/io/InputStream;)V

    .line 686
    .line 687
    .line 688
    iget-object v2, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_outputStream:Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 689
    .line 690
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeOutputStream(Lcom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;)V

    .line 691
    .line 692
    .line 693
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponse(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    .line 694
    .line 695
    .line 696
    iget-object v1, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_responseBody:Lcom/mbridge/msdk/thrid/okhttp/z;

    .line 697
    .line 698
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->closeResponseBody(Lcom/mbridge/msdk/thrid/okhttp/z;)V

    .line 699
    .line 700
    .line 701
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->h()Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_b

    .line 706
    .line 707
    invoke-interface {v8}, Lcom/mbridge/msdk/thrid/okhttp/d;->cancel()V

    .line 708
    .line 709
    .line 710
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->reportDownloadMessage()V

    .line 711
    .line 712
    .line 713
    throw v0

    .line 714
    :catch_2
    move-exception v0

    .line 715
    move-object/from16 v2, v18

    .line 716
    .line 717
    move-object/from16 v3, v19

    .line 718
    .line 719
    invoke-direct {v7, v10, v2, v3, v0}, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 720
    .line 721
    .line 722
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 723
    .line 724
    const/4 v1, 0x0

    .line 725
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 726
    .line 727
    .line 728
    iget-object v0, v7, Lcom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->_downloadResponse:Lcom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 729
    .line 730
    return-object v0
.end method
