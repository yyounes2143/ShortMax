.class public final Landroidx/compose/material/ExposedDropdownMenuBoxScope$DefaultImpls;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/ExposedDropdownMenuBoxScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static ExposedDropdownMenu(Landroidx/compose/material/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/material/ExposedDropdownMenuBoxScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
    move-object/from16 v6, p2

    .line 2
    .line 3
    move-object/from16 v14, p4

    .line 4
    .line 5
    move/from16 v15, p6

    .line 6
    .line 7
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "content"

    .line 13
    .line 14
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x457a327f

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p5

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    and-int/lit8 v0, p7, 0x1

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v15, 0x6

    .line 32
    .line 33
    move/from16 v4, p1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    and-int/lit8 v0, v15, 0xe

    .line 37
    .line 38
    move/from16 v4, p1

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v1

    .line 51
    :goto_0
    or-int/2addr v0, v15

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v0, v15

    .line 54
    :goto_1
    and-int/lit8 v2, p7, 0x2

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    or-int/lit8 v0, v0, 0x30

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    and-int/lit8 v2, v15, 0x70

    .line 62
    .line 63
    if-nez v2, :cond_5

    .line 64
    .line 65
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    const/16 v2, 0x20

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/16 v2, 0x10

    .line 75
    .line 76
    :goto_2
    or-int/2addr v0, v2

    .line 77
    :cond_5
    :goto_3
    and-int/lit8 v2, p7, 0x4

    .line 78
    .line 79
    if-eqz v2, :cond_7

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x180

    .line 82
    .line 83
    :cond_6
    move-object/from16 v3, p3

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_7
    and-int/lit16 v3, v15, 0x380

    .line 87
    .line 88
    if-nez v3, :cond_6

    .line 89
    .line 90
    move-object/from16 v3, p3

    .line 91
    .line 92
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    const/16 v7, 0x100

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    const/16 v7, 0x80

    .line 102
    .line 103
    :goto_4
    or-int/2addr v0, v7

    .line 104
    :goto_5
    and-int/lit8 v7, p7, 0x8

    .line 105
    .line 106
    if-eqz v7, :cond_9

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0xc00

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_9
    and-int/lit16 v7, v15, 0x1c00

    .line 112
    .line 113
    if-nez v7, :cond_b

    .line 114
    .line 115
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_a

    .line 120
    .line 121
    const/16 v7, 0x800

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_a
    const/16 v7, 0x400

    .line 125
    .line 126
    :goto_6
    or-int/2addr v0, v7

    .line 127
    :cond_b
    :goto_7
    and-int/lit8 v7, p7, 0x10

    .line 128
    .line 129
    if-eqz v7, :cond_c

    .line 130
    .line 131
    or-int/lit16 v0, v0, 0x6000

    .line 132
    .line 133
    move-object/from16 v13, p0

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_c
    const v7, 0xe000

    .line 137
    .line 138
    .line 139
    and-int/2addr v7, v15

    .line 140
    move-object/from16 v13, p0

    .line 141
    .line 142
    if-nez v7, :cond_e

    .line 143
    .line 144
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_d

    .line 149
    .line 150
    const/16 v7, 0x4000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_d
    const/16 v7, 0x2000

    .line 154
    .line 155
    :goto_8
    or-int/2addr v0, v7

    .line 156
    :cond_e
    :goto_9
    const v7, 0xb6db

    .line 157
    .line 158
    .line 159
    and-int/2addr v7, v0

    .line 160
    const/16 v8, 0x2492

    .line 161
    .line 162
    if-ne v7, v8, :cond_10

    .line 163
    .line 164
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-nez v7, :cond_f

    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    move-object v4, v3

    .line 175
    move-object v7, v5

    .line 176
    goto/16 :goto_e

    .line 177
    .line 178
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 179
    .line 180
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 181
    .line 182
    move-object/from16 v16, v2

    .line 183
    .line 184
    goto :goto_b

    .line 185
    :cond_11
    move-object/from16 v16, v3

    .line 186
    .line 187
    :goto_b
    const v2, -0x1d58f75c

    .line 188
    .line 189
    .line 190
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 198
    .line 199
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    if-ne v3, v8, :cond_12

    .line 204
    .line 205
    new-instance v3, Landroidx/compose/animation/core/MutableTransitionState;

    .line 206
    .line 207
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-direct {v3, v8}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 216
    .line 217
    .line 218
    move-object v8, v3

    .line 219
    check-cast v8, Landroidx/compose/animation/core/MutableTransitionState;

    .line 220
    .line 221
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v8, v3}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-nez v3, :cond_14

    .line 239
    .line 240
    invoke-virtual {v8}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    check-cast v3, Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_13

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_13
    move-object v7, v5

    .line 254
    goto/16 :goto_d

    .line 255
    .line 256
    :cond_14
    :goto_c
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    if-ne v2, v3, :cond_15

    .line 268
    .line 269
    sget-object v2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 270
    .line 271
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 272
    .line 273
    .line 274
    move-result-wide v2

    .line 275
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const/4 v3, 0x0

    .line 280
    invoke-static {v2, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_15
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 288
    .line 289
    .line 290
    move-object v9, v2

    .line 291
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 292
    .line 293
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    move-object/from16 v20, v1

    .line 302
    .line 303
    check-cast v20, Landroidx/compose/ui/unit/Density;

    .line 304
    .line 305
    sget-object v1, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    .line 306
    .line 307
    invoke-virtual {v1}, Landroidx/compose/ui/unit/DpOffset$Companion;->getZero-RKDOV3M()J

    .line 308
    .line 309
    .line 310
    move-result-wide v18

    .line 311
    const v1, 0x44faf204

    .line 312
    .line 313
    .line 314
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    if-nez v1, :cond_16

    .line 326
    .line 327
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-ne v2, v1, :cond_17

    .line 332
    .line 333
    :cond_16
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;

    .line 334
    .line 335
    invoke-direct {v2, v9}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_17
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 342
    .line 343
    .line 344
    move-object/from16 v21, v2

    .line 345
    .line 346
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 347
    .line 348
    new-instance v1, Landroidx/compose/material/DropdownMenuPositionProvider;

    .line 349
    .line 350
    const/16 v22, 0x0

    .line 351
    .line 352
    move-object/from16 v17, v1

    .line 353
    .line 354
    invoke-direct/range {v17 .. v22}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 355
    .line 356
    .line 357
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;

    .line 358
    .line 359
    move-object v7, v2

    .line 360
    move-object/from16 v10, p0

    .line 361
    .line 362
    move-object/from16 v11, v16

    .line 363
    .line 364
    move-object/from16 v12, p4

    .line 365
    .line 366
    move v13, v0

    .line 367
    invoke-direct/range {v7 .. v13}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Lat/n;I)V

    .line 368
    .line 369
    .line 370
    const v3, -0x183cffd9

    .line 371
    .line 372
    .line 373
    const/4 v7, 0x1

    .line 374
    invoke-static {v5, v3, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    shr-int/lit8 v0, v0, 0x3

    .line 379
    .line 380
    and-int/lit8 v0, v0, 0xe

    .line 381
    .line 382
    or-int/lit16 v7, v0, 0x180

    .line 383
    .line 384
    const/4 v8, 0x0

    .line 385
    move-object/from16 v0, p2

    .line 386
    .line 387
    move-object v3, v5

    .line 388
    move v4, v7

    .line 389
    move-object v7, v5

    .line 390
    move v5, v8

    .line 391
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->ExposedDropdownMenuPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 392
    .line 393
    .line 394
    :goto_d
    move-object/from16 v4, v16

    .line 395
    .line 396
    :goto_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    if-nez v8, :cond_18

    .line 401
    .line 402
    goto :goto_f

    .line 403
    :cond_18
    new-instance v9, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    .line 404
    .line 405
    move-object v0, v9

    .line 406
    move-object/from16 v1, p0

    .line 407
    .line 408
    move/from16 v2, p1

    .line 409
    .line 410
    move-object/from16 v3, p2

    .line 411
    .line 412
    move-object/from16 v5, p4

    .line 413
    .line 414
    move/from16 v6, p6

    .line 415
    .line 416
    move/from16 v7, p7

    .line 417
    .line 418
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lat/n;II)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 422
    .line 423
    .line 424
    :goto_f
    return-void
.end method

.method public static synthetic exposedDropdownSize$default(Landroidx/compose/material/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    and-int/2addr p3, p4

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    move p2, p4

    .line 8
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/material/ExposedDropdownMenuBoxScope;->exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: exposedDropdownSize"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method
