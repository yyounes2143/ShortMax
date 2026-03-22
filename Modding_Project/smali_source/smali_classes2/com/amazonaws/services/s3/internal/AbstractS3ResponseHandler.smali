.class public abstract Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.super Ljava/lang/Object;
.source "AbstractS3ResponseHandler.java"

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
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->b:Ljava/util/Set;

    .line 15
    .line 16
    const-string v1, "Date"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "Server"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "x-amz-request-id"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "x-amz-id-2"

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const-string v1, "X-Amz-Cf-Id"

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    const-string v1, "Connection"

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "x-amz-request-id"

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string/jumbo v3, "x-amz-id-2"

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v3, "X-Amz-Cf-Id"

    .line 37
    .line 38
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    new-instance v3, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "AWS_REQUEST_ID"

    .line 50
    .line 51
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v1, "HOST_ID"

    .line 55
    .line 56
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v1, "CLOUD_FRONT_ID"

    .line 60
    .line 61
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/amazonaws/services/s3/S3ResponseMetadata;

    .line 65
    .line 66
    invoke-direct {p1, v3}, Lcom/amazonaws/services/s3/S3ResponseMetadata;-><init>(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->c(Lcom/amazonaws/ResponseMetadata;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method protected d(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_a

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v3, "x-amz-meta-"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/16 v3, 0xb

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2, v2, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v3, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->b:Ljava/util/Set;

    .line 57
    .line 58
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    sget-object v1, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 65
    .line 66
    const-string v3, "%s is ignored."

    .line 67
    .line 68
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v3, "Last-Modified"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->d(Ljava/lang/String;)Ljava/util/Date;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p2, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->W(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    sget-object v3, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 104
    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v5, "Unable to parse last modified date: "

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v3, v1, v2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    const-string v3, "Content-Length"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {p2, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->W(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :catch_1
    move-exception v2

    .line 160
    sget-object v3, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v5, "Unable to parse content length: "

    .line 168
    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v3, v1, v2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_3
    const-string v3, "ETag"

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_4

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p2, v2, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->W(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_4
    const-string v3, "Expires"

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_5

    .line 220
    .line 221
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v2}, Lcom/amazonaws/util/DateUtils;->i(Ljava/lang/String;)Ljava/util/Date;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {p2, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->X(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :catch_2
    move-exception v2

    .line 237
    sget-object v3, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 238
    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v5, "Unable to parse http expiration date: "

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-interface {v3, v1, v2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_5
    const-string/jumbo v3, "x-amz-expiration"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_6

    .line 275
    .line 276
    new-instance v1, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    .line 277
    .line 278
    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, p2, p1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->b(Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazonaws/http/HttpResponse;)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_6
    const-string/jumbo v3, "x-amz-restore"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_7

    .line 294
    .line 295
    new-instance v1, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;

    .line 296
    .line 297
    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, p2, p1}, Lcom/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->b(Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;Lcom/amazonaws/http/HttpResponse;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_7
    const-string/jumbo v3, "x-amz-request-charged"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_8

    .line 313
    .line 314
    new-instance v1, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    .line 315
    .line 316
    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, p2, p1}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;->b(Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;Lcom/amazonaws/http/HttpResponse;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_8
    const-string/jumbo v3, "x-amz-mp-parts-count"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_9

    .line 332
    .line 333
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {p2, v2, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->W(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :catch_3
    move-exception p1

    .line 353
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    .line 354
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v1, "Unable to parse part count. Header x-amz-mp-parts-count has corrupted data"

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    throw p2

    .line 380
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {p2, v2, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->W(Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_a
    return-void
.end method
