.class public final Lad-manager/e/x;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/io/Serializable;

.field public k:J

.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lf/n;

.field public final synthetic o:Lca/f;

.field public final synthetic p:Lf/g;


# direct methods
.method public constructor <init>(Lf/n;Lca/f;Lf/g;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/x;->n:Lf/n;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/x;->o:Lca/f;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/x;->p:Lf/g;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 4

    .line 1
    new-instance v0, Lad-manager/e/x;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/x;->n:Lf/n;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/e/x;->o:Lca/f;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/e/x;->p:Lf/g;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lad-manager/e/x;-><init>(Lf/n;Lca/f;Lf/g;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/e/x;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/e/x;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/e/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lad-manager/e/x;->l:I

    .line 8
    .line 9
    const-string v5, "cost="

    .line 10
    .line 11
    const-string v6, "ms,"

    .line 12
    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    if-eq v2, v9, :cond_2

    .line 20
    .line 21
    if-eq v2, v8, :cond_1

    .line 22
    .line 23
    if-ne v2, v7, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    iget-wide v11, v0, Lad-manager/e/x;->k:J

    .line 39
    .line 40
    iget-object v2, v0, Lad-manager/e/x;->j:Ljava/io/Serializable;

    .line 41
    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v8, v0, Lad-manager/e/x;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v8, Ljava/util/List;

    .line 47
    .line 48
    iget-object v13, v0, Lad-manager/e/x;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v14, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v10, v8

    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    iget-wide v11, v0, Lad-manager/e/x;->k:J

    .line 63
    .line 64
    iget-object v2, v0, Lad-manager/e/x;->j:Ljava/io/Serializable;

    .line 65
    .line 66
    check-cast v2, Ljava/util/List;

    .line 67
    .line 68
    iget-object v13, v0, Lad-manager/e/x;->i:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v14, v0, Lad-manager/e/x;->h:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v14, Lkotlinx/coroutines/r;

    .line 75
    .line 76
    iget-object v15, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v8, v2

    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lgt/g0;

    .line 92
    .line 93
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v11, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v11, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    new-instance v14, Lad-manager/e/w;

    .line 106
    .line 107
    iget-object v11, v0, Lad-manager/e/x;->o:Lca/f;

    .line 108
    .line 109
    invoke-direct {v14, v11, v10}, Lad-manager/e/w;-><init>(Lca/f;Lrs/c;)V

    .line 110
    .line 111
    .line 112
    const/16 v16, 0x3

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    move-object v11, v2

    .line 119
    move-object/from16 p1, v15

    .line 120
    .line 121
    move/from16 v15, v16

    .line 122
    .line 123
    move-object/from16 v16, v17

    .line 124
    .line 125
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v11, v0, Lad-manager/e/x;->n:Lf/n;

    .line 135
    .line 136
    iget-object v12, v0, Lad-manager/e/x;->o:Lca/f;

    .line 137
    .line 138
    invoke-virtual {v12}, Lca/f;->f()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    iget-object v13, v0, Lad-manager/e/x;->p:Lf/g;

    .line 143
    .line 144
    iget-object v13, v13, Lf/g;->a:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v12, v13}, Lf/n;->i(Ljava/util/List;Ljava/util/ArrayList;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    xor-int/lit8 v11, v13, 0x1

    .line 154
    .line 155
    new-instance v12, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    sget-object v7, Lga/a;->a:Lga/a;

    .line 161
    .line 162
    iget-object v8, v0, Lad-manager/e/x;->n:Lf/n;

    .line 163
    .line 164
    iget-object v3, v0, Lad-manager/e/x;->o:Lca/f;

    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const-string v8, "AdManager:ApplovinMax:Manager"

    .line 170
    .line 171
    invoke-static {v3, v8}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v4, "hasNormalAd:"

    .line 178
    .line 179
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v4, " needLoad"

    .line 186
    .line 187
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v7, v3, v4}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const/16 v3, 0xa

    .line 201
    .line 202
    if-eqz v13, :cond_4

    .line 203
    .line 204
    sget-object v18, Lca/k;->a:Lca/k;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v4, "show start -> normalAd is cached\n"

    .line 209
    .line 210
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v4, v0, Lad-manager/e/x;->p:Lf/g;

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v19

    .line 225
    iget-object v2, v0, Lad-manager/e/x;->o:Lca/f;

    .line 226
    .line 227
    const/16 v23, 0xc

    .line 228
    .line 229
    const/16 v24, 0x0

    .line 230
    .line 231
    const/16 v21, 0x0

    .line 232
    .line 233
    const/16 v22, 0x0

    .line 234
    .line 235
    move-object/from16 v20, v2

    .line 236
    .line 237
    invoke-static/range {v18 .. v24}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v15, v10, v9, v10}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    move-object v10, v12

    .line 244
    move/from16 v18, v13

    .line 245
    .line 246
    move-object v3, v14

    .line 247
    move-object/from16 v20, v15

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_4
    sget-object v25, Lca/k;->a:Lca/k;

    .line 252
    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v7, "show start -> normalAd is not cached, requestAd in async mode\n"

    .line 256
    .line 257
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v7, v0, Lad-manager/e/x;->p:Lf/g;

    .line 261
    .line 262
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v26

    .line 272
    iget-object v3, v0, Lad-manager/e/x;->o:Lca/f;

    .line 273
    .line 274
    const/16 v30, 0xc

    .line 275
    .line 276
    const/16 v31, 0x0

    .line 277
    .line 278
    const/16 v28, 0x0

    .line 279
    .line 280
    const/16 v29, 0x0

    .line 281
    .line 282
    move-object/from16 v27, v3

    .line 283
    .line 284
    invoke-static/range {v25 .. v31}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iget-object v3, v0, Lad-manager/e/x;->n:Lf/n;

    .line 288
    .line 289
    iget-object v4, v0, Lad-manager/e/x;->p:Lf/g;

    .line 290
    .line 291
    iget-object v4, v4, Lf/g;->b:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-static {v4}, Lf/n;->j(Ljava/util/List;)Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    iget-object v4, v0, Lad-manager/e/x;->n:Lf/n;

    .line 301
    .line 302
    iget-object v7, v0, Lad-manager/e/x;->o:Lca/f;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eqz v8, :cond_5

    .line 313
    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    check-cast v8, Lca/e;

    .line 319
    .line 320
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    new-instance v11, Lad-manager/e/p;

    .line 324
    .line 325
    invoke-direct {v11, v4, v8, v7, v10}, Lad-manager/e/p;-><init>(Lf/n;Lca/e;Lca/f;Lrs/c;)V

    .line 326
    .line 327
    .line 328
    const/4 v8, 0x3

    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    const/16 v19, 0x0

    .line 334
    .line 335
    move-object/from16 v20, v11

    .line 336
    .line 337
    move-object v11, v2

    .line 338
    move-object v10, v12

    .line 339
    move-object/from16 v12, v18

    .line 340
    .line 341
    move/from16 v18, v13

    .line 342
    .line 343
    move-object/from16 v13, v19

    .line 344
    .line 345
    move-object/from16 v19, v14

    .line 346
    .line 347
    move-object/from16 v14, v20

    .line 348
    .line 349
    move-object/from16 v20, v15

    .line 350
    .line 351
    move v15, v8

    .line 352
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 353
    .line 354
    .line 355
    move-object v12, v10

    .line 356
    move/from16 v13, v18

    .line 357
    .line 358
    move-object/from16 v14, v19

    .line 359
    .line 360
    move-object/from16 v15, v20

    .line 361
    .line 362
    const/4 v10, 0x0

    .line 363
    goto :goto_0

    .line 364
    :cond_5
    move-object v10, v12

    .line 365
    move/from16 v18, v13

    .line 366
    .line 367
    move-object/from16 v19, v14

    .line 368
    .line 369
    move-object/from16 v20, v15

    .line 370
    .line 371
    new-instance v3, Lad-manager/e/u;

    .line 372
    .line 373
    iget-object v12, v0, Lad-manager/e/x;->o:Lca/f;

    .line 374
    .line 375
    const/16 v16, 0x0

    .line 376
    .line 377
    move-object v11, v3

    .line 378
    move-object/from16 v13, p1

    .line 379
    .line 380
    move-object/from16 v14, v20

    .line 381
    .line 382
    move-object/from16 v15, v19

    .line 383
    .line 384
    invoke-direct/range {v11 .. v16}, Lad-manager/e/u;-><init>(Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 385
    .line 386
    .line 387
    const/4 v15, 0x3

    .line 388
    const/4 v12, 0x0

    .line 389
    const/4 v13, 0x0

    .line 390
    move-object v11, v2

    .line 391
    move-object v14, v3

    .line 392
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    move-object/from16 v3, v19

    .line 397
    .line 398
    iput-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 399
    .line 400
    :goto_1
    iget-object v2, v0, Lad-manager/e/x;->o:Lca/f;

    .line 401
    .line 402
    invoke-virtual {v2}, Lca/f;->l()J

    .line 403
    .line 404
    .line 405
    move-result-wide v7

    .line 406
    const-wide/16 v11, 0x0

    .line 407
    .line 408
    cmp-long v2, v7, v11

    .line 409
    .line 410
    if-gtz v2, :cond_6

    .line 411
    .line 412
    if-nez v18, :cond_8

    .line 413
    .line 414
    :cond_6
    sget-object v2, Lca/k;->a:Lca/k;

    .line 415
    .line 416
    iget-object v4, v0, Lad-manager/e/x;->o:Lca/f;

    .line 417
    .line 418
    invoke-virtual {v4}, Lca/f;->i()Ljava/lang/ref/WeakReference;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    if-eqz v4, :cond_7

    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    check-cast v4, Lha/a;

    .line 429
    .line 430
    goto :goto_2

    .line 431
    :cond_7
    const/4 v4, 0x0

    .line 432
    :goto_2
    invoke-virtual {v2, v4}, Lca/k;->t(Lha/a;)V

    .line 433
    .line 434
    .line 435
    iget-object v2, v0, Lad-manager/e/x;->n:Lf/n;

    .line 436
    .line 437
    invoke-virtual {v2}, Lf/n;->m()V

    .line 438
    .line 439
    .line 440
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 441
    .line 442
    .line 443
    move-result-wide v7

    .line 444
    iget-object v2, v0, Lad-manager/e/x;->o:Lca/f;

    .line 445
    .line 446
    invoke-virtual {v2}, Lca/f;->l()J

    .line 447
    .line 448
    .line 449
    move-result-wide v11

    .line 450
    move-object/from16 v2, p1

    .line 451
    .line 452
    iput-object v2, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 453
    .line 454
    move-object/from16 v4, v20

    .line 455
    .line 456
    iput-object v4, v0, Lad-manager/e/x;->h:Ljava/lang/Object;

    .line 457
    .line 458
    iput-object v3, v0, Lad-manager/e/x;->i:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v10, v0, Lad-manager/e/x;->j:Ljava/io/Serializable;

    .line 461
    .line 462
    iput-wide v7, v0, Lad-manager/e/x;->k:J

    .line 463
    .line 464
    iput v9, v0, Lad-manager/e/x;->l:I

    .line 465
    .line 466
    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    if-ne v11, v1, :cond_9

    .line 471
    .line 472
    return-object v1

    .line 473
    :cond_9
    move-object v15, v2

    .line 474
    move-object v13, v3

    .line 475
    move-object v14, v4

    .line 476
    move-wide v11, v7

    .line 477
    move-object v8, v10

    .line 478
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string v3, "minShowTime="

    .line 481
    .line 482
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v3, v0, Lad-manager/e/x;->o:Lca/f;

    .line 486
    .line 487
    invoke-virtual {v3}, Lca/f;->l()J

    .line 488
    .line 489
    .line 490
    move-result-wide v3

    .line 491
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 503
    .line 504
    .line 505
    move-result-wide v18

    .line 506
    sub-long v9, v18, v11

    .line 507
    .line 508
    long-to-float v7, v9

    .line 509
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 510
    .line 511
    div-float/2addr v7, v9

    .line 512
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const/16 v7, 0x73

    .line 516
    .line 517
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    iput-object v15, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v13, v0, Lad-manager/e/x;->h:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v8, v0, Lad-manager/e/x;->i:Ljava/lang/Object;

    .line 536
    .line 537
    iput-object v2, v0, Lad-manager/e/x;->j:Ljava/io/Serializable;

    .line 538
    .line 539
    iput-wide v11, v0, Lad-manager/e/x;->k:J

    .line 540
    .line 541
    const/4 v3, 0x2

    .line 542
    iput v3, v0, Lad-manager/e/x;->l:I

    .line 543
    .line 544
    invoke-interface {v14, v0}, Lkotlinx/coroutines/r;->join(Lrs/c;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    if-ne v3, v1, :cond_a

    .line 549
    .line 550
    return-object v1

    .line 551
    :cond_a
    move-object v10, v8

    .line 552
    move-object v14, v15

    .line 553
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v7, "maxShowTime("

    .line 556
    .line 557
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    iget-object v7, v0, Lad-manager/e/x;->o:Lca/f;

    .line 561
    .line 562
    invoke-virtual {v7}, Lca/f;->j()J

    .line 563
    .line 564
    .line 565
    move-result-wide v7

    .line 566
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 578
    .line 579
    .line 580
    move-result-wide v7

    .line 581
    sub-long/2addr v7, v11

    .line 582
    long-to-float v5, v7

    .line 583
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 584
    .line 585
    div-float/2addr v5, v7

    .line 586
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    const/16 v5, 0x73

    .line 590
    .line 591
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    iget-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v5, Lkotlinx/coroutines/r;

    .line 608
    .line 609
    if-eqz v5, :cond_b

    .line 610
    .line 611
    const/4 v4, 0x1

    .line 612
    const/4 v6, 0x0

    .line 613
    invoke-static {v5, v6, v4, v6}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    :cond_b
    sget-object v22, Lca/k;->a:Lca/k;

    .line 617
    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v5, "show wait end -> "

    .line 621
    .line 622
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const/16 v2, 0x2c

    .line 629
    .line 630
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v23

    .line 640
    const/16 v27, 0xe

    .line 641
    .line 642
    const/16 v28, 0x0

    .line 643
    .line 644
    const/16 v24, 0x0

    .line 645
    .line 646
    const/16 v25, 0x0

    .line 647
    .line 648
    const/16 v26, 0x0

    .line 649
    .line 650
    invoke-static/range {v22 .. v28}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    new-instance v3, Lad-manager/e/v;

    .line 658
    .line 659
    iget-object v8, v0, Lad-manager/e/x;->n:Lf/n;

    .line 660
    .line 661
    iget-object v9, v0, Lad-manager/e/x;->o:Lca/f;

    .line 662
    .line 663
    const/4 v12, 0x0

    .line 664
    move-object v7, v3

    .line 665
    move-object v11, v14

    .line 666
    invoke-direct/range {v7 .. v12}, Lad-manager/e/v;-><init>(Lf/n;Lca/f;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 667
    .line 668
    .line 669
    const/4 v4, 0x0

    .line 670
    iput-object v4, v0, Lad-manager/e/x;->m:Ljava/lang/Object;

    .line 671
    .line 672
    iput-object v4, v0, Lad-manager/e/x;->h:Ljava/lang/Object;

    .line 673
    .line 674
    iput-object v4, v0, Lad-manager/e/x;->i:Ljava/lang/Object;

    .line 675
    .line 676
    iput-object v4, v0, Lad-manager/e/x;->j:Ljava/io/Serializable;

    .line 677
    .line 678
    const/4 v4, 0x3

    .line 679
    iput v4, v0, Lad-manager/e/x;->l:I

    .line 680
    .line 681
    invoke-static {v2, v3, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    if-ne v2, v1, :cond_c

    .line 686
    .line 687
    return-object v1

    .line 688
    :cond_c
    :goto_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 689
    .line 690
    return-object v1
.end method
