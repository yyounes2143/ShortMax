.class public final Lad-manager/d/g0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public i:Ljava/lang/Object;

.field public j:Ljava/io/Serializable;

.field public k:J

.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Le/k;

.field public final synthetic o:Lca/f;

.field public final synthetic p:Le/v;


# direct methods
.method public constructor <init>(Le/k;Lca/f;Le/v;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/g0;->n:Le/k;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/g0;->o:Lca/f;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/g0;->p:Le/v;

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
    new-instance v0, Lad-manager/d/g0;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/d/g0;->n:Le/k;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/d/g0;->o:Lca/f;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/d/g0;->p:Le/v;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lad-manager/d/g0;-><init>(Le/k;Lca/f;Le/v;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lad-manager/d/g0;->m:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lad-manager/d/g0;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/d/g0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/d/g0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, v1, Lad-manager/d/g0;->l:I

    .line 8
    .line 9
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 10
    .line 11
    const-string v5, "cost="

    .line 12
    .line 13
    const-string v6, "ms,"

    .line 14
    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eq v0, v9, :cond_2

    .line 22
    .line 23
    if-eq v0, v8, :cond_1

    .line 24
    .line 25
    if-ne v0, v7, :cond_0

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-wide v11, v1, Lad-manager/d/g0;->k:J

    .line 41
    .line 42
    iget-object v0, v1, Lad-manager/d/g0;->j:Ljava/io/Serializable;

    .line 43
    .line 44
    move-object v8, v0

    .line 45
    check-cast v8, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v1, Lad-manager/d/g0;->i:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v13, v0

    .line 50
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v14, v1, Lad-manager/d/g0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    iget-object v0, v1, Lad-manager/d/g0;->m:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v15, v0

    .line 57
    check-cast v15, Lgt/g0;

    .line 58
    .line 59
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    move-object v3, v8

    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :catch_0
    move-exception v0

    .line 66
    move-object v3, v8

    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_2
    iget-wide v11, v1, Lad-manager/d/g0;->k:J

    .line 70
    .line 71
    iget-object v0, v1, Lad-manager/d/g0;->j:Ljava/io/Serializable;

    .line 72
    .line 73
    move-object v13, v0

    .line 74
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iget-object v0, v1, Lad-manager/d/g0;->i:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v14, v0

    .line 79
    check-cast v14, Lkotlinx/coroutines/r;

    .line 80
    .line 81
    iget-object v15, v1, Lad-manager/d/g0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    iget-object v0, v1, Lad-manager/d/g0;->m:Ljava/lang/Object;

    .line 84
    .line 85
    move-object/from16 v16, v0

    .line 86
    .line 87
    check-cast v16, Lgt/g0;

    .line 88
    .line 89
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    :goto_0
    move-object/from16 v7, v16

    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :catch_1
    move-exception v0

    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Lad-manager/d/g0;->m:Ljava/lang/Object;

    .line 103
    .line 104
    move-object/from16 v16, v0

    .line 105
    .line 106
    check-cast v16, Lgt/g0;

    .line 107
    .line 108
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 109
    .line 110
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance v14, Lad-manager/d/e0;

    .line 121
    .line 122
    iget-object v0, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 123
    .line 124
    invoke-direct {v14, v0, v10}, Lad-manager/d/e0;-><init>(Lca/f;Lrs/c;)V

    .line 125
    .line 126
    .line 127
    const/4 v0, 0x3

    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    const/4 v12, 0x0

    .line 131
    const/4 v13, 0x0

    .line 132
    move-object/from16 v11, v16

    .line 133
    .line 134
    move-object/from16 v23, v15

    .line 135
    .line 136
    move-object/from16 p1, v16

    .line 137
    .line 138
    move v15, v0

    .line 139
    move-object/from16 v16, v17

    .line 140
    .line 141
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v14, Lad-manager/d/f0;

    .line 146
    .line 147
    iget-object v11, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 148
    .line 149
    invoke-direct {v14, v11, v10}, Lad-manager/d/f0;-><init>(Lca/f;Lrs/c;)V

    .line 150
    .line 151
    .line 152
    const/4 v15, 0x3

    .line 153
    const/16 v16, 0x0

    .line 154
    .line 155
    move-object/from16 v11, p1

    .line 156
    .line 157
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 162
    .line 163
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v11, v1, Lad-manager/d/g0;->n:Le/k;

    .line 167
    .line 168
    iget-object v12, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 169
    .line 170
    invoke-virtual {v12}, Lca/f;->f()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    iget-object v13, v1, Lad-manager/d/g0;->p:Le/v;

    .line 175
    .line 176
    iget-object v13, v13, Le/v;->a:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v12, v13}, Le/k;->j(Ljava/util/List;Ljava/util/ArrayList;)Z

    .line 182
    .line 183
    .line 184
    move-result v24

    .line 185
    new-instance v13, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    const/16 v11, 0xa

    .line 191
    .line 192
    if-eqz v24, :cond_4

    .line 193
    .line 194
    sget-object v16, Lca/k;->a:Lca/k;

    .line 195
    .line 196
    new-instance v12, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v13, "show start -> normalAd is cached\n"

    .line 199
    .line 200
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v13, v1, Lad-manager/d/g0;->p:Le/v;

    .line 204
    .line 205
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v17

    .line 215
    iget-object v11, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 216
    .line 217
    const/16 v21, 0xc

    .line 218
    .line 219
    const/16 v22, 0x0

    .line 220
    .line 221
    const/16 v19, 0x0

    .line 222
    .line 223
    const/16 v20, 0x0

    .line 224
    .line 225
    move-object/from16 v18, v11

    .line 226
    .line 227
    invoke-static/range {v16 .. v22}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v15, v10, v9, v10}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    move-object v8, v14

    .line 234
    move-object v3, v15

    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_4
    sget-object v25, Lca/k;->a:Lca/k;

    .line 238
    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v7, "show start -> normalAd is not cached, requestAd in async mode\n"

    .line 242
    .line 243
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v7, v1, Lad-manager/d/g0;->p:Le/v;

    .line 247
    .line 248
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v26

    .line 258
    iget-object v7, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 259
    .line 260
    const/16 v30, 0xc

    .line 261
    .line 262
    const/16 v31, 0x0

    .line 263
    .line 264
    const/16 v28, 0x0

    .line 265
    .line 266
    const/16 v29, 0x0

    .line 267
    .line 268
    move-object/from16 v27, v7

    .line 269
    .line 270
    invoke-static/range {v25 .. v31}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v7, v1, Lad-manager/d/g0;->n:Le/k;

    .line 274
    .line 275
    iget-object v11, v1, Lad-manager/d/g0;->p:Le/v;

    .line 276
    .line 277
    iget-object v11, v11, Le/v;->b:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {v11}, Le/k;->k(Ljava/util/List;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    iget-object v12, v1, Lad-manager/d/g0;->n:Le/k;

    .line 287
    .line 288
    iget-object v11, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v16

    .line 298
    if-eqz v16, :cond_5

    .line 299
    .line 300
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v16

    .line 304
    move-object/from16 v8, v16

    .line 305
    .line 306
    check-cast v8, Lca/e;

    .line 307
    .line 308
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    new-instance v3, Lad-manager/d/x;

    .line 312
    .line 313
    invoke-direct {v3, v12, v8, v11, v10}, Lad-manager/d/x;-><init>(Le/k;Lca/e;Lca/f;Lrs/c;)V

    .line 314
    .line 315
    .line 316
    const/4 v8, 0x3

    .line 317
    const/16 v16, 0x0

    .line 318
    .line 319
    const/16 v17, 0x0

    .line 320
    .line 321
    const/16 v18, 0x0

    .line 322
    .line 323
    move-object/from16 v19, v11

    .line 324
    .line 325
    move-object/from16 v11, p1

    .line 326
    .line 327
    move-object/from16 v20, v12

    .line 328
    .line 329
    move-object/from16 v12, v17

    .line 330
    .line 331
    move-object/from16 v17, v13

    .line 332
    .line 333
    move-object/from16 v13, v18

    .line 334
    .line 335
    move-object/from16 v27, v14

    .line 336
    .line 337
    move-object v14, v3

    .line 338
    move-object v3, v15

    .line 339
    move v15, v8

    .line 340
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 341
    .line 342
    .line 343
    move-object v15, v3

    .line 344
    move-object/from16 v13, v17

    .line 345
    .line 346
    move-object/from16 v11, v19

    .line 347
    .line 348
    move-object/from16 v12, v20

    .line 349
    .line 350
    move-object/from16 v14, v27

    .line 351
    .line 352
    const/4 v8, 0x2

    .line 353
    goto :goto_1

    .line 354
    :cond_5
    move-object/from16 v27, v14

    .line 355
    .line 356
    move-object v3, v15

    .line 357
    new-instance v14, Lad-manager/d/c0;

    .line 358
    .line 359
    iget-object v7, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 360
    .line 361
    const/16 v22, 0x0

    .line 362
    .line 363
    move-object/from16 v17, v14

    .line 364
    .line 365
    move-object/from16 v18, v7

    .line 366
    .line 367
    move-object/from16 v19, v23

    .line 368
    .line 369
    move-object/from16 v20, v3

    .line 370
    .line 371
    move-object/from16 v21, v27

    .line 372
    .line 373
    invoke-direct/range {v17 .. v22}, Lad-manager/d/c0;-><init>(Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 374
    .line 375
    .line 376
    const/4 v15, 0x3

    .line 377
    const/16 v16, 0x0

    .line 378
    .line 379
    const/4 v12, 0x0

    .line 380
    const/4 v13, 0x0

    .line 381
    move-object/from16 v11, p1

    .line 382
    .line 383
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    move-object/from16 v8, v27

    .line 388
    .line 389
    iput-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 390
    .line 391
    :goto_2
    iget-object v7, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 392
    .line 393
    invoke-virtual {v7}, Lca/f;->l()J

    .line 394
    .line 395
    .line 396
    move-result-wide v11

    .line 397
    const-wide/16 v13, 0x0

    .line 398
    .line 399
    cmp-long v7, v11, v13

    .line 400
    .line 401
    if-gtz v7, :cond_6

    .line 402
    .line 403
    if-nez v24, :cond_8

    .line 404
    .line 405
    :cond_6
    sget-object v7, Lca/k;->a:Lca/k;

    .line 406
    .line 407
    iget-object v11, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 408
    .line 409
    invoke-virtual {v11}, Lca/f;->i()Ljava/lang/ref/WeakReference;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    if-eqz v11, :cond_7

    .line 414
    .line 415
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    check-cast v11, Lha/a;

    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_7
    move-object v11, v10

    .line 423
    :goto_3
    invoke-virtual {v7, v11}, Lca/k;->t(Lha/a;)V

    .line 424
    .line 425
    .line 426
    iget-object v7, v1, Lad-manager/d/g0;->n:Le/k;

    .line 427
    .line 428
    invoke-virtual {v7}, Le/k;->m()V

    .line 429
    .line 430
    .line 431
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 432
    .line 433
    .line 434
    move-result-wide v11

    .line 435
    move-object/from16 v7, p1

    .line 436
    .line 437
    :try_start_2
    iput-object v7, v1, Lad-manager/d/g0;->m:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    .line 438
    .line 439
    move-object/from16 v13, v23

    .line 440
    .line 441
    :try_start_3
    iput-object v13, v1, Lad-manager/d/g0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 442
    .line 443
    iput-object v3, v1, Lad-manager/d/g0;->i:Ljava/lang/Object;

    .line 444
    .line 445
    iput-object v8, v1, Lad-manager/d/g0;->j:Ljava/io/Serializable;

    .line 446
    .line 447
    iput-wide v11, v1, Lad-manager/d/g0;->k:J

    .line 448
    .line 449
    iput v9, v1, Lad-manager/d/g0;->l:I

    .line 450
    .line 451
    invoke-interface {v0, v1}, Lkotlinx/coroutines/r;->join(Lrs/c;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 455
    if-ne v0, v2, :cond_9

    .line 456
    .line 457
    return-object v2

    .line 458
    :cond_9
    move-object v14, v3

    .line 459
    move-object v15, v13

    .line 460
    move-object v13, v8

    .line 461
    goto :goto_6

    .line 462
    :catch_2
    move-exception v0

    .line 463
    :goto_4
    move-object v14, v3

    .line 464
    move-object/from16 v16, v7

    .line 465
    .line 466
    move-object v15, v13

    .line 467
    move-object v13, v8

    .line 468
    goto :goto_5

    .line 469
    :catch_3
    move-exception v0

    .line 470
    move-object/from16 v13, v23

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :goto_5
    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_e

    .line 478
    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v3, "minShowTime="

    .line 484
    .line 485
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 489
    .line 490
    invoke-virtual {v3}, Lca/f;->l()J

    .line 491
    .line 492
    .line 493
    move-result-wide v9

    .line 494
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 506
    .line 507
    .line 508
    move-result-wide v9

    .line 509
    sub-long/2addr v9, v11

    .line 510
    long-to-float v9, v9

    .line 511
    div-float/2addr v9, v4

    .line 512
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const/16 v9, 0x73

    .line 516
    .line 517
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    :try_start_4
    iput-object v7, v1, Lad-manager/d/g0;->m:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v15, v1, Lad-manager/d/g0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 534
    .line 535
    iput-object v13, v1, Lad-manager/d/g0;->i:Ljava/lang/Object;

    .line 536
    .line 537
    iput-object v3, v1, Lad-manager/d/g0;->j:Ljava/io/Serializable;

    .line 538
    .line 539
    iput-wide v11, v1, Lad-manager/d/g0;->k:J

    .line 540
    .line 541
    const/4 v9, 0x2

    .line 542
    iput v9, v1, Lad-manager/d/g0;->l:I

    .line 543
    .line 544
    invoke-interface {v14, v1}, Lkotlinx/coroutines/r;->join(Lrs/c;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 548
    if-ne v0, v2, :cond_a

    .line 549
    .line 550
    return-object v2

    .line 551
    :cond_a
    move-object v14, v15

    .line 552
    goto :goto_8

    .line 553
    :catch_4
    move-exception v0

    .line 554
    move-object v14, v15

    .line 555
    move-object v15, v7

    .line 556
    :goto_7
    invoke-static {v15}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-eqz v7, :cond_d

    .line 561
    .line 562
    sget-object v17, Lca/k;->a:Lca/k;

    .line 563
    .line 564
    const/16 v22, 0xe

    .line 565
    .line 566
    const/16 v23, 0x0

    .line 567
    .line 568
    const-string v18, "show wait -> timeOutJob cancelled (ad loaded successfully)"

    .line 569
    .line 570
    const/16 v19, 0x0

    .line 571
    .line 572
    const/16 v20, 0x0

    .line 573
    .line 574
    const/16 v21, 0x0

    .line 575
    .line 576
    invoke-static/range {v17 .. v23}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    const-string v7, "maxShowTime("

    .line 582
    .line 583
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object v7, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 587
    .line 588
    invoke-virtual {v7}, Lca/f;->j()J

    .line 589
    .line 590
    .line 591
    move-result-wide v9

    .line 592
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 604
    .line 605
    .line 606
    move-result-wide v9

    .line 607
    sub-long/2addr v9, v11

    .line 608
    long-to-float v5, v9

    .line 609
    div-float/2addr v5, v4

    .line 610
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const/16 v4, 0x73

    .line 614
    .line 615
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    iget-object v4, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v4, Lkotlinx/coroutines/r;

    .line 632
    .line 633
    if-eqz v4, :cond_b

    .line 634
    .line 635
    const/4 v5, 0x1

    .line 636
    const/4 v6, 0x0

    .line 637
    invoke-static {v4, v6, v5, v6}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    :cond_b
    sget-object v7, Lca/k;->a:Lca/k;

    .line 641
    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v5, "show wait end -> "

    .line 645
    .line 646
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const/16 v3, 0x2c

    .line 653
    .line 654
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    const/16 v12, 0xe

    .line 665
    .line 666
    const/4 v13, 0x0

    .line 667
    const/4 v9, 0x0

    .line 668
    const/4 v10, 0x0

    .line 669
    const/4 v11, 0x0

    .line 670
    invoke-static/range {v7 .. v13}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    new-instance v3, Lad-manager/d/d0;

    .line 678
    .line 679
    iget-object v4, v1, Lad-manager/d/g0;->n:Le/k;

    .line 680
    .line 681
    iget-object v5, v1, Lad-manager/d/g0;->o:Lca/f;

    .line 682
    .line 683
    const/4 v6, 0x0

    .line 684
    invoke-direct {v3, v4, v5, v14, v6}, Lad-manager/d/d0;-><init>(Le/k;Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 685
    .line 686
    .line 687
    iput-object v6, v1, Lad-manager/d/g0;->m:Ljava/lang/Object;

    .line 688
    .line 689
    iput-object v6, v1, Lad-manager/d/g0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 690
    .line 691
    iput-object v6, v1, Lad-manager/d/g0;->i:Ljava/lang/Object;

    .line 692
    .line 693
    iput-object v6, v1, Lad-manager/d/g0;->j:Ljava/io/Serializable;

    .line 694
    .line 695
    const/4 v4, 0x3

    .line 696
    iput v4, v1, Lad-manager/d/g0;->l:I

    .line 697
    .line 698
    invoke-static {v0, v3, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    if-ne v0, v2, :cond_c

    .line 703
    .line 704
    return-object v2

    .line 705
    :cond_c
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 706
    .line 707
    return-object v0

    .line 708
    :cond_d
    throw v0

    .line 709
    :cond_e
    throw v0
.end method
