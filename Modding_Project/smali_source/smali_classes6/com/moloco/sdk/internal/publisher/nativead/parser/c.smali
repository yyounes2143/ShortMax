.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrepareNativeAssets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,180:1\n1485#2:181\n1510#2,3:182\n1513#2,3:192\n381#3,7:185\n29#4:195\n*S KotlinDebug\n*F\n+ 1 PrepareNativeAssets.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/PrepareNativeAssetsKt\n*L\n31#1:181\n31#1:182,3\n31#1:192,3\n31#1:185,7\n119#1:195\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/n;->a(Landroid/content/Context;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroid/content/Context;Ljava/util/List;JLrs/c;)Ljava/lang/Object;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            ">;J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/d;",
            "Lcom/moloco/sdk/internal/publisher/nativead/parser/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    iget-wide p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->h:J

    .line 59
    .line 60
    iget-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->j:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Ljava/util/List;

    .line 63
    .line 64
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->i:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lms/i;

    .line 67
    .line 68
    :try_start_0
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/moloco/sdk/internal/publisher/nativead/parser/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    move-object v5, p0

    .line 72
    move-object v6, p1

    .line 73
    :goto_1
    move-wide v7, p2

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance p4, Lcom/moloco/sdk/internal/publisher/nativead/parser/d;

    .line 83
    .line 84
    invoke-direct {p4, p0}, Lcom/moloco/sdk/internal/publisher/nativead/parser/d;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p4}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance p4, Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v5, v2

    .line 111
    check-cast v5, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->b()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-nez v6, :cond_4

    .line 126
    .line 127
    new-instance v6, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_4
    check-cast v6, Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/util/List;

    .line 150
    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :cond_6
    move-object v6, p1

    .line 158
    const/4 p1, 0x0

    .line 159
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Ljava/util/List;

    .line 168
    .line 169
    if-nez p1, :cond_7

    .line 170
    .line 171
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :cond_7
    :try_start_1
    new-instance p4, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;

    .line 176
    .line 177
    const/4 v10, 0x0

    .line 178
    move-object v5, p4

    .line 179
    move-object v7, p0

    .line 180
    move-wide v8, p2

    .line 181
    invoke-direct/range {v5 .. v10}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$d;-><init>(Ljava/util/List;Lms/i;JLrs/c;)V

    .line 182
    .line 183
    .line 184
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->i:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->j:Ljava/lang/Object;

    .line 187
    .line 188
    iput-wide p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->h:J

    .line 189
    .line 190
    iput v4, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 191
    .line 192
    invoke-static {p4, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p4

    .line 196
    if-ne p4, v1, :cond_8

    .line 197
    .line 198
    return-object v1

    .line 199
    :cond_8
    move-object v6, p0

    .line 200
    move-object v5, p1

    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :goto_3
    move-object p0, p4

    .line 204
    check-cast p0, Ljava/util/List;
    :try_end_1
    .catch Lcom/moloco/sdk/internal/publisher/nativead/parser/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .line 206
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c;

    .line 207
    .line 208
    const/4 v9, 0x0

    .line 209
    move-object v4, p1

    .line 210
    invoke-direct/range {v4 .. v9}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$c;-><init>(Ljava/util/List;Lms/i;JLrs/c;)V

    .line 211
    .line 212
    .line 213
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->i:Ljava/lang/Object;

    .line 214
    .line 215
    const/4 p2, 0x0

    .line 216
    iput-object p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->j:Ljava/lang/Object;

    .line 217
    .line 218
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$b;->l:I

    .line 219
    .line 220
    invoke-static {p1, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p4

    .line 224
    if-ne p4, v1, :cond_9

    .line 225
    .line 226
    return-object v1

    .line 227
    :cond_9
    :goto_4
    check-cast p4, Ljava/util/List;

    .line 228
    .line 229
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 237
    .line 238
    .line 239
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 242
    .line 243
    .line 244
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v5, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-static {p0, p4}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_10

    .line 267
    .line 268
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Lkotlin/Pair;

    .line 273
    .line 274
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    check-cast p2, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 279
    .line 280
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 285
    .line 286
    instance-of p3, p1, Lcom/moloco/sdk/internal/g0$a;

    .line 287
    .line 288
    if-eqz p3, :cond_a

    .line 289
    .line 290
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_a
    instance-of p2, p1, Lcom/moloco/sdk/internal/g0$b;

    .line 305
    .line 306
    if-eqz p2, :cond_f

    .line 307
    .line 308
    check-cast p1, Lcom/moloco/sdk/internal/g0$b;

    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/model/b;

    .line 315
    .line 316
    instance-of p2, p1, Lcom/moloco/sdk/internal/publisher/nativead/model/b$a;

    .line 317
    .line 318
    if-eqz p2, :cond_b

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->a()Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 325
    .line 326
    .line 327
    move-result p2

    .line 328
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_b
    instance-of p2, p1, Lcom/moloco/sdk/internal/publisher/nativead/model/b$b;

    .line 349
    .line 350
    if-eqz p2, :cond_c

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->a()Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_c
    instance-of p2, p1, Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;

    .line 381
    .line 382
    if-eqz p2, :cond_d

    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->a()Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 389
    .line 390
    .line 391
    move-result p2

    .line 392
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    goto/16 :goto_5

    .line 412
    .line 413
    :cond_d
    instance-of p2, p1, Lcom/moloco/sdk/internal/publisher/nativead/model/b$d;

    .line 414
    .line 415
    if-eqz p2, :cond_e

    .line 416
    .line 417
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/b;->a()Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;->a()I

    .line 422
    .line 423
    .line 424
    move-result p2

    .line 425
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_e
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 447
    .line 448
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 449
    .line 450
    .line 451
    throw p0

    .line 452
    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 453
    .line 454
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 455
    .line 456
    .line 457
    throw p0

    .line 458
    :cond_10
    new-instance p0, Lcom/moloco/sdk/internal/g0$b;

    .line 459
    .line 460
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 461
    .line 462
    move-object v0, p1

    .line 463
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 464
    .line 465
    .line 466
    invoke-direct {p0, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    return-object p0

    .line 470
    :goto_6
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 471
    .line 472
    const/16 v5, 0x8

    .line 473
    .line 474
    const/4 v6, 0x0

    .line 475
    const-string v1, "PrepareNativeAssets"

    .line 476
    .line 477
    const-string v2, "Failed to prepare required assets"

    .line 478
    .line 479
    const/4 v4, 0x0

    .line 480
    move-object v3, p0

    .line 481
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 485
    .line 486
    invoke-direct {p1, p0}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    return-object p1
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->g(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/moloco/sdk/service_locator/b$g;->a:Lcom/moloco/sdk/service_locator/b$g;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/moloco/sdk/service_locator/b$g;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->g(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final synthetic e(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->h(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->i(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;->c()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->h:Ljava/lang/Object;

    .line 62
    .line 63
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$a;->j:I

    .line 64
    .line 65
    invoke-interface {p1, p2, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-ne p2, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;

    .line 73
    .line 74
    instance-of p1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 79
    .line 80
    const-string v1, "PrepareNativeAssets"

    .line 81
    .line 82
    const-string v2, "Successfully loaded image asset media"

    .line 83
    .line 84
    const/16 v5, 0xc

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;->a()Ljava/io/File;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p2, "getAbsolutePath(...)"

    .line 103
    .line 104
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "parse(this)"

    .line 112
    .line 113
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    new-instance p2, Lcom/moloco/sdk/internal/g0$b;

    .line 117
    .line 118
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/model/b$b;

    .line 119
    .line 120
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/b$b;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Landroid/net/Uri;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, v0}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception p0

    .line 128
    move-object v3, p0

    .line 129
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 130
    .line 131
    const/16 v5, 0x8

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    const-string v1, "PrepareNativeAssets"

    .line 135
    .line 136
    const-string v2, "Failed to prepare image asset"

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance p0, Lcom/moloco/sdk/internal/g0$a;

    .line 143
    .line 144
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 145
    .line 146
    invoke-direct {p0, p1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_4
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 151
    .line 152
    const/16 v5, 0xc

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const-string v1, "PrepareNativeAssets"

    .line 156
    .line 157
    const-string v2, "Failed to fetch image asset media"

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance p2, Lcom/moloco/sdk/internal/g0$a;

    .line 165
    .line 166
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 167
    .line 168
    invoke-direct {p2, p0}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    return-object p2
.end method

.method public static final h(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;JLrs/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->l:I

    .line 32
    .line 33
    const-string v9, "Failed to fetch video asset media: "

    .line 34
    .line 35
    const/4 v10, 0x2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    if-ne v1, v10, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 46
    .line 47
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    iget-wide p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->j:J

    .line 60
    .line 61
    iget-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->i:Ljava/lang/Object;

    .line 62
    .line 63
    move-object p1, p0

    .line 64
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;

    .line 65
    .line 66
    iget-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->h:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 69
    .line 70
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->h:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->i:Ljava/lang/Object;

    .line 84
    .line 85
    iput-wide p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->j:J

    .line 86
    .line 87
    iput v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->l:I

    .line 88
    .line 89
    const/4 v6, 0x2

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v4, 0x1

    .line 93
    move-object v1, p1

    .line 94
    move-object v2, p4

    .line 95
    move-object v5, v0

    .line 96
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;Ljava/lang/String;Ljava/lang/String;ZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    if-ne p4, v8, :cond_4

    .line 101
    .line 102
    return-object v8

    .line 103
    :cond_4
    :goto_1
    check-cast p4, Lcom/moloco/sdk/internal/g0;

    .line 104
    .line 105
    instance-of v1, p4, Lcom/moloco/sdk/internal/g0$b;

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    invoke-static {p2, p3}, Lkotlin/time/b;->q(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide p2

    .line 113
    long-to-double p2, p2

    .line 114
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    mul-double/2addr p2, v1

    .line 120
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 121
    .line 122
    invoke-static {p2, p3, v1}, Lkotlin/time/c;->r(DLkotlin/time/DurationUnit;)J

    .line 123
    .line 124
    .line 125
    move-result-wide p2

    .line 126
    check-cast p4, Lcom/moloco/sdk/internal/g0$b;

    .line 127
    .line 128
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    check-cast p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 133
    .line 134
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->h:Ljava/lang/Object;

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    iput-object v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->i:Ljava/lang/Object;

    .line 138
    .line 139
    iput v10, v0, Lcom/moloco/sdk/internal/publisher/nativead/parser/c$e;->l:I

    .line 140
    .line 141
    invoke-interface {p1, p4, p2, p3, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;JLrs/c;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    if-ne p4, v8, :cond_5

    .line 146
    .line 147
    return-object v8

    .line 148
    :cond_5
    :goto_2
    check-cast p4, Lcom/moloco/sdk/internal/g0;

    .line 149
    .line 150
    instance-of p1, p4, Lcom/moloco/sdk/internal/g0$b;

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 155
    .line 156
    const/16 v5, 0xc

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    const-string v1, "PrepareNativeAssets"

    .line 160
    .line 161
    const-string v2, "Successfully loaded video asset media"

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/moloco/sdk/internal/g0$b;

    .line 169
    .line 170
    new-instance p2, Lcom/moloco/sdk/internal/publisher/nativead/model/b$d;

    .line 171
    .line 172
    check-cast p4, Lcom/moloco/sdk/internal/g0$b;

    .line 173
    .line 174
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    check-cast p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 179
    .line 180
    invoke-direct {p2, p0, p3}, Lcom/moloco/sdk/internal/publisher/nativead/model/b$d;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    instance-of p0, p4, Lcom/moloco/sdk/internal/g0$a;

    .line 188
    .line 189
    if-eqz p0, :cond_7

    .line 190
    .line 191
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 192
    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    check-cast p4, Lcom/moloco/sdk/internal/g0$a;

    .line 202
    .line 203
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const/16 v5, 0xc

    .line 215
    .line 216
    const/4 v6, 0x0

    .line 217
    const-string v1, "PrepareNativeAssets"

    .line 218
    .line 219
    const/4 v3, 0x0

    .line 220
    const/4 v4, 0x0

    .line 221
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 225
    .line 226
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 227
    .line 228
    invoke-direct {p1, p0}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :goto_3
    return-object p1

    .line 232
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 233
    .line 234
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 235
    .line 236
    .line 237
    throw p0

    .line 238
    :cond_8
    instance-of p0, p4, Lcom/moloco/sdk/internal/g0$a;

    .line 239
    .line 240
    if-eqz p0, :cond_9

    .line 241
    .line 242
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 243
    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    check-cast p4, Lcom/moloco/sdk/internal/g0$a;

    .line 253
    .line 254
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const/16 v5, 0xc

    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    const-string v1, "PrepareNativeAssets"

    .line 269
    .line 270
    const/4 v3, 0x0

    .line 271
    const/4 v4, 0x0

    .line 272
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    new-instance p0, Lcom/moloco/sdk/internal/g0$a;

    .line 276
    .line 277
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 278
    .line 279
    invoke-direct {p0, p1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    return-object p0

    .line 283
    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 284
    .line 285
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 286
    .line 287
    .line 288
    throw p0
.end method

.method public static final i(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;Lms/i;JLrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            "Lms/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;",
            ">;J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/b;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/moloco/sdk/internal/g0$b;

    .line 6
    .line 7
    new-instance p2, Lcom/moloco/sdk/internal/publisher/nativead/model/b$a;

    .line 8
    .line 9
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/moloco/sdk/internal/publisher/nativead/model/b$a;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-static {p0, p2, p4, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->d(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    instance-of v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    new-instance p1, Lcom/moloco/sdk/internal/g0$b;

    .line 36
    .line 37
    new-instance p2, Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;

    .line 38
    .line 39
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/moloco/sdk/internal/publisher/nativead/model/b$c;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-object p1

    .line 48
    :cond_2
    instance-of v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    check-cast p0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 53
    .line 54
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;

    .line 59
    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->h(Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;JLrs/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 66
    .line 67
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0
.end method
