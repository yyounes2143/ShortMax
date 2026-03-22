.class public final Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;
.super Ljava/lang/Object;
.source "OkHttp3Client.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/network/core/OkHttp3Client;->makeRequest(Lcom/unity3d/services/core/network/model/HttpRequest;JJJLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,228:1\n1#2:229\n20#3:230\n22#3:234\n47#3:235\n49#3:239\n50#4:231\n55#4:233\n50#4:236\n55#4:238\n106#5:232\n106#5:237\n1266#6,3:240\n*S KotlinDebug\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1\n*L\n165#1:230\n165#1:234\n166#1:235\n166#1:239\n165#1:231\n165#1:233\n166#1:236\n166#1:238\n165#1:232\n166#1:237\n174#1:240,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $continuation:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $file:Ljava/io/File;

.field final synthetic $request:Lcom/unity3d/services/core/network/model/HttpRequest;

.field final synthetic this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;


# direct methods
.method constructor <init>(Lgt/i;Lcom/unity3d/services/core/network/core/OkHttp3Client;Ljava/io/File;Lcom/unity3d/services/core/network/model/HttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/i<",
            "-",
            "Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;",
            ">;",
            "Lcom/unity3d/services/core/network/core/OkHttp3Client;",
            "Ljava/io/File;",
            "Lcom/unity3d/services/core/network/model/HttpRequest;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$continuation:Lgt/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$file:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$continuation:Lgt/i;

    .line 12
    .line 13
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$continuation:Lgt/i;

    .line 18
    .line 19
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 20
    .line 21
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Network request failed with code "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v0, 0x2

    .line 64
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$continuation:Lgt/i;

    .line 68
    .line 69
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 70
    .line 71
    new-instance v2, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;

    .line 72
    .line 73
    invoke-direct {v2, p2, v1, v0, v1}, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;-><init>(Lokhttp3/Response;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {p1, p2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    move-exception p1

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    new-instance v4, Lokio/Buffer;

    .line 92
    .line 93
    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v5, "Cache-Control"

    .line 97
    .line 98
    invoke-virtual {p2, v5}, Lokhttp3/Response;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const/4 v6, 0x1

    .line 103
    const/4 v7, 0x0

    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    const-string v8, "no-cache"

    .line 107
    .line 108
    invoke-static {v5, v8, v7, v0, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    move v7, v6

    .line 115
    :cond_2
    if-eqz v7, :cond_3

    .line 116
    .line 117
    move-object v0, p0

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    move-object v0, v1

    .line 120
    :goto_0
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$file:Ljava/io/File;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-static {v0}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object v0, v1

    .line 143
    :goto_1
    const-wide/16 v7, 0x0

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v5}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    move-object v5, v1

    .line 157
    :goto_2
    if-eqz v5, :cond_7

    .line 158
    .line 159
    const-wide/16 v9, 0x3e8

    .line 160
    .line 161
    invoke-static {v5, v9, v10}, Lkotlinx/coroutines/flow/c;->q(Lkt/b;J)Lkt/b;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    if-eqz v9, :cond_7

    .line 166
    .line 167
    new-instance v10, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$$inlined$filter$1;

    .line 168
    .line 169
    invoke-direct {v10, v9}, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$$inlined$filter$1;-><init>(Lkt/b;)V

    .line 170
    .line 171
    .line 172
    new-instance v9, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$$inlined$map$1;

    .line 173
    .line 174
    invoke-direct {v9, v10, v2, v3}, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$$inlined$map$1;-><init>(Lkt/b;J)V

    .line 175
    .line 176
    .line 177
    new-instance v2, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$request:Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 180
    .line 181
    invoke-direct {v2, v3, v1}, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3;-><init>(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v9, v2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-eqz v2, :cond_7

    .line 189
    .line 190
    iget-object v3, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->this$0:Lcom/unity3d/services/core/network/core/OkHttp3Client;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/unity3d/services/core/network/core/OkHttp3Client;->access$getDispatchers$p(Lcom/unity3d/services/core/network/core/OkHttp3Client;)Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-interface {v3}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lgt/c0;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v3}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    goto :goto_3

    .line 209
    :cond_7
    move-object v2, v1

    .line 210
    :goto_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    if-nez v9, :cond_9

    .line 221
    .line 222
    :cond_8
    invoke-virtual {v4}, Lokio/Buffer;->buffer()Lokio/Buffer;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    :cond_9
    new-instance v10, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$1;

    .line 227
    .line 228
    invoke-direct {v10, v3, v9}, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$1;-><init>(Lokio/BufferedSource;Lokio/Buffer;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v10}, Lkotlin/sequences/j;->i(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    sget-object v11, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$2;->INSTANCE:Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1$onResponse$2;

    .line 236
    .line 237
    invoke-static {v10, v11}, Lkotlin/sequences/j;->N(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    invoke-interface {v10}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    :cond_a
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_c

    .line 250
    .line 251
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    check-cast v11, Ljava/lang/Number;

    .line 256
    .line 257
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v11

    .line 261
    add-long/2addr v7, v11

    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    invoke-interface {v0}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 265
    .line 266
    .line 267
    :cond_b
    if-eqz v5, :cond_a

    .line 268
    .line 269
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    invoke-interface {v5, v11}, Lkt/d;->g(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_c
    invoke-virtual {v4}, Lokio/Buffer;->close()V

    .line 278
    .line 279
    .line 280
    if-eqz v0, :cond_d

    .line 281
    .line 282
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 283
    .line 284
    .line 285
    :cond_d
    if-eqz v2, :cond_e

    .line 286
    .line 287
    invoke-static {v2, v1, v6, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_e
    invoke-interface {v3}, Lokio/Source;->close()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9}, Lokio/Buffer;->close()V

    .line 297
    .line 298
    .line 299
    if-eqz v0, :cond_f

    .line 300
    .line 301
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$file:Ljava/io/File;

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_f
    invoke-virtual {v4}, Lokio/Buffer;->readByteArray()[B

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    :goto_5
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$continuation:Lgt/i;

    .line 309
    .line 310
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 311
    .line 312
    new-instance v1, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;

    .line 313
    .line 314
    invoke-direct {v1, p2, p1}, Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;-><init>(Lokhttp3/Response;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :goto_6
    iget-object p2, p0, Lcom/unity3d/services/core/network/core/OkHttp3Client$makeRequest$2$1;->$continuation:Lgt/i;

    .line 326
    .line 327
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 328
    .line 329
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-interface {p2, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :goto_7
    return-void
.end method
