.class public abstract Lio/bidmachine/core/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/NetworkRequest$State;,
        Lio/bidmachine/core/NetworkRequest$b;,
        Lio/bidmachine/core/NetworkRequest$Method;,
        Lio/bidmachine/core/NetworkRequest$f;,
        Lio/bidmachine/core/NetworkRequest$c;,
        Lio/bidmachine/core/NetworkRequest$e;,
        Lio/bidmachine/core/NetworkRequest$g;,
        Lio/bidmachine/core/NetworkRequest$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TASK_MANAGER:Lcr/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private callback:Lio/bidmachine/core/NetworkRequest$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$b<",
            "TRequestResultType;TErrorResultType;>;"
        }
    .end annotation
.end field

.field private cancelCallback:Lio/bidmachine/core/NetworkRequest$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentEncoders:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/NetworkRequest$g<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;>;"
        }
    .end annotation
.end field

.field private currentConnection:Ljava/net/URLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentState:Lio/bidmachine/core/NetworkRequest$State;

.field private dataBinder:Lio/bidmachine/core/NetworkRequest$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$f<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;"
        }
    .end annotation
.end field

.field private dataEncoders:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/NetworkRequest$g<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;>;"
        }
    .end annotation
.end field

.field private errorResult:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TErrorResultType;"
        }
    .end annotation
.end field

.field private final method:Lio/bidmachine/core/NetworkRequest$Method;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final path:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final requestData:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestDataType;"
        }
    .end annotation
.end field

