.class public final Lio/ktor/client/plugins/HttpRedirect$Plugin;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"

# interfaces
.implements Lqr/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRedirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plugin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqr/d<",
        "Lio/ktor/client/plugins/HttpRedirect$a;",
        "Lio/ktor/client/plugins/HttpRedirect;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpRedirect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRedirect.kt\nio/ktor/client/plugins/HttpRedirect$Plugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRedirect$Plugin;-><init>()V

    return-void
.end method

.method public static final synthetic c(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->e(Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/call/HttpClientCall;ZLio/ktor/client/HttpClient;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqr/h;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lio/ktor/client/call/HttpClientCall;",
            "Z",
            "Lio/ktor/client/HttpClient;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    instance-of v2, v1, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;

    .line 11
    .line 12
    iget v3, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->t:I

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
    iput v3, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->t:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;-><init>(Lio/ktor/client/plugins/HttpRedirect$Plugin;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->r:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->t:I

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    iget-boolean v0, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->q:Z

    .line 47
    .line 48
    iget-object v5, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->p:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v7, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->o:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v7, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v8, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->n:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v8, Lio/ktor/http/k;

    .line 59
    .line 60
    iget-object v9, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->m:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iget-object v10, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->l:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v11, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->k:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v11, Lio/ktor/client/HttpClient;

    .line 71
    .line 72
    iget-object v12, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->j:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v12, Lio/ktor/client/request/HttpRequestBuilder;

    .line 75
    .line 76
    iget-object v13, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v13, Lqr/h;

    .line 79
    .line 80
    iget-object v14, v2, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v14, Lio/ktor/client/plugins/HttpRedirect$Plugin;

    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v3, v2

    .line 88
    move v2, v0

    .line 89
    move-object v0, v13

    .line 90
    move-object/from16 v16, v9

    .line 91
    .line 92
    move-object v9, v7

    .line 93
    move-object v7, v12

    .line 94
    move-object/from16 v12, v16

    .line 95
    .line 96
    move-object/from16 v17, v10

    .line 97
    .line 98
    move-object v10, v8

    .line 99
    move-object/from16 v8, v17

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lqr/f;->c(Lwr/o;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_3
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 135
    .line 136
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 137
    .line 138
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 139
    .line 140
    .line 141
    move-object/from16 v7, p2

    .line 142
    .line 143
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-interface {v8}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v8}, Lio/ktor/http/Url;->k()Lio/ktor/http/k;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lwr/w;->a(Lio/ktor/http/Url;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v9, v0

    .line 170
    move-object v14, v3

    .line 171
    move-object v11, v5

    .line 172
    move-object v10, v8

    .line 173
    move-object/from16 v0, p1

    .line 174
    .line 175
    move-object v8, v1

    .line 176
    move-object v5, v2

    .line 177
    move/from16 v1, p4

    .line 178
    .line 179
    move-object/from16 v2, p5

    .line 180
    .line 181
    :goto_1
    invoke-virtual {v2}, Lio/ktor/client/HttpClient;->l()Lvr/b;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    invoke-virtual {v14}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->d()Lvr/a;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    iget-object v15, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v15, Lio/ktor/client/call/HttpClientCall;

    .line 192
    .line 193
    invoke-virtual {v15}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-virtual {v12, v13, v15}, Lvr/b;->a(Lvr/a;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget-object v12, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v12, Lio/ktor/client/call/HttpClientCall;

    .line 203
    .line 204
    invoke-virtual {v12}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-interface {v12}, Lwr/k;->a()Lwr/f;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    sget-object v13, Lwr/i;->a:Lwr/i;

    .line 213
    .line 214
    invoke-virtual {v13}, Lwr/i;->r()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-interface {v12, v15}, Lyr/p;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-static {}, Lqr/f;->b()Ldu/a;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v3, "Received redirect response to "

    .line 232
    .line 233
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v3, " for request "

    .line 240
    .line 241
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-interface {v15, v3}, Ldu/a;->b(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v3, Lio/ktor/client/request/HttpRequestBuilder;

    .line 259
    .line 260
    invoke-direct {v3}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v6, Lio/ktor/client/request/HttpRequestBuilder;

    .line 266
    .line 267
    invoke-virtual {v3, v6}, Lio/ktor/client/request/HttpRequestBuilder;->p(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v6}, Lio/ktor/http/h;->k()Lwr/q;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-interface {v6}, Lyr/q;->clear()V

    .line 279
    .line 280
    .line 281
    if-eqz v12, :cond_4

    .line 282
    .line 283
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v6, v12}, Lio/ktor/http/URLParserKt;->j(Lio/ktor/http/h;Ljava/lang/String;)Lio/ktor/http/h;

    .line 288
    .line 289
    .line 290
    :cond_4
    if-nez v1, :cond_5

    .line 291
    .line 292
    invoke-static {v10}, Lwr/t;->a(Lio/ktor/http/k;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_5

    .line 297
    .line 298
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v6}, Lio/ktor/http/h;->o()Lio/ktor/http/k;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-static {v6}, Lwr/t;->a(Lio/ktor/http/k;)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-nez v6, :cond_5

    .line 311
    .line 312
    invoke-static {}, Lqr/f;->b()Ldu/a;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v2, "Can not redirect "

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v2, " because of security downgrade"

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-interface {v0, v1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 346
    .line 347
    return-object v0

    .line 348
    :cond_5
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-static {v6}, Lio/ktor/http/j;->e(Lio/ktor/http/h;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-nez v6, :cond_6

    .line 361
    .line 362
    invoke-virtual {v3}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v13}, Lwr/i;->e()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v12

    .line 370
    invoke-virtual {v6, v12}, Lio/ktor/util/StringValuesBuilderImpl;->j(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {}, Lqr/f;->b()Ldu/a;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    new-instance v12, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v13, "Removing Authorization header from redirect for "

    .line 383
    .line 384
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    invoke-interface {v6, v12}, Ldu/a;->b(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_6
    iput-object v3, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 402
    .line 403
    iput-object v14, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->h:Ljava/lang/Object;

    .line 404
    .line 405
    iput-object v0, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->i:Ljava/lang/Object;

    .line 406
    .line 407
    iput-object v7, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->j:Ljava/lang/Object;

    .line 408
    .line 409
    iput-object v2, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->k:Ljava/lang/Object;

    .line 410
    .line 411
    iput-object v8, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->l:Ljava/lang/Object;

    .line 412
    .line 413
    iput-object v11, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->m:Ljava/lang/Object;

    .line 414
    .line 415
    iput-object v10, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->n:Ljava/lang/Object;

    .line 416
    .line 417
    iput-object v9, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->o:Ljava/lang/Object;

    .line 418
    .line 419
    iput-object v8, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->p:Ljava/lang/Object;

    .line 420
    .line 421
    iput-boolean v1, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->q:Z

    .line 422
    .line 423
    const/4 v6, 0x1

    .line 424
    iput v6, v5, Lio/ktor/client/plugins/HttpRedirect$Plugin$handleCall$1;->t:I

    .line 425
    .line 426
    invoke-interface {v0, v3, v5}, Lqr/h;->a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    if-ne v3, v4, :cond_7

    .line 431
    .line 432
    return-object v4

    .line 433
    :cond_7
    move-object v12, v11

    .line 434
    move-object v11, v2

    .line 435
    move v2, v1

    .line 436
    move-object v1, v3

    .line 437
    move-object v3, v5

    .line 438
    move-object v5, v8

    .line 439
    :goto_2
    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 440
    .line 441
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v1, Lio/ktor/client/call/HttpClientCall;

    .line 444
    .line 445
    invoke-virtual {v1}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-static {v1}, Lqr/f;->c(Lwr/o;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-nez v1, :cond_8

    .line 458
    .line 459
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 460
    .line 461
    return-object v0

    .line 462
    :cond_8
    move v1, v2

    .line 463
    move-object v5, v3

    .line 464
    move-object v2, v11

    .line 465
    move-object v11, v12

    .line 466
    move-object/from16 v3, p0

    .line 467
    .line 468
    goto/16 :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->g(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRedirect;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpRedirect;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRedirect$Plugin;->f(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Lvr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvr/a<",
            "Ltr/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirect;->c()Lvr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/HttpRedirect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/ktor/client/plugins/HttpSend;->c:Lio/ktor/client/plugins/HttpSend$Plugin;

    .line 12
    .line 13
    invoke-static {p2, v0}, Lqr/e;->b(Lio/ktor/client/HttpClient;Lqr/d;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lio/ktor/client/plugins/HttpSend;

    .line 18
    .line 19
    new-instance v1, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p1, p2, v2}, Lio/ktor/client/plugins/HttpRedirect$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpRedirect;Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/HttpSend;->d(Lat/n;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public g(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRedirect;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/HttpRedirect$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/HttpRedirect;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/plugins/HttpRedirect$a;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpRedirect$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lio/ktor/client/plugins/HttpRedirect;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRedirect$a;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRedirect$a;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {p1, v1, v0, v2}, Lio/ktor/client/plugins/HttpRedirect;-><init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public getKey()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpRedirect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpRedirect;->d()Lyr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
