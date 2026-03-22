.class public final Landroidx/compose/material/IconButtonKt;
.super Ljava/lang/Object;
.source "IconButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final RippleRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/material/IconButtonKt;->RippleRadius:F

    .line 9
    .line 10
    return-void
.end method

.method public static final IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
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
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    move/from16 v11, p6

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v12, 0x6

    .line 12
    const-string v3, "onClick"

    .line 13
    .line 14
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "content"

    .line 18
    .line 19
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const v3, -0x69eb252

    .line 23
    .line 24
    .line 25
    move-object/from16 v4, p5

    .line 26
    .line 27
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const/4 v3, 0x1

    .line 32
    and-int/lit8 v4, p7, 0x1

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    or-int/lit8 v4, v11, 0x6

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    and-int/lit8 v4, v11, 0xe

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move v4, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v4, v1

    .line 52
    :goto_0
    or-int/2addr v4, v11

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v4, v11

    .line 55
    :goto_1
    and-int/lit8 v1, p7, 0x2

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    or-int/lit8 v4, v4, 0x30

    .line 60
    .line 61
    :cond_3
    move-object/from16 v5, p1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    and-int/lit8 v5, v11, 0x70

    .line 65
    .line 66
    if-nez v5, :cond_3

    .line 67
    .line 68
    move-object/from16 v5, p1

    .line 69
    .line 70
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_5

    .line 75
    .line 76
    const/16 v6, 0x20

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    move v6, v0

    .line 80
    :goto_2
    or-int/2addr v4, v6

    .line 81
    :goto_3
    and-int/lit8 v2, p7, 0x4

    .line 82
    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    or-int/lit16 v4, v4, 0x180

    .line 86
    .line 87
    :cond_6
    move/from16 v6, p2

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_7
    and-int/lit16 v6, v11, 0x380

    .line 91
    .line 92
    if-nez v6, :cond_6

    .line 93
    .line 94
    move/from16 v6, p2

    .line 95
    .line 96
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_8

    .line 101
    .line 102
    const/16 v7, 0x100

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    const/16 v7, 0x80

    .line 106
    .line 107
    :goto_4
    or-int/2addr v4, v7

    .line 108
    :goto_5
    and-int/lit8 v7, p7, 0x8

    .line 109
    .line 110
    if-eqz v7, :cond_a

    .line 111
    .line 112
    or-int/lit16 v4, v4, 0xc00

    .line 113
    .line 114
    :cond_9
    move-object/from16 v13, p3

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_a
    and-int/lit16 v13, v11, 0x1c00

    .line 118
    .line 119
    if-nez v13, :cond_9

    .line 120
    .line 121
    move-object/from16 v13, p3

    .line 122
    .line 123
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-eqz v14, :cond_b

    .line 128
    .line 129
    const/16 v14, 0x800

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_b
    const/16 v14, 0x400

    .line 133
    .line 134
    :goto_6
    or-int/2addr v4, v14

    .line 135
    :goto_7
    and-int/lit8 v0, p7, 0x10

    .line 136
    .line 137
    if-eqz v0, :cond_d

    .line 138
    .line 139
    or-int/lit16 v4, v4, 0x6000

    .line 140
    .line 141
    :cond_c
    :goto_8
    move/from16 v20, v4

    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_d
    const v0, 0xe000

    .line 145
    .line 146
    .line 147
    and-int/2addr v0, v11

    .line 148
    if-nez v0, :cond_c

    .line 149
    .line 150
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_e

    .line 155
    .line 156
    const/16 v0, 0x4000

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_e
    const/16 v0, 0x2000

    .line 160
    .line 161
    :goto_9
    or-int/2addr v4, v0

    .line 162
    goto :goto_8

    .line 163
    :goto_a
    const v0, 0xb6db

    .line 164
    .line 165
    .line 166
    and-int v0, v20, v0

    .line 167
    .line 168
    const/16 v4, 0x2492

    .line 169
    .line 170
    if-ne v0, v4, :cond_10

    .line 171
    .line 172
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_f

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 180
    .line 181
    .line 182
    move-object v2, v5

    .line 183
    move v3, v6

    .line 184
    move-object v14, v8

    .line 185
    move-object v4, v13

    .line 186
    goto/16 :goto_12

    .line 187
    .line 188
    :cond_10
    :goto_b
    if-eqz v1, :cond_11

    .line 189
    .line 190
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 191
    .line 192
    move-object/from16 v21, v0

    .line 193
    .line 194
    goto :goto_c

    .line 195
    :cond_11
    move-object/from16 v21, v5

    .line 196
    .line 197
    :goto_c
    if-eqz v2, :cond_12

    .line 198
    .line 199
    move/from16 v22, v3

    .line 200
    .line 201
    goto :goto_d

    .line 202
    :cond_12
    move/from16 v22, v6

    .line 203
    .line 204
    :goto_d
    if-eqz v7, :cond_14

    .line 205
    .line 206
    const v0, -0x1d58f75c

    .line 207
    .line 208
    .line 209
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-ne v0, v1, :cond_13

    .line 223
    .line 224
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_13
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 232
    .line 233
    .line 234
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 235
    .line 236
    move-object/from16 v23, v0

    .line 237
    .line 238
    goto :goto_e

    .line 239
    :cond_14
    move-object/from16 v23, v13

    .line 240
    .line 241
    :goto_e
    invoke-static/range {v21 .. v21}, Landroidx/compose/material/TouchTargetKt;->minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    sget v14, Landroidx/compose/material/IconButtonKt;->RippleRadius:F

    .line 252
    .line 253
    const/16 v18, 0x36

    .line 254
    .line 255
    const/16 v19, 0x4

    .line 256
    .line 257
    const/4 v13, 0x0

    .line 258
    const-wide/16 v15, 0x0

    .line 259
    .line 260
    move-object/from16 v17, v8

    .line 261
    .line 262
    invoke-static/range {v13 .. v19}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    const/16 v7, 0x8

    .line 271
    .line 272
    const/4 v13, 0x0

    .line 273
    const/4 v4, 0x0

    .line 274
    move-object/from16 v1, v23

    .line 275
    .line 276
    move/from16 v3, v22

    .line 277
    .line 278
    move-object/from16 v6, p0

    .line 279
    .line 280
    move-object v14, v8

    .line 281
    move-object v8, v13

    .line 282
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 287
    .line 288
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const v2, 0x2bb5b5d7

    .line 293
    .line 294
    .line 295
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 296
    .line 297
    .line 298
    const/4 v2, 0x0

    .line 299
    invoke-static {v1, v2, v14, v12}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const v3, -0x4ee9b9da

    .line 304
    .line 305
    .line 306
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 318
    .line 319
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 328
    .line 329
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 338
    .line 339
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 340
    .line 341
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    if-nez v8, :cond_15

    .line 354
    .line 355
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 356
    .line 357
    .line 358
    :cond_15
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 359
    .line 360
    .line 361
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    if-eqz v8, :cond_16

    .line 366
    .line 367
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 368
    .line 369
    .line 370
    goto :goto_f

    .line 371
    :cond_16
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 372
    .line 373
    .line 374
    :goto_f
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 375
    .line 376
    .line 377
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    invoke-static {v7, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-static {v7, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 407
    .line 408
    .line 409
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 410
    .line 411
    .line 412
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-interface {v0, v1, v14, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    const v0, 0x7ab4aae9

    .line 428
    .line 429
    .line 430
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 431
    .line 432
    .line 433
    const v0, -0x7f65a980

    .line 434
    .line 435
    .line 436
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 437
    .line 438
    .line 439
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 440
    .line 441
    const v0, -0x7fed5098

    .line 442
    .line 443
    .line 444
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 445
    .line 446
    .line 447
    if-eqz v22, :cond_17

    .line 448
    .line 449
    const v0, 0x2cea593f

    .line 450
    .line 451
    .line 452
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 453
    .line 454
    .line 455
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    check-cast v0, Ljava/lang/Number;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    :goto_10
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 470
    .line 471
    .line 472
    goto :goto_11

    .line 473
    :cond_17
    const v0, 0x2cea5959

    .line 474
    .line 475
    .line 476
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 477
    .line 478
    .line 479
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 480
    .line 481
    invoke-virtual {v0, v14, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    goto :goto_10

    .line 486
    :goto_11
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    filled-new-array {v0}, [Landroidx/compose/runtime/ProvidedValue;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    shr-int/lit8 v1, v20, 0x9

    .line 503
    .line 504
    and-int/lit8 v1, v1, 0x70

    .line 505
    .line 506
    or-int/lit8 v1, v1, 0x8

    .line 507
    .line 508
    invoke-static {v0, v10, v14, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 509
    .line 510
    .line 511
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 512
    .line 513
    .line 514
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 515
    .line 516
    .line 517
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 518
    .line 519
    .line 520
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 521
    .line 522
    .line 523
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 524
    .line 525
    .line 526
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 527
    .line 528
    .line 529
    move-object/from16 v2, v21

    .line 530
    .line 531
    move/from16 v3, v22

    .line 532
    .line 533
    move-object/from16 v4, v23

    .line 534
    .line 535
    :goto_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 536
    .line 537
    .line 538
    move-result-object v8

    .line 539
    if-nez v8, :cond_18

    .line 540
    .line 541
    goto :goto_13

    .line 542
    :cond_18
    new-instance v12, Landroidx/compose/material/IconButtonKt$IconButton$3;

    .line 543
    .line 544
    move-object v0, v12

    .line 545
    move-object/from16 v1, p0

    .line 546
    .line 547
    move-object/from16 v5, p4

    .line 548
    .line 549
    move/from16 v6, p6

    .line 550
    .line 551
    move/from16 v7, p7

    .line 552
    .line 553
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/IconButtonKt$IconButton$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v8, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 557
    .line 558
    .line 559
    :goto_13
    return-void
.end method

.method public static final IconToggleButton(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
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
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
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
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v8, p5

    .line 4
    .line 5
    move/from16 v9, p7

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v10, 0x6

    .line 14
    const-string v4, "onCheckedChange"

    .line 15
    .line 16
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "content"

    .line 20
    .line 21
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v4, -0x3420301

    .line 25
    .line 26
    .line 27
    move-object/from16 v5, p6

    .line 28
    .line 29
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v4, 0x1

    .line 34
    and-int/lit8 v5, p8, 0x1

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    or-int/lit8 v5, v9, 0x6

    .line 39
    .line 40
    move v11, v5

    .line 41
    move/from16 v5, p0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    and-int/lit8 v5, v9, 0xe

    .line 45
    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    move/from16 v5, p0

    .line 49
    .line 50
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-eqz v11, :cond_1

    .line 55
    .line 56
    move v11, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v11, v2

    .line 59
    :goto_0
    or-int/2addr v11, v9

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move/from16 v5, p0

    .line 62
    .line 63
    move v11, v9

    .line 64
    :goto_1
    and-int/lit8 v2, p8, 0x2

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    or-int/lit8 v11, v11, 0x30

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    and-int/lit8 v2, v9, 0x70

    .line 72
    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    move v2, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v2, v0

    .line 84
    :goto_2
    or-int/2addr v11, v2

    .line 85
    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    or-int/lit16 v11, v11, 0x180

    .line 90
    .line 91
    :cond_6
    move-object/from16 v3, p2

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_7
    and-int/lit16 v3, v9, 0x380

    .line 95
    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    move-object/from16 v3, p2

    .line 99
    .line 100
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-eqz v12, :cond_8

    .line 105
    .line 106
    const/16 v12, 0x100

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_8
    const/16 v12, 0x80

    .line 110
    .line 111
    :goto_4
    or-int/2addr v11, v12

    .line 112
    :goto_5
    and-int/lit8 v12, p8, 0x8

    .line 113
    .line 114
    if-eqz v12, :cond_a

    .line 115
    .line 116
    or-int/lit16 v11, v11, 0xc00

    .line 117
    .line 118
    :cond_9
    move/from16 v13, p3

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_a
    and-int/lit16 v13, v9, 0x1c00

    .line 122
    .line 123
    if-nez v13, :cond_9

    .line 124
    .line 125
    move/from16 v13, p3

    .line 126
    .line 127
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_b

    .line 132
    .line 133
    const/16 v14, 0x800

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_b
    const/16 v14, 0x400

    .line 137
    .line 138
    :goto_6
    or-int/2addr v11, v14

    .line 139
    :goto_7
    and-int/lit8 v0, p8, 0x10

    .line 140
    .line 141
    if-eqz v0, :cond_d

    .line 142
    .line 143
    or-int/lit16 v11, v11, 0x6000

    .line 144
    .line 145
    :cond_c
    move-object/from16 v14, p4

    .line 146
    .line 147
    goto :goto_9

    .line 148
    :cond_d
    const v14, 0xe000

    .line 149
    .line 150
    .line 151
    and-int/2addr v14, v9

    .line 152
    if-nez v14, :cond_c

    .line 153
    .line 154
    move-object/from16 v14, p4

    .line 155
    .line 156
    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-eqz v15, :cond_e

    .line 161
    .line 162
    const/16 v15, 0x4000

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_e
    const/16 v15, 0x2000

    .line 166
    .line 167
    :goto_8
    or-int/2addr v11, v15

    .line 168
    :goto_9
    and-int/lit8 v1, p8, 0x20

    .line 169
    .line 170
    if-eqz v1, :cond_10

    .line 171
    .line 172
    const/high16 v1, 0x30000

    .line 173
    .line 174
    :goto_a
    or-int/2addr v11, v1

    .line 175
    :cond_f
    move/from16 v18, v11

    .line 176
    .line 177
    goto :goto_b

    .line 178
    :cond_10
    const/high16 v1, 0x70000

    .line 179
    .line 180
    and-int/2addr v1, v9

    .line 181
    if-nez v1, :cond_f

    .line 182
    .line 183
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_11

    .line 188
    .line 189
    const/high16 v1, 0x20000

    .line 190
    .line 191
    goto :goto_a

    .line 192
    :cond_11
    const/high16 v1, 0x10000

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :goto_b
    const v1, 0x5b6db

    .line 196
    .line 197
    .line 198
    and-int v1, v18, v1

    .line 199
    .line 200
    const v11, 0x12492

    .line 201
    .line 202
    .line 203
    if-ne v1, v11, :cond_13

    .line 204
    .line 205
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_12

    .line 210
    .line 211
    goto :goto_c

    .line 212
    :cond_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 213
    .line 214
    .line 215
    move-object v11, v6

    .line 216
    move v4, v13

    .line 217
    move-object v5, v14

    .line 218
    goto/16 :goto_13

    .line 219
    .line 220
    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    .line 221
    .line 222
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 223
    .line 224
    move-object/from16 v19, v1

    .line 225
    .line 226
    goto :goto_d

    .line 227
    :cond_14
    move-object/from16 v19, v3

    .line 228
    .line 229
    :goto_d
    if-eqz v12, :cond_15

    .line 230
    .line 231
    move/from16 v20, v4

    .line 232
    .line 233
    goto :goto_e

    .line 234
    :cond_15
    move/from16 v20, v13

    .line 235
    .line 236
    :goto_e
    if-eqz v0, :cond_17

    .line 237
    .line 238
    const v0, -0x1d58f75c

    .line 239
    .line 240
    .line 241
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 249
    .line 250
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-ne v0, v1, :cond_16

    .line 255
    .line 256
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_16
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 264
    .line 265
    .line 266
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 267
    .line 268
    move-object/from16 v21, v0

    .line 269
    .line 270
    goto :goto_f

    .line 271
    :cond_17
    move-object/from16 v21, v14

    .line 272
    .line 273
    :goto_f
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/TouchTargetKt;->minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 278
    .line 279
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    sget v12, Landroidx/compose/material/IconButtonKt;->RippleRadius:F

    .line 284
    .line 285
    const/16 v16, 0x36

    .line 286
    .line 287
    const/16 v17, 0x4

    .line 288
    .line 289
    const/4 v11, 0x0

    .line 290
    const-wide/16 v13, 0x0

    .line 291
    .line 292
    move-object v15, v6

    .line 293
    invoke-static/range {v11 .. v17}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    .line 298
    .line 299
    .line 300
    move-result-object v11

    .line 301
    move/from16 v1, p0

    .line 302
    .line 303
    move-object/from16 v2, v21

    .line 304
    .line 305
    move/from16 v4, v20

    .line 306
    .line 307
    move-object v5, v11

    .line 308
    move-object v11, v6

    .line 309
    move-object/from16 v6, p1

    .line 310
    .line 311
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 316
    .line 317
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    const v2, 0x2bb5b5d7

    .line 322
    .line 323
    .line 324
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 325
    .line 326
    .line 327
    const/4 v2, 0x0

    .line 328
    invoke-static {v1, v2, v11, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    const v3, -0x4ee9b9da

    .line 333
    .line 334
    .line 335
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 336
    .line 337
    .line 338
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 347
    .line 348
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 357
    .line 358
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 367
    .line 368
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 369
    .line 370
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    if-nez v13, :cond_18

    .line 383
    .line 384
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 385
    .line 386
    .line 387
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 388
    .line 389
    .line 390
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    if-eqz v13, :cond_19

    .line 395
    .line 396
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 397
    .line 398
    .line 399
    goto :goto_10

    .line 400
    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 401
    .line 402
    .line 403
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 404
    .line 405
    .line 406
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    invoke-static {v12, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-static {v12, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v12, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 436
    .line 437
    .line 438
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 439
    .line 440
    .line 441
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-interface {v0, v1, v11, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    const v0, 0x7ab4aae9

    .line 457
    .line 458
    .line 459
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 460
    .line 461
    .line 462
    const v0, -0x7f65a980

    .line 463
    .line 464
    .line 465
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 466
    .line 467
    .line 468
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 469
    .line 470
    const v0, -0x19a32ec7

    .line 471
    .line 472
    .line 473
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 474
    .line 475
    .line 476
    if-eqz v20, :cond_1a

    .line 477
    .line 478
    const v0, -0x6f4477d6

    .line 479
    .line 480
    .line 481
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 482
    .line 483
    .line 484
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    check-cast v0, Ljava/lang/Number;

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 499
    .line 500
    .line 501
    goto :goto_12

    .line 502
    :cond_1a
    const v0, -0x6f4477bc

    .line 503
    .line 504
    .line 505
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 506
    .line 507
    .line 508
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 509
    .line 510
    invoke-virtual {v0, v11, v10}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    goto :goto_11

    .line 515
    :goto_12
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    filled-new-array {v0}, [Landroidx/compose/runtime/ProvidedValue;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    shr-int/lit8 v1, v18, 0xc

    .line 532
    .line 533
    and-int/lit8 v1, v1, 0x70

    .line 534
    .line 535
    or-int/lit8 v1, v1, 0x8

    .line 536
    .line 537
    invoke-static {v0, v8, v11, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 538
    .line 539
    .line 540
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 541
    .line 542
    .line 543
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 544
    .line 545
    .line 546
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 547
    .line 548
    .line 549
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 550
    .line 551
    .line 552
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 553
    .line 554
    .line 555
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 556
    .line 557
    .line 558
    move-object/from16 v3, v19

    .line 559
    .line 560
    move/from16 v4, v20

    .line 561
    .line 562
    move-object/from16 v5, v21

    .line 563
    .line 564
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 565
    .line 566
    .line 567
    move-result-object v10

    .line 568
    if-nez v10, :cond_1b

    .line 569
    .line 570
    goto :goto_14

    .line 571
    :cond_1b
    new-instance v11, Landroidx/compose/material/IconButtonKt$IconToggleButton$3;

    .line 572
    .line 573
    move-object v0, v11

    .line 574
    move/from16 v1, p0

    .line 575
    .line 576
    move-object/from16 v2, p1

    .line 577
    .line 578
    move-object/from16 v6, p5

    .line 579
    .line 580
    move/from16 v7, p7

    .line 581
    .line 582
    move/from16 v8, p8

    .line 583
    .line 584
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/IconButtonKt$IconToggleButton$3;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    .line 585
    .line 586
    .line 587
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 588
    .line 589
    .line 590
    :goto_14
    return-void
.end method