.field private requestResult:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestResultType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ldr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/core/NetworkRequest;->TASK_MANAGER:Lcr/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lio/bidmachine/core/NetworkRequest$Method;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            "Ljava/lang/String;",
            "TRequestDataType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Idle:Lio/bidmachine/core/NetworkRequest$State;

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 7
    .line 8
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 9
    .line 10
    iput-object p2, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest;->requestData:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$100(Lio/bidmachine/core/NetworkRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest;->process()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->requestResult:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private obtainErrorStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method private obtainResponseCode(Ljava/net/URLConnection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    return p1
.end method

.method private process()V
    .locals 8

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Running:Lio/bidmachine/core/NetworkRequest$State;

    .line 2
    .line 3
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/net/URL;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->getBaseUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, "/"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    move-object v2, v0

    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_0
    new-instance v1, Ljava/net/URL;

    .line 47
    .line 48
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->getBaseUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iput-object v1, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 60
    .line 61
    iget-object v2, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lio/bidmachine/core/NetworkRequest$Method;->apply(Ljava/net/URLConnection;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainRequestData(Ljava/net/URLConnection;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/core/NetworkRequest;->encodeRequestData(Ljava/net/URLConnection;[B)[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 90
    .line 91
    .line 92
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 93
    .line 94
    .line 95
    :try_start_4
    invoke-static {v3}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_1
    move-exception v2

    .line 103
    move-object v7, v2

    .line 104
    move-object v2, v1

    .line 105
    move-object v1, v7

    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :catchall_2
    move-exception v2

    .line 109
    goto :goto_1

    .line 110
    :catchall_3
    move-exception v2

    .line 111
    move-object v3, v0

    .line 112
    :goto_1
    invoke-static {v3}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 116
    .line 117
    .line 118
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :cond_1
    :goto_2
    :try_start_5
    invoke-direct {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainResponseCode(Ljava/net/URLConnection;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    .line 124
    .line 125
    .line 126
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    :try_start_6
    invoke-static {v0}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    .line 137
    .line 138
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    .line 139
    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    .line 146
    .line 147
    :cond_2
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 148
    .line 149
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    .line 156
    .line 157
    if-nez v0, :cond_3

    .line 158
    .line 159
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    .line 163
    .line 164
    :goto_3
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 165
    .line 166
    :cond_4
    return-void

    .line 167
    :cond_5
    const/16 v3, 0xc8

    .line 168
    .line 169
    if-eq v2, v3, :cond_6

    .line 170
    .line 171
    :try_start_7
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iput-object v2, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    .line 176
    .line 177
    move-object v2, v0

    .line 178
    move-object v3, v2

    .line 179
    goto :goto_5

    .line 180
    :catchall_4
    move-exception v2

    .line 181
    move-object v3, v0

    .line 182
    move-object v4, v3

    .line 183
    goto/16 :goto_8

    .line 184
    .line 185
    :cond_6
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 186
    .line 187
    .line 188
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 189
    :try_start_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 192
    .line 193
    .line 194
    const/16 v4, 0x400

    .line 195
    .line 196
    :try_start_9
    new-array v4, v4, [B

    .line 197
    .line 198
    :goto_4
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    const/4 v6, -0x1

    .line 203
    if-eq v5, v6, :cond_7

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catchall_5
    move-exception v4

    .line 211
    move-object v7, v3

    .line 212
    move-object v3, v2

    .line 213
    move-object v2, v4

    .line 214
    move-object v4, v7

    .line 215
    goto :goto_8

    .line 216
    :cond_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    if-eqz v4, :cond_8

    .line 221
    .line 222
    invoke-virtual {p0, v1, v4}, Lio/bidmachine/core/NetworkRequest;->decodeResponseData(Ljava/net/URLConnection;[B)[B

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    :cond_8
    if-eqz v4, :cond_9

    .line 227
    .line 228
    array-length v5, v4

    .line 229
    if-lez v5, :cond_9

    .line 230
    .line 231
    iget-object v5, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$f;

    .line 232
    .line 233
    if-eqz v5, :cond_9

    .line 234
    .line 235
    invoke-virtual {v5, p0, v1, v4}, Lio/bidmachine/core/NetworkRequest$f;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    iput-object v5, p0, Lio/bidmachine/core/NetworkRequest;->requestResult:Ljava/lang/Object;

    .line 240
    .line 241
    if-nez v5, :cond_9

    .line 242
    .line 243
    iget-object v5, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$f;

    .line 244
    .line 245
    invoke-virtual {v5, p0, v1, v4}, Lio/bidmachine/core/NetworkRequest$f;->createFailResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iput-object v4, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 250
    .line 251
    :cond_9
    :goto_5
    :try_start_a
    invoke-static {v3}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 258
    .line 259
    .line 260
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    .line 261
    .line 262
    if-eqz v2, :cond_a

    .line 263
    .line 264
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 267
    .line 268
    .line 269
    :cond_a
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 270
    .line 271
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_d

    .line 276
    .line 277
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    .line 278
    .line 279
    if-nez v0, :cond_b

    .line 280
    .line 281
    :goto_6
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_b
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    .line 285
    .line 286
    :goto_7
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :catchall_6
    move-exception v3

    .line 290
    move-object v4, v0

    .line 291
    move-object v7, v3

    .line 292
    move-object v3, v2

    .line 293
    move-object v2, v7

    .line 294
    :goto_8
    :try_start_b
    invoke-static {v4}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v4}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 301
    .line 302
    .line 303
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 304
    :goto_9
    :try_start_c
    invoke-static {v1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2, v1}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iput-object v1, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 312
    .line 313
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    .line 314
    .line 315
    if-eqz v1, :cond_c

    .line 316
    .line 317
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 320
    .line 321
    .line 322
    :cond_c
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 323
    .line 324
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_d

    .line 329
    .line 330
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    .line 331
    .line 332
    if-nez v0, :cond_b

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_d
    :goto_a
    return-void

    .line 336
    :catchall_7
    move-exception v1

    .line 337
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    .line 338
    .line 339
    if-eqz v3, :cond_e

    .line 340
    .line 341
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    .line 345
    .line 346
    :cond_e
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 347
    .line 348
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_10

    .line 353
    .line 354
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    .line 355
    .line 356
    if-nez v0, :cond_f

    .line 357
    .line 358
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    .line 359
    .line 360
    goto :goto_b

    .line 361
    :cond_f
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    .line 362
    .line 363
    :goto_b
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 364
    .line 365
    :cond_10
    throw v1
.end method


# virtual methods
.method public addContentEncoder(Lio/bidmachine/core/NetworkRequest$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$g<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addDataEncoder(Lio/bidmachine/core/NetworkRequest$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$g<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    .line 2
    .line 3
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->cancelCallback:Lio/bidmachine/core/NetworkRequest$c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/core/NetworkRequest$c;->onCanceled()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method protected decodeResponseData(Ljava/net/URLConnection;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/bidmachine/core/NetworkRequest$g;

    .line 20
    .line 21
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$g;->a(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lio/bidmachine/core/NetworkRequest$g;

    .line 45
    .line 46
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$g;->a(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    return-object p2
.end method

.method protected encodeRequestData(Ljava/net/URLConnection;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/bidmachine/core/NetworkRequest$g;

    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Lio/bidmachine/core/NetworkRequest$g;->c(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$g;->b(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lio/bidmachine/core/NetworkRequest$g;

    .line 48
    .line 49
    invoke-virtual {v1, p0, p1}, Lio/bidmachine/core/NetworkRequest$g;->c(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$g;->b(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-object p2
.end method

.method protected getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "TODO: implement url"

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethod()Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected abstract obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "I)TErrorResultType;"
        }
    .end annotation
.end method

.method protected abstract obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/lang/Throwable;",
            ")TErrorResultType;"
        }
    .end annotation
.end method

.method protected obtainRequestData(Ljava/net/URLConnection;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/core/NetworkRequest$f;->prepareRequest(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$f;

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/core/NetworkRequest$f;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$f;

    .line 14
    .line 15
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->requestData:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, p0, p1, v1}, Lio/bidmachine/core/NetworkRequest$f;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method protected prepareRequestParams(Ljava/net/URLConnection;)V
    .locals 1

    .line 1
    const v0, 0x9c40

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public request()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest;->TASK_MANAGER:Lcr/c;

    invoke-virtual {p0, v0}, Lio/bidmachine/core/NetworkRequest;->request(Lcr/c;)V

    return-void
.end method

.method public request(Lcr/c;)V
    .locals 2
    .param p1    # Lcr/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lio/bidmachine/core/NetworkRequest$e;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/core/NetworkRequest$e;-><init>(Lio/bidmachine/core/NetworkRequest;Lio/bidmachine/core/NetworkRequest$a;)V

    invoke-interface {p1, v1}, Lcr/c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$b;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/bidmachine/core/NetworkRequest$b;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCallback(Lio/bidmachine/core/NetworkRequest$b;)V
    .locals 0
    .param p1    # Lio/bidmachine/core/NetworkRequest$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$b<",
            "TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$b;

    .line 2
    .line 3
    return-void
.end method

.method public setCancelCallback(Lio/bidmachine/core/NetworkRequest$c;)V
    .locals 0
    .param p1    # Lio/bidmachine/core/NetworkRequest$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->cancelCallback:Lio/bidmachine/core/NetworkRequest$c;

    .line 2
    .line 3
    return-void
.end method

.method public setDataBinder(Lio/bidmachine/core/NetworkRequest$f;)V
    .locals 0
    .param p1    # Lio/bidmachine/core/NetworkRequest$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$f<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$f;

    .line 2
    .line 3
    return-void
.end method
