.class public Lcom/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/amazonaws/logging/Log;


# instance fields
.field private a:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.amazonaws.request"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->c(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->c:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->b:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/amazonaws/transform/VoidJsonUnmarshaller;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic b(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "Error closing json parser"

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->c:Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    const-string v2, "Parsing service response JSON"

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->k(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string/jumbo v3, "x-amz-crc32"

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    const-string/jumbo v4, "{}"

    .line 32
    .line 33
    .line 34
    sget-object v5, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v5, "CRC32Checksum = "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v1, v4}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v5, "content encoding = "

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const-string v6, "Content-Encoding"

    .line 78
    .line 79
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v1, v4}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v5, "gzip"

    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v2, :cond_1

    .line 110
    .line 111
    new-instance v5, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    .line 112
    .line 113
    invoke-direct {v5, v3}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    .line 115
    .line 116
    move-object v3, v5

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const/4 v5, 0x0

    .line 119
    :goto_0
    if-eqz v4, :cond_2

    .line 120
    .line 121
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .line 122
    .line 123
    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .line 125
    .line 126
    move-object v3, v4

    .line 127
    :cond_2
    new-instance v4, Ljava/io/InputStreamReader;

    .line 128
    .line 129
    sget-object v6, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-direct {v4, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v4}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :try_start_0
    new-instance v4, Lcom/amazonaws/AmazonWebServiceResponse;

    .line 139
    .line 140
    invoke-direct {v4}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v6, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .line 144
    .line 145
    invoke-direct {v6, v3, p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V

    .line 146
    .line 147
    .line 148
    iget-object v7, p0, Lcom/amazonaws/http/JsonResponseHandler;->a:Lcom/amazonaws/transform/Unmarshaller;

    .line 149
    .line 150
    invoke-interface {v7, v6}, Lcom/amazonaws/transform/Unmarshaller;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v5, :cond_4

    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v7

    .line 160
    invoke-virtual {v5}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->m()J

    .line 161
    .line 162
    .line 163
    move-result-wide v9

    .line 164
    cmp-long v2, v9, v7

    .line 165
    .line 166
    if-nez v2, :cond_3

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    new-instance p1, Lcom/amazonaws/internal/CRC32MismatchException;

    .line 170
    .line 171
    const-string v1, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    .line 172
    .line 173
    invoke-direct {p1, v1}, Lcom/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    goto :goto_3

    .line 179
    :cond_4
    :goto_1
    invoke-virtual {v4, v6}, Lcom/amazonaws/AmazonWebServiceResponse;->d(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v5, "AWS_REQUEST_ID"

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string/jumbo v6, "x-amzn-RequestId"

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    new-instance p1, Lcom/amazonaws/ResponseMetadata;

    .line 204
    .line 205
    invoke-direct {p1, v2}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->c(Lcom/amazonaws/ResponseMetadata;)V

    .line 209
    .line 210
    .line 211
    const-string p1, "Done parsing service response"

    .line 212
    .line 213
    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    iget-boolean p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->b:Z

    .line 217
    .line 218
    if-nez p1, :cond_5

    .line 219
    .line 220
    :try_start_1
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :catch_0
    move-exception p1

    .line 225
    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->c:Lcom/amazonaws/logging/Log;

    .line 226
    .line 227
    invoke-interface {v1, v0, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    :cond_5
    :goto_2
    return-object v4

    .line 231
    :goto_3
    iget-boolean v1, p0, Lcom/amazonaws/http/JsonResponseHandler;->b:Z

    .line 232
    .line 233
    if-nez v1, :cond_6

    .line 234
    .line 235
    :try_start_2
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :catch_1
    move-exception v1

    .line 240
    sget-object v2, Lcom/amazonaws/http/JsonResponseHandler;->c:Lcom/amazonaws/logging/Log;

    .line 241
    .line 242
    invoke-interface {v2, v0, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    :cond_6
    :goto_4
    throw p1
.end method
