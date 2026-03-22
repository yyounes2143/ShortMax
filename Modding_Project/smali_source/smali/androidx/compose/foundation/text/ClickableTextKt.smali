.class public final Landroidx/compose/foundation/text/ClickableTextKt;
.super Ljava/lang/Object;
.source "ClickableText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final ClickableText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "ZII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p7

    .line 4
    .line 5
    move/from16 v13, p9

    .line 6
    .line 7
    move/from16 v14, p10

    .line 8
    .line 9
    const-string v0, "text"

    .line 10
    .line 11
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "onClick"

    .line 15
    .line 16
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0xeb2f629

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p8

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    and-int/lit8 v0, v14, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    or-int/lit8 v0, v13, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v0, v13, 0xe

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    :goto_0
    or-int/2addr v0, v13

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v13

    .line 51
    :goto_1
    and-int/lit8 v2, v14, 0x2

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v3, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v3, v13, 0x70

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    const/16 v4, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v4, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v0, v4

    .line 78
    :goto_3
    and-int/lit8 v4, v14, 0x4

    .line 79
    .line 80
    if-eqz v4, :cond_7

    .line 81
    .line 82
    or-int/lit16 v0, v0, 0x180

    .line 83
    .line 84
    :cond_6
    move-object/from16 v5, p2

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    and-int/lit16 v5, v13, 0x380

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    .line 91
    move-object/from16 v5, p2

    .line 92
    .line 93
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_8

    .line 98
    .line 99
    const/16 v6, 0x100

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    const/16 v6, 0x80

    .line 103
    .line 104
    :goto_4
    or-int/2addr v0, v6

    .line 105
    :goto_5
    and-int/lit8 v6, v14, 0x8

    .line 106
    .line 107
    if-eqz v6, :cond_a

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0xc00

    .line 110
    .line 111
    :cond_9
    move/from16 v7, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v7, v13, 0x1c00

    .line 115
    .line 116
    if-nez v7, :cond_9

    .line 117
    .line 118
    move/from16 v7, p3

    .line 119
    .line 120
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_b

    .line 125
    .line 126
    const/16 v8, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v8, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v0, v8

    .line 132
    :goto_7
    and-int/lit8 v8, v14, 0x10

    .line 133
    .line 134
    if-eqz v8, :cond_d

    .line 135
    .line 136
    or-int/lit16 v0, v0, 0x6000

    .line 137
    .line 138
    :cond_c
    move/from16 v9, p4

    .line 139
    .line 140
    goto :goto_9

    .line 141
    :cond_d
    const v9, 0xe000

    .line 142
    .line 143
    .line 144
    and-int/2addr v9, v13

    .line 145
    if-nez v9, :cond_c

    .line 146
    .line 147
    move/from16 v9, p4

    .line 148
    .line 149
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-eqz v10, :cond_e

    .line 154
    .line 155
    const/16 v10, 0x4000

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_e
    const/16 v10, 0x2000

    .line 159
    .line 160
    :goto_8
    or-int/2addr v0, v10

    .line 161
    :goto_9
    and-int/lit8 v10, v14, 0x20

    .line 162
    .line 163
    const/high16 v16, 0x70000

    .line 164
    .line 165
    if-eqz v10, :cond_f

    .line 166
    .line 167
    const/high16 v17, 0x30000

    .line 168
    .line 169
    or-int v0, v0, v17

    .line 170
    .line 171
    move/from16 v1, p5

    .line 172
    .line 173
    goto :goto_b

    .line 174
    :cond_f
    and-int v17, v13, v16

    .line 175
    .line 176
    move/from16 v1, p5

    .line 177
    .line 178
    if-nez v17, :cond_11

    .line 179
    .line 180
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 181
    .line 182
    .line 183
    move-result v17

    .line 184
    if-eqz v17, :cond_10

    .line 185
    .line 186
    const/high16 v17, 0x20000

    .line 187
    .line 188
    goto :goto_a

    .line 189
    :cond_10
    const/high16 v17, 0x10000

    .line 190
    .line 191
    :goto_a
    or-int v0, v0, v17

    .line 192
    .line 193
    :cond_11
    :goto_b
    and-int/lit8 v17, v14, 0x40

    .line 194
    .line 195
    const/high16 v18, 0x380000

    .line 196
    .line 197
    if-eqz v17, :cond_12

    .line 198
    .line 199
    const/high16 v19, 0x180000

    .line 200
    .line 201
    or-int v0, v0, v19

    .line 202
    .line 203
    move-object/from16 v1, p6

    .line 204
    .line 205
    goto :goto_d

    .line 206
    :cond_12
    and-int v19, v13, v18

    .line 207
    .line 208
    move-object/from16 v1, p6

    .line 209
    .line 210
    if-nez v19, :cond_14

    .line 211
    .line 212
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v19

    .line 216
    if-eqz v19, :cond_13

    .line 217
    .line 218
    const/high16 v19, 0x100000

    .line 219
    .line 220
    goto :goto_c

    .line 221
    :cond_13
    const/high16 v19, 0x80000

    .line 222
    .line 223
    :goto_c
    or-int v0, v0, v19

    .line 224
    .line 225
    :cond_14
    :goto_d
    and-int/lit16 v1, v14, 0x80

    .line 226
    .line 227
    if-eqz v1, :cond_15

    .line 228
    .line 229
    const/high16 v1, 0xc00000

    .line 230
    .line 231
    :goto_e
    or-int/2addr v0, v1

    .line 232
    goto :goto_f

    .line 233
    :cond_15
    const/high16 v1, 0x1c00000

    .line 234
    .line 235
    and-int/2addr v1, v13

    .line 236
    if-nez v1, :cond_17

    .line 237
    .line 238
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_16

    .line 243
    .line 244
    const/high16 v1, 0x800000

    .line 245
    .line 246
    goto :goto_e

    .line 247
    :cond_16
    const/high16 v1, 0x400000

    .line 248
    .line 249
    goto :goto_e

    .line 250
    :cond_17
    :goto_f
    const v1, 0x16db6db

    .line 251
    .line 252
    .line 253
    and-int/2addr v1, v0

    .line 254
    const v3, 0x492492

    .line 255
    .line 256
    .line 257
    if-ne v1, v3, :cond_19

    .line 258
    .line 259
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    goto :goto_10

    .line 266
    :cond_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    move-object/from16 v2, p1

    .line 270
    .line 271
    move/from16 v6, p5

    .line 272
    .line 273
    move-object v3, v5

    .line 274
    move v4, v7

    .line 275
    move v5, v9

    .line 276
    move-object/from16 v7, p6

    .line 277
    .line 278
    goto/16 :goto_17

    .line 279
    .line 280
    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    .line 281
    .line 282
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 283
    .line 284
    move-object v3, v1

    .line 285
    goto :goto_11

    .line 286
    :cond_1a
    move-object/from16 v3, p1

    .line 287
    .line 288
    :goto_11
    if-eqz v4, :cond_1b

    .line 289
    .line 290
    sget-object v1, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    .line 291
    .line 292
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    move-object/from16 v19, v1

    .line 297
    .line 298
    goto :goto_12

    .line 299
    :cond_1b
    move-object/from16 v19, v5

    .line 300
    .line 301
    :goto_12
    if-eqz v6, :cond_1c

    .line 302
    .line 303
    const/4 v1, 0x1

    .line 304
    move/from16 v20, v1

    .line 305
    .line 306
    goto :goto_13

    .line 307
    :cond_1c
    move/from16 v20, v7

    .line 308
    .line 309
    :goto_13
    if-eqz v8, :cond_1d

    .line 310
    .line 311
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 312
    .line 313
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    move/from16 v21, v1

    .line 318
    .line 319
    goto :goto_14

    .line 320
    :cond_1d
    move/from16 v21, v9

    .line 321
    .line 322
    :goto_14
    if-eqz v10, :cond_1e

    .line 323
    .line 324
    const v1, 0x7fffffff

    .line 325
    .line 326
    .line 327
    move/from16 v22, v1

    .line 328
    .line 329
    goto :goto_15

    .line 330
    :cond_1e
    move/from16 v22, p5

    .line 331
    .line 332
    :goto_15
    if-eqz v17, :cond_1f

    .line 333
    .line 334
    sget-object v1, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$1;->INSTANCE:Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$1;

    .line 335
    .line 336
    move-object v10, v1

    .line 337
    goto :goto_16

    .line 338
    :cond_1f
    move-object/from16 v10, p6

    .line 339
    .line 340
    :goto_16
    const v1, -0x1d58f75c

    .line 341
    .line 342
    .line 343
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 351
    .line 352
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    const/4 v5, 0x0

    .line 357
    if-ne v1, v4, :cond_20

    .line 358
    .line 359
    const/4 v4, 0x2

    .line 360
    invoke-static {v5, v5, v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_20
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 368
    .line 369
    .line 370
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 371
    .line 372
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 373
    .line 374
    const v6, 0x1e7b2b64

    .line 375
    .line 376
    .line 377
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 378
    .line 379
    .line 380
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    or-int/2addr v7, v8

    .line 389
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    if-nez v7, :cond_21

    .line 394
    .line 395
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    if-ne v8, v7, :cond_22

    .line 400
    .line 401
    :cond_21
    new-instance v8, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;

    .line 402
    .line 403
    invoke-direct {v8, v1, v12, v5}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    :cond_22
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 410
    .line 411
    .line 412
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 413
    .line 414
    invoke-static {v4, v12, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    or-int/2addr v5, v6

    .line 434
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    if-nez v5, :cond_23

    .line 439
    .line 440
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    if-ne v6, v2, :cond_24

    .line 445
    .line 446
    :cond_23
    new-instance v6, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$2$1;

    .line 447
    .line 448
    invoke-direct {v6, v1, v10}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$2$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 449
    .line 450
    .line 451
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    :cond_24
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 455
    .line 456
    .line 457
    move-object v5, v6

    .line 458
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 459
    .line 460
    const v1, 0xe38e

    .line 461
    .line 462
    .line 463
    and-int/2addr v1, v0

    .line 464
    shl-int/lit8 v2, v0, 0x6

    .line 465
    .line 466
    and-int v2, v2, v16

    .line 467
    .line 468
    or-int/2addr v1, v2

    .line 469
    shl-int/lit8 v0, v0, 0x3

    .line 470
    .line 471
    and-int v0, v0, v18

    .line 472
    .line 473
    or-int v9, v1, v0

    .line 474
    .line 475
    const/16 v16, 0x80

    .line 476
    .line 477
    const/4 v7, 0x0

    .line 478
    move-object/from16 v0, p0

    .line 479
    .line 480
    move-object v1, v4

    .line 481
    move-object/from16 v2, v19

    .line 482
    .line 483
    move-object/from16 v17, v3

    .line 484
    .line 485
    move-object v3, v5

    .line 486
    move/from16 v4, v21

    .line 487
    .line 488
    move/from16 v5, v20

    .line 489
    .line 490
    move/from16 v6, v22

    .line 491
    .line 492
    move-object v8, v15

    .line 493
    move-object/from16 v18, v10

    .line 494
    .line 495
    move/from16 v10, v16

    .line 496
    .line 497
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    .line 498
    .line 499
    .line 500
    move-object/from16 v2, v17

    .line 501
    .line 502
    move-object/from16 v7, v18

    .line 503
    .line 504
    move-object/from16 v3, v19

    .line 505
    .line 506
    move/from16 v4, v20

    .line 507
    .line 508
    move/from16 v5, v21

    .line 509
    .line 510
    :goto_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 511
    .line 512
    .line 513
    move-result-object v15

    .line 514
    if-nez v15, :cond_25

    .line 515
    .line 516
    goto :goto_18

    .line 517
    :cond_25
    new-instance v10, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;

    .line 518
    .line 519
    move-object v0, v10

    .line 520
    move-object/from16 v1, p0

    .line 521
    .line 522
    move-object/from16 v8, p7

    .line 523
    .line 524
    move/from16 v9, p9

    .line 525
    .line 526
    move-object v11, v10

    .line 527
    move/from16 v10, p10

    .line 528
    .line 529
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 530
    .line 531
    .line 532
    invoke-interface {v15, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 533
    .line 534
    .line 535
    :goto_18
    return-void
.end method
