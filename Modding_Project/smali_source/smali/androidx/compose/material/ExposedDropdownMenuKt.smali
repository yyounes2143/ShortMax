.class public final Landroidx/compose/material/ExposedDropdownMenuKt;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lat/n<",
            "-",
            "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p5

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v6, 0x6

    .line 13
    const-string v7, "onExpandedChange"

    .line 14
    .line 15
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v7, "content"

    .line 19
    .line 20
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v7, 0x56c99af4

    .line 24
    .line 25
    .line 26
    move-object/from16 v8, p4

    .line 27
    .line 28
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    and-int/lit8 v8, p6, 0x1

    .line 33
    .line 34
    const/4 v9, 0x2

    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    or-int/lit8 v8, v5, 0x6

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    and-int/lit8 v8, v5, 0xe

    .line 41
    .line 42
    if-nez v8, :cond_2

    .line 43
    .line 44
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    move v8, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v8, v9

    .line 53
    :goto_0
    or-int/2addr v8, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v8, v5

    .line 56
    :goto_1
    and-int/lit8 v10, p6, 0x2

    .line 57
    .line 58
    if-eqz v10, :cond_3

    .line 59
    .line 60
    or-int/lit8 v8, v8, 0x30

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    and-int/lit8 v10, v5, 0x70

    .line 64
    .line 65
    if-nez v10, :cond_5

    .line 66
    .line 67
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_4

    .line 72
    .line 73
    const/16 v10, 0x20

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/16 v10, 0x10

    .line 77
    .line 78
    :goto_2
    or-int/2addr v8, v10

    .line 79
    :cond_5
    :goto_3
    and-int/lit8 v3, p6, 0x4

    .line 80
    .line 81
    if-eqz v3, :cond_7

    .line 82
    .line 83
    or-int/lit16 v8, v8, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v10, p2

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_7
    and-int/lit16 v10, v5, 0x380

    .line 89
    .line 90
    if-nez v10, :cond_6

    .line 91
    .line 92
    move-object/from16 v10, p2

    .line 93
    .line 94
    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-eqz v11, :cond_8

    .line 99
    .line 100
    const/16 v11, 0x100

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    const/16 v11, 0x80

    .line 104
    .line 105
    :goto_4
    or-int/2addr v8, v11

    .line 106
    :goto_5
    and-int/lit8 v11, p6, 0x8

    .line 107
    .line 108
    if-eqz v11, :cond_9

    .line 109
    .line 110
    or-int/lit16 v8, v8, 0xc00

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_9
    and-int/lit16 v11, v5, 0x1c00

    .line 114
    .line 115
    if-nez v11, :cond_b

    .line 116
    .line 117
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_a

    .line 122
    .line 123
    const/16 v11, 0x800

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_a
    const/16 v11, 0x400

    .line 127
    .line 128
    :goto_6
    or-int/2addr v8, v11

    .line 129
    :cond_b
    :goto_7
    and-int/lit16 v11, v8, 0x16db

    .line 130
    .line 131
    const/16 v12, 0x492

    .line 132
    .line 133
    if-ne v11, v12, :cond_d

    .line 134
    .line 135
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-nez v11, :cond_c

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    move-object v3, v10

    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 149
    .line 150
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 151
    .line 152
    move-object v10, v3

    .line 153
    :cond_e
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 162
    .line 163
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    check-cast v11, Landroid/view/View;

    .line 172
    .line 173
    const v12, -0x1d58f75c

    .line 174
    .line 175
    .line 176
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 184
    .line 185
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    const/4 v15, 0x0

    .line 190
    const/4 v0, 0x0

    .line 191
    if-ne v13, v14, :cond_f

    .line 192
    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-static {v13, v15, v9, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_f
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 205
    .line 206
    .line 207
    move-object v14, v13

    .line 208
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 209
    .line 210
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    if-ne v13, v6, :cond_10

    .line 222
    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-static {v6, v15, v9, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_10
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 235
    .line 236
    .line 237
    move-object v6, v13

    .line 238
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 239
    .line 240
    invoke-static {}, Landroidx/compose/material/MenuKt;->getMenuVerticalMargin()F

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    invoke-interface {v3, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    if-ne v13, v15, :cond_11

    .line 260
    .line 261
    new-instance v13, Landroidx/compose/ui/node/Ref;

    .line 262
    .line 263
    invoke-direct {v13}, Landroidx/compose/ui/node/Ref;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_11
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 270
    .line 271
    .line 272
    move-object v15, v13

    .line 273
    check-cast v15, Landroidx/compose/ui/node/Ref;

    .line 274
    .line 275
    invoke-static {v6}, Landroidx/compose/material/ExposedDropdownMenuKt;->ExposedDropdownMenuBox$lambda-4(Landroidx/compose/runtime/MutableState;)I

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    invoke-static {v14}, Landroidx/compose/material/ExposedDropdownMenuKt;->ExposedDropdownMenuBox$lambda-1(Landroidx/compose/runtime/MutableState;)I

    .line 284
    .line 285
    .line 286
    move-result v16

    .line 287
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const v12, 0x607fb4c4

    .line 292
    .line 293
    .line 294
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    or-int/2addr v12, v13

    .line 306
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    or-int/2addr v0, v12

    .line 311
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    if-nez v0, :cond_12

    .line 316
    .line 317
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    if-ne v12, v0, :cond_13

    .line 322
    .line 323
    :cond_12
    new-instance v12, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;

    .line 324
    .line 325
    invoke-direct {v12, v3, v6, v14}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_13
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 332
    .line 333
    .line 334
    move-object v0, v12

    .line 335
    check-cast v0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;

    .line 336
    .line 337
    const v3, -0x1d58f75c

    .line 338
    .line 339
    .line 340
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    if-ne v3, v12, :cond_14

    .line 352
    .line 353
    new-instance v3, Landroidx/compose/ui/focus/FocusRequester;

    .line 354
    .line 355
    invoke-direct {v3}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_14
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 362
    .line 363
    .line 364
    check-cast v3, Landroidx/compose/ui/focus/FocusRequester;

    .line 365
    .line 366
    new-instance v13, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$1;

    .line 367
    .line 368
    move-object v12, v13

    .line 369
    move-object v5, v13

    .line 370
    move-object v13, v15

    .line 371
    move-object/from16 v16, v14

    .line 372
    .line 373
    move-object v14, v11

    .line 374
    move-object/from16 v19, v15

    .line 375
    .line 376
    move v15, v9

    .line 377
    move-object/from16 v17, v6

    .line 378
    .line 379
    invoke-direct/range {v12 .. v17}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$1;-><init>(Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v10, v5}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    const v13, 0x1e7b2b64

    .line 391
    .line 392
    .line 393
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v13

    .line 400
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v12

    .line 404
    or-int/2addr v12, v13

    .line 405
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v13

    .line 409
    if-nez v12, :cond_15

    .line 410
    .line 411
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v12

    .line 415
    if-ne v13, v12, :cond_16

    .line 416
    .line 417
    :cond_15
    new-instance v13, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;

    .line 418
    .line 419
    invoke-direct {v13, v2, v1}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_16
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 426
    .line 427
    .line 428
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 429
    .line 430
    sget-object v12, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 431
    .line 432
    invoke-virtual {v12}, Landroidx/compose/material/Strings$Companion;->getExposedDropdownMenu-UdPEhr4()I

    .line 433
    .line 434
    .line 435
    move-result v12

    .line 436
    const/4 v14, 0x6

    .line 437
    invoke-static {v12, v7, v14}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    invoke-static {v5, v13, v12}, Landroidx/compose/material/ExposedDropdownMenuKt;->expandable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-static {v5, v3}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    const v12, 0x2bb5b5d7

    .line 450
    .line 451
    .line 452
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 453
    .line 454
    .line 455
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 456
    .line 457
    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    const/4 v13, 0x0

    .line 462
    invoke-static {v12, v13, v7, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    const v13, -0x4ee9b9da

    .line 467
    .line 468
    .line 469
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 470
    .line 471
    .line 472
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 473
    .line 474
    .line 475
    move-result-object v13

    .line 476
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v13

    .line 480
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 481
    .line 482
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 483
    .line 484
    .line 485
    move-result-object v14

    .line 486
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v14

    .line 490
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 491
    .line 492
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 493
    .line 494
    .line 495
    move-result-object v15

    .line 496
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v15

    .line 500
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 501
    .line 502
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 503
    .line 504
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 513
    .line 514
    .line 515
    move-result-object v17

    .line 516
    if-nez v17, :cond_17

    .line 517
    .line 518
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 519
    .line 520
    .line 521
    :cond_17
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 522
    .line 523
    .line 524
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 525
    .line 526
    .line 527
    move-result v17

    .line 528
    if-eqz v17, :cond_18

    .line 529
    .line 530
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 531
    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_18
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 535
    .line 536
    .line 537
    :goto_9
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 538
    .line 539
    .line 540
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    move-object/from16 v17, v10

    .line 545
    .line 546
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 547
    .line 548
    .line 549
    move-result-object v10

    .line 550
    invoke-static {v2, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 554
    .line 555
    .line 556
    move-result-object v10

    .line 557
    invoke-static {v2, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 561
    .line 562
    .line 563
    move-result-object v10

    .line 564
    invoke-static {v2, v14, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 568
    .line 569
    .line 570
    move-result-object v10

    .line 571
    invoke-static {v2, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 572
    .line 573
    .line 574
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 575
    .line 576
    .line 577
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    const/4 v10, 0x0

    .line 586
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v12

    .line 590
    invoke-interface {v5, v2, v7, v12}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    const v2, 0x7ab4aae9

    .line 594
    .line 595
    .line 596
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 597
    .line 598
    .line 599
    const v2, -0x7f65a980

    .line 600
    .line 601
    .line 602
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 603
    .line 604
    .line 605
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 606
    .line 607
    const v2, -0x1a6b1652

    .line 608
    .line 609
    .line 610
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 611
    .line 612
    .line 613
    const/4 v2, 0x6

    .line 614
    shr-int/lit8 v2, v8, 0x6

    .line 615
    .line 616
    and-int/lit8 v2, v2, 0x70

    .line 617
    .line 618
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-interface {v4, v0, v7, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 626
    .line 627
    .line 628
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 629
    .line 630
    .line 631
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 632
    .line 633
    .line 634
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 635
    .line 636
    .line 637
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 638
    .line 639
    .line 640
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 641
    .line 642
    .line 643
    new-instance v0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$4;

    .line 644
    .line 645
    invoke-direct {v0, v1, v3}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$4;-><init>(ZLandroidx/compose/ui/focus/FocusRequester;)V

    .line 646
    .line 647
    .line 648
    const/4 v2, 0x0

    .line 649
    invoke-static {v0, v7, v2}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 650
    .line 651
    .line 652
    new-instance v0, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$5;

    .line 653
    .line 654
    move-object/from16 v13, v19

    .line 655
    .line 656
    invoke-direct {v0, v11, v13, v9, v6}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$5;-><init>(Landroid/view/View;Landroidx/compose/ui/node/Ref;ILandroidx/compose/runtime/MutableState;)V

    .line 657
    .line 658
    .line 659
    const/16 v2, 0x8

    .line 660
    .line 661
    invoke-static {v11, v0, v7, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 662
    .line 663
    .line 664
    move-object/from16 v3, v17

    .line 665
    .line 666
    :goto_a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    if-nez v7, :cond_19

    .line 671
    .line 672
    goto :goto_b

    .line 673
    :cond_19
    new-instance v8, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$6;

    .line 674
    .line 675
    move-object v0, v8

    .line 676
    move/from16 v1, p0

    .line 677
    .line 678
    move-object/from16 v2, p1

    .line 679
    .line 680
    move-object/from16 v4, p3

    .line 681
    .line 682
    move/from16 v5, p5

    .line 683
    .line 684
    move/from16 v6, p6

    .line 685
    .line 686
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$6;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lat/n;II)V

    .line 687
    .line 688
    .line 689
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 690
    .line 691
    .line 692
    :goto_b
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda-1(Landroidx/compose/runtime/MutableState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final ExposedDropdownMenuBox$lambda-2(Landroidx/compose/runtime/MutableState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final ExposedDropdownMenuBox$lambda-4(Landroidx/compose/runtime/MutableState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final ExposedDropdownMenuBox$lambda-5(Landroidx/compose/runtime/MutableState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda-1(Landroidx/compose/runtime/MutableState;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ExposedDropdownMenuKt;->ExposedDropdownMenuBox$lambda-1(Landroidx/compose/runtime/MutableState;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda-2(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/ExposedDropdownMenuKt;->ExposedDropdownMenuBox$lambda-2(Landroidx/compose/runtime/MutableState;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda-4(Landroidx/compose/runtime/MutableState;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ExposedDropdownMenuKt;->ExposedDropdownMenuBox$lambda-4(Landroidx/compose/runtime/MutableState;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$ExposedDropdownMenuBox$lambda-5(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/ExposedDropdownMenuKt;->ExposedDropdownMenuBox$lambda-5(Landroidx/compose/runtime/MutableState;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ExposedDropdownMenuKt;->updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final expandable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$2;

    .line 14
    .line 15
    invoke-direct {v0, p2, p1}, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-static {p0, p2, v0, p1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static final updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    int-to-float v2, v1

    .line 23
    sub-float/2addr p0, v2

    .line 24
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    sub-int/2addr v0, v1

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-float/2addr v0, p1

    .line 37
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    float-to-int p0, p0

    .line 42
    sub-int/2addr p0, p2

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method
