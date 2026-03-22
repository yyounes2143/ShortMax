.class public final Lio/ktor/client/engine/android/AndroidClientEngine;
.super Lio/ktor/client/engine/HttpClientEngineBase;
.source "AndroidClientEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientEngine.kt\nio/ktor/client/engine/android/AndroidClientEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"
    }
.end annotation


# instance fields
.field private final e:Lio/ktor/client/engine/android/AndroidEngineConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lor/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/engine/android/AndroidEngineConfig;)V
    .locals 1
    .param p1    # Lio/ktor/client/engine/android/AndroidEngineConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ktor-android"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lio/ktor/client/engine/HttpClientEngineBase;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine;->e:Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 12
    .line 13
    sget-object p1, Lio/ktor/client/plugins/HttpTimeout;->d:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/collections/y0;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine;->f:Ljava/util/Set;

    .line 20
    .line 21
    return-void
.end method

.method private final l(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/ktor/client/engine/android/AndroidClientEngine;->k()Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lor/d;->a()Ljava/net/Proxy;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "url.openConnection()"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    return-object p1
.end method


# virtual methods
.method public I()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lor/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidClientEngine;->f:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getConfig()Lor/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/client/engine/android/AndroidClientEngine;->k()Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Lio/ktor/client/engine/android/AndroidEngineConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidClientEngine;->e:Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public r0(Lsr/c;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsr/c;",
            "Lrs/c<",
            "-",
            "Lsr/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;

    .line 11
    .line 12
    iget v3, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;-><init>(Lio/ktor/client/engine/android/AndroidClientEngine;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->l:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    if-eq v4, v7, :cond_3

    .line 44
    .line 45
    if-eq v4, v6, :cond_2

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    iget-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->k:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 65
    .line 66
    iget-object v6, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->j:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v6, Lbs/a;

    .line 69
    .line 70
    iget-object v7, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->i:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    .line 73
    .line 74
    iget-object v9, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->h:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v9, Lsr/c;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_3
    iget-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->i:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Lsr/c;

    .line 86
    .line 87
    iget-object v9, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->h:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v9, Lio/ktor/client/engine/android/AndroidClientEngine;

    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v17, v4

    .line 95
    .line 96
    move-object v4, v1

    .line 97
    move-object/from16 v1, v17

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->h:Ljava/lang/Object;

    .line 104
    .line 105
    move-object/from16 v1, p1

    .line 106
    .line 107
    iput-object v1, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->i:Ljava/lang/Object;

    .line 108
    .line 109
    iput v7, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 110
    .line 111
    invoke-static {v2}, Lio/ktor/client/engine/UtilsKt;->b(Lrs/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-ne v4, v3, :cond_5

    .line 116
    .line 117
    return-object v3

    .line 118
    :cond_5
    move-object v9, v0

    .line 119
    :goto_1
    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 120
    .line 121
    invoke-static {v8, v7, v8}, Lio/ktor/util/date/a;->b(Ljava/lang/Long;ILjava/lang/Object;)Lbs/a;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v1}, Lsr/c;->h()Lio/ktor/http/Url;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v11}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v1}, Lsr/c;->b()Lxr/b;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v1}, Lsr/c;->e()Lwr/f;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    sget-object v14, Lwr/i;->a:Lwr/i;

    .line 142
    .line 143
    invoke-virtual {v14}, Lwr/i;->g()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    invoke-interface {v13, v15}, Lyr/p;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    if-eqz v13, :cond_6

    .line 152
    .line 153
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v15

    .line 157
    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {v12}, Lxr/b;->a()Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    :goto_2
    invoke-direct {v9, v11}, Lio/ktor/client/engine/android/AndroidClientEngine;->l(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v9}, Lio/ktor/client/engine/android/AndroidClientEngine;->k()Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    invoke-virtual {v15}, Lio/ktor/client/engine/android/AndroidEngineConfig;->b()I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    invoke-virtual {v11, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Lio/ktor/client/engine/android/AndroidClientEngine;->k()Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    invoke-virtual {v15}, Lio/ktor/client/engine/android/AndroidEngineConfig;->d()I

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    invoke-virtual {v11, v15}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v11, v1}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->d(Ljava/net/HttpURLConnection;Lsr/c;)V

    .line 193
    .line 194
    .line 195
    instance-of v15, v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 196
    .line 197
    if-eqz v15, :cond_7

    .line 198
    .line 199
    invoke-virtual {v9}, Lio/ktor/client/engine/android/AndroidClientEngine;->k()Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    invoke-virtual {v15}, Lio/ktor/client/engine/android/AndroidEngineConfig;->e()Lkotlin/jvm/functions/Function1;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    invoke-interface {v15, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {v1}, Lsr/c;->f()Lwr/m;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    invoke-virtual {v15}, Lwr/m;->d()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-virtual {v11, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const/4 v15, 0x0

    .line 222
    invoke-virtual {v11, v15}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lsr/c;->e()Lwr/f;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    new-instance v8, Lio/ktor/client/engine/android/AndroidClientEngine$execute$connection$1$1;

    .line 233
    .line 234
    invoke-direct {v8, v11}, Lio/ktor/client/engine/android/AndroidClientEngine$execute$connection$1$1;-><init>(Ljava/net/HttpURLConnection;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v5, v12, v8}, Lio/ktor/client/engine/UtilsKt;->c(Lwr/f;Lxr/b;Lkotlin/jvm/functions/Function2;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9}, Lio/ktor/client/engine/android/AndroidClientEngine;->k()Lio/ktor/client/engine/android/AndroidEngineConfig;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v5}, Lio/ktor/client/engine/android/AndroidEngineConfig;->c()Lkotlin/jvm/functions/Function1;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-interface {v5, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-static {}, Lio/ktor/client/engine/android/AndroidClientEngineKt;->a()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v1}, Lsr/c;->f()Lwr/m;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_9

    .line 264
    .line 265
    instance-of v5, v12, Lxr/b$b;

    .line 266
    .line 267
    if-eqz v5, :cond_8

    .line 268
    .line 269
    goto/16 :goto_5

    .line 270
    .line 271
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 272
    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    const-string v4, "Request of type "

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Lsr/c;->f()Lwr/m;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v1, " couldn\'t send a body with the [Android] engine."

    .line 291
    .line 292
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v2

    .line 307
    :cond_9
    if-nez v13, :cond_a

    .line 308
    .line 309
    invoke-virtual {v14}, Lwr/i;->u()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v11, v5}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    if-nez v5, :cond_a

    .line 318
    .line 319
    invoke-virtual {v14}, Lwr/i;->u()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    const-string v8, "chunked"

    .line 324
    .line 325
    invoke-virtual {v11, v5, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_a
    if-eqz v13, :cond_b

    .line 329
    .line 330
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    .line 331
    .line 332
    .line 333
    move-result-wide v8

    .line 334
    invoke-virtual {v11, v8, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 335
    .line 336
    .line 337
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_b
    const/4 v5, 0x0

    .line 341
    :goto_3
    if-nez v5, :cond_c

    .line 342
    .line 343
    invoke-virtual {v11, v15}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 344
    .line 345
    .line 346
    :cond_c
    invoke-virtual {v11, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v11}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    const-string v7, "outputStream"

    .line 354
    .line 355
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iput-object v1, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->h:Ljava/lang/Object;

    .line 359
    .line 360
    iput-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->i:Ljava/lang/Object;

    .line 361
    .line 362
    iput-object v10, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->j:Ljava/lang/Object;

    .line 363
    .line 364
    iput-object v11, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->k:Ljava/lang/Object;

    .line 365
    .line 366
    iput v6, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 367
    .line 368
    invoke-static {v12, v5, v4, v2}, Lio/ktor/client/engine/android/AndroidClientEngineKt;->b(Lxr/b;Ljava/io/OutputStream;Lkotlin/coroutines/CoroutineContext;Lrs/c;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    if-ne v5, v3, :cond_d

    .line 373
    .line 374
    return-object v3

    .line 375
    :cond_d
    move-object v9, v1

    .line 376
    move-object v7, v4

    .line 377
    move-object v6, v10

    .line 378
    move-object v4, v11

    .line 379
    :goto_4
    move-object v11, v4

    .line 380
    move-object v10, v6

    .line 381
    move-object v4, v7

    .line 382
    move-object v1, v9

    .line 383
    :goto_5
    new-instance v5, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;

    .line 384
    .line 385
    invoke-direct {v5, v4, v1, v10}, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;-><init>(Lkotlin/coroutines/CoroutineContext;Lsr/c;Lbs/a;)V

    .line 386
    .line 387
    .line 388
    const/4 v4, 0x0

    .line 389
    iput-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->h:Ljava/lang/Object;

    .line 390
    .line 391
    iput-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->i:Ljava/lang/Object;

    .line 392
    .line 393
    iput-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->j:Ljava/lang/Object;

    .line 394
    .line 395
    iput-object v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->k:Ljava/lang/Object;

    .line 396
    .line 397
    const/4 v4, 0x3

    .line 398
    iput v4, v2, Lio/ktor/client/engine/android/AndroidClientEngine$execute$1;->n:I

    .line 399
    .line 400
    invoke-static {v11, v1, v5, v2}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->e(Ljava/net/HttpURLConnection;Lsr/c;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    if-ne v1, v3, :cond_e

    .line 405
    .line 406
    return-object v3

    .line 407
    :cond_e
    :goto_6
    return-object v1
.end method
