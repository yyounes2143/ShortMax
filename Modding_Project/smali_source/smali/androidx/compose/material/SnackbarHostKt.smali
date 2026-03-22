.class public final Landroidx/compose/material/SnackbarHostKt;
.super Ljava/lang/Object;
.source "SnackbarHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/SnackbarHostKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final SnackbarFadeInMillis:I = 0x96

.field private static final SnackbarFadeOutMillis:I = 0x4b

.field private static final SnackbarInBetweenDelayMillis:I


# direct methods
.method private static final FadeInFadeOutWithScale(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SnackbarData;",
            "Landroidx/compose/ui/Modifier;",
            "Lat/n<",
            "-",
            "Landroidx/compose/material/SnackbarData;",
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v5, 0x6

    .line 10
    const v6, 0x795cf2bd

    .line 11
    .line 12
    .line 13
    move-object/from16 v7, p3

    .line 14
    .line 15
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const/4 v7, 0x1

    .line 20
    and-int/lit8 v8, p5, 0x1

    .line 21
    .line 22
    if-eqz v8, :cond_0

    .line 23
    .line 24
    or-int/lit8 v8, v4, 0x6

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    and-int/lit8 v8, v4, 0xe

    .line 28
    .line 29
    if-nez v8, :cond_2

    .line 30
    .line 31
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_1

    .line 36
    .line 37
    move v8, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v8, v0

    .line 40
    :goto_0
    or-int/2addr v8, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v8, v4

    .line 43
    :goto_1
    and-int/lit8 v0, p5, 0x2

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    or-int/lit8 v8, v8, 0x30

    .line 48
    .line 49
    :cond_3
    move-object/from16 v9, p1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    and-int/lit8 v9, v4, 0x70

    .line 53
    .line 54
    if-nez v9, :cond_3

    .line 55
    .line 56
    move-object/from16 v9, p1

    .line 57
    .line 58
    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_5

    .line 63
    .line 64
    const/16 v10, 0x20

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    const/16 v10, 0x10

    .line 68
    .line 69
    :goto_2
    or-int/2addr v8, v10

    .line 70
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    or-int/lit16 v8, v8, 0x180

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_6
    and-int/lit16 v2, v4, 0x380

    .line 78
    .line 79
    if-nez v2, :cond_8

    .line 80
    .line 81
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    const/16 v2, 0x100

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const/16 v2, 0x80

    .line 91
    .line 92
    :goto_4
    or-int/2addr v8, v2

    .line 93
    :cond_8
    :goto_5
    and-int/lit16 v2, v8, 0x2db

    .line 94
    .line 95
    const/16 v10, 0x92

    .line 96
    .line 97
    if-ne v2, v10, :cond_a

    .line 98
    .line 99
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_9

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 107
    .line 108
    .line 109
    move-object v2, v9

    .line 110
    goto/16 :goto_c

    .line 111
    .line 112
    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    .line 113
    .line 114
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_b
    move-object v0, v9

    .line 118
    :goto_7
    const v2, -0x1d58f75c

    .line 119
    .line 120
    .line 121
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 129
    .line 130
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    if-ne v2, v9, :cond_c

    .line 135
    .line 136
    new-instance v2, Landroidx/compose/material/FadeInFadeOutState;

    .line 137
    .line 138
    invoke-direct {v2}, Landroidx/compose/material/FadeInFadeOutState;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 145
    .line 146
    .line 147
    check-cast v2, Landroidx/compose/material/FadeInFadeOutState;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroidx/compose/material/FadeInFadeOutState;->getCurrent()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-nez v9, :cond_f

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Landroidx/compose/material/FadeInFadeOutState;->setCurrent(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Landroidx/compose/material/FadeInFadeOutState;->getItems()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    check-cast v9, Ljava/lang/Iterable;

    .line 167
    .line 168
    new-instance v10, Ljava/util/ArrayList;

    .line 169
    .line 170
    const/16 v11, 0xa

    .line 171
    .line 172
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_d

    .line 188
    .line 189
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    check-cast v11, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 194
    .line 195
    invoke-virtual {v11}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->getKey()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    check-cast v11, Landroidx/compose/material/SnackbarData;

    .line 200
    .line 201
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_d
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-nez v10, :cond_e

    .line 214
    .line 215
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/material/FadeInFadeOutState;->getItems()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 223
    .line 224
    .line 225
    move-object v10, v9

    .line 226
    check-cast v10, Ljava/lang/Iterable;

    .line 227
    .line 228
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    check-cast v10, Ljava/lang/Iterable;

    .line 233
    .line 234
    invoke-virtual {v2}, Landroidx/compose/material/FadeInFadeOutState;->getItems()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    check-cast v11, Ljava/util/Collection;

    .line 239
    .line 240
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    if-eqz v12, :cond_f

    .line 249
    .line 250
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    check-cast v12, Landroidx/compose/material/SnackbarData;

    .line 255
    .line 256
    new-instance v13, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 257
    .line 258
    new-instance v14, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;

    .line 259
    .line 260
    invoke-direct {v14, v12, v1, v9, v2}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/material/SnackbarData;Ljava/util/List;Landroidx/compose/material/FadeInFadeOutState;)V

    .line 261
    .line 262
    .line 263
    const v15, -0x59beafa

    .line 264
    .line 265
    .line 266
    invoke-static {v6, v15, v7, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    invoke-direct {v13, v12, v14}, Landroidx/compose/material/FadeInFadeOutAnimationItem;-><init>(Ljava/lang/Object;Lat/n;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_f
    const v9, 0x2bb5b5d7

    .line 278
    .line 279
    .line 280
    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 281
    .line 282
    .line 283
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 284
    .line 285
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    const/4 v10, 0x0

    .line 290
    invoke-static {v9, v10, v6, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const v11, -0x4ee9b9da

    .line 295
    .line 296
    .line 297
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 298
    .line 299
    .line 300
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 309
    .line 310
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 319
    .line 320
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 329
    .line 330
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 331
    .line 332
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 333
    .line 334
    .line 335
    move-result-object v15

    .line 336
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 341
    .line 342
    .line 343
    move-result-object v16

    .line 344
    if-nez v16, :cond_10

    .line 345
    .line 346
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 347
    .line 348
    .line 349
    :cond_10
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 350
    .line 351
    .line 352
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 353
    .line 354
    .line 355
    move-result v16

    .line 356
    if-eqz v16, :cond_11

    .line 357
    .line 358
    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_11
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 363
    .line 364
    .line 365
    :goto_a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 366
    .line 367
    .line 368
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 369
    .line 370
    .line 371
    move-result-object v15

    .line 372
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    invoke-static {v15, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-static {v15, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    invoke-static {v15, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-static {v15, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 398
    .line 399
    .line 400
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 401
    .line 402
    .line 403
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    invoke-interface {v5, v7, v6, v9}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    const v5, 0x7ab4aae9

    .line 419
    .line 420
    .line 421
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 422
    .line 423
    .line 424
    const v5, -0x7f65a980

    .line 425
    .line 426
    .line 427
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 428
    .line 429
    .line 430
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 431
    .line 432
    const v5, -0x6a92f789

    .line 433
    .line 434
    .line 435
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 436
    .line 437
    .line 438
    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v2, v5}, Landroidx/compose/material/FadeInFadeOutState;->setScope(Landroidx/compose/runtime/RecomposeScope;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Landroidx/compose/material/FadeInFadeOutState;->getItems()Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    :goto_b
    if-ge v10, v5, :cond_12

    .line 454
    .line 455
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    check-cast v7, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 460
    .line 461
    invoke-virtual {v7}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->component1()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    check-cast v9, Landroidx/compose/material/SnackbarData;

    .line 466
    .line 467
    invoke-virtual {v7}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->component2()Lat/n;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    const v11, -0xc6ead39

    .line 472
    .line 473
    .line 474
    invoke-interface {v6, v11, v9}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    new-instance v11, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$2$1$1;

    .line 478
    .line 479
    invoke-direct {v11, v3, v9, v8}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$2$1$1;-><init>(Lat/n;Landroidx/compose/material/SnackbarData;I)V

    .line 480
    .line 481
    .line 482
    const v9, 0x79b62c7c

    .line 483
    .line 484
    .line 485
    const/4 v12, 0x1

    .line 486
    invoke-static {v6, v9, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    const/4 v11, 0x6

    .line 491
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v13

    .line 495
    invoke-interface {v7, v9, v6, v13}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    .line 499
    .line 500
    .line 501
    add-int/2addr v10, v12

    .line 502
    goto :goto_b

    .line 503
    :cond_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 504
    .line 505
    .line 506
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 507
    .line 508
    .line 509
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 510
    .line 511
    .line 512
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 513
    .line 514
    .line 515
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 516
    .line 517
    .line 518
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 519
    .line 520
    .line 521
    move-object v2, v0

    .line 522
    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 523
    .line 524
    .line 525
    move-result-object v6

    .line 526
    if-nez v6, :cond_13

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :cond_13
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$3;

    .line 530
    .line 531
    move-object v0, v7

    .line 532
    move-object/from16 v1, p0

    .line 533
    .line 534
    move-object/from16 v3, p2

    .line 535
    .line 536
    move/from16 v4, p4

    .line 537
    .line 538
    move/from16 v5, p5

    .line 539
    .line 540
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$3;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Lat/n;II)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 544
    .line 545
    .line 546
    :goto_d
    return-void
.end method

.method public static final SnackbarHost(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 12
    .param p0    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/ui/Modifier;",
            "Lat/n<",
            "-",
            "Landroidx/compose/material/SnackbarData;",
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
    move-object v1, p0

    .line 2
    move/from16 v4, p4

    .line 3
    .line 4
    const-string v0, "hostState"

    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const v0, 0x19b0b9fc

    .line 10
    .line 11
    .line 12
    move-object v2, p3

    .line 13
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    and-int/lit8 v2, p5, 0x1

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    or-int/lit8 v2, v4, 0x6

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v2, v4, 0xe

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x2

    .line 37
    :goto_0
    or-int/2addr v2, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v2, v4

    .line 40
    :goto_1
    and-int/lit8 v3, p5, 0x2

    .line 41
    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    or-int/lit8 v2, v2, 0x30

    .line 45
    .line 46
    :cond_3
    move-object v5, p1

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    and-int/lit8 v5, v4, 0x70

    .line 49
    .line 50
    if-nez v5, :cond_3

    .line 51
    .line 52
    move-object v5, p1

    .line 53
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_5

    .line 58
    .line 59
    const/16 v6, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    const/16 v6, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v2, v6

    .line 65
    :goto_3
    and-int/lit8 v6, p5, 0x4

    .line 66
    .line 67
    if-eqz v6, :cond_7

    .line 68
    .line 69
    or-int/lit16 v2, v2, 0x180

    .line 70
    .line 71
    :cond_6
    move-object v7, p2

    .line 72
    goto :goto_5

    .line 73
    :cond_7
    and-int/lit16 v7, v4, 0x380

    .line 74
    .line 75
    if-nez v7, :cond_6

    .line 76
    .line 77
    move-object v7, p2

    .line 78
    invoke-interface {v0, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_8

    .line 83
    .line 84
    const/16 v8, 0x100

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_8
    const/16 v8, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v2, v8

    .line 90
    :goto_5
    and-int/lit16 v8, v2, 0x2db

    .line 91
    .line 92
    const/16 v9, 0x92

    .line 93
    .line 94
    if-ne v8, v9, :cond_a

    .line 95
    .line 96
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_9

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 104
    .line 105
    .line 106
    move-object v2, v5

    .line 107
    move-object v3, v7

    .line 108
    goto :goto_9

    .line 109
    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    .line 110
    .line 111
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_b
    move-object v3, v5

    .line 115
    :goto_7
    if-eqz v6, :cond_c

    .line 116
    .line 117
    sget-object v5, Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;->getLambda-1$material_release()Lat/n;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    move-object v11, v5

    .line 124
    goto :goto_8

    .line 125
    :cond_c
    move-object v11, v7

    .line 126
    :goto_8
    invoke-virtual {p0}, Landroidx/compose/material/SnackbarHostState;->getCurrentSnackbarData()Landroidx/compose/material/SnackbarData;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalAccessibilityManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 139
    .line 140
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$1;

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    invoke-direct {v7, v5, v6, v8}, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$1;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/platform/AccessibilityManager;Lrs/c;)V

    .line 144
    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    invoke-static {v5, v7, v0, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/compose/material/SnackbarHostState;->getCurrentSnackbarData()Landroidx/compose/material/SnackbarData;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    and-int/lit16 v9, v2, 0x3f0

    .line 155
    .line 156
    const/4 v10, 0x0

    .line 157
    move-object v6, v3

    .line 158
    move-object v7, v11

    .line 159
    move-object v8, v0

    .line 160
    invoke-static/range {v5 .. v10}, Landroidx/compose/material/SnackbarHostKt;->FadeInFadeOutWithScale(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 161
    .line 162
    .line 163
    move-object v2, v3

    .line 164
    move-object v3, v11

    .line 165
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    if-nez v6, :cond_d

    .line 170
    .line 171
    goto :goto_a

    .line 172
    :cond_d
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$2;

    .line 173
    .line 174
    move-object v0, v7

    .line 175
    move-object v1, p0

    .line 176
    move/from16 v4, p4

    .line 177
    .line 178
    move/from16 v5, p5

    .line 179
    .line 180
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$2;-><init>(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Lat/n;II)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    :goto_a
    return-void
.end method

.method public static final synthetic access$FadeInFadeOutWithScale(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SnackbarHostKt;->FadeInFadeOutWithScale(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$animatedOpacity(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SnackbarHostKt;->animatedOpacity(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$animatedScale(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarHostKt;->animatedScale(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final animatedOpacity(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, 0x3c954f6f

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    sget-object p2, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$1;->INSTANCE:Landroidx/compose/material/SnackbarHostKt$animatedOpacity$1;

    .line 12
    .line 13
    :cond_0
    move-object v4, p2

    .line 14
    const p2, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    sget-object p5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 25
    .line 26
    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    if-ne p2, p5, :cond_2

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    const/high16 p5, 0x3f800000    # 1.0f

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p5, p2

    .line 39
    :goto_0
    const/4 v0, 0x2

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p5, p2, v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 49
    .line 50
    .line 51
    check-cast p2, Landroidx/compose/animation/core/Animatable;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    new-instance v6, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$2;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    move-object v0, v6

    .line 61
    move-object v1, p2

    .line 62
    move v2, p1

    .line 63
    move-object v3, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$2;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 65
    .line 66
    .line 67
    shr-int/lit8 p0, p4, 0x3

    .line 68
    .line 69
    and-int/lit8 p0, p0, 0xe

    .line 70
    .line 71
    invoke-static {p5, v6, p3, p0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 79
    .line 80
    .line 81
    return-object p0
.end method

.method private static final animatedScale(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 4
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, 0x776b0f5c

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    const v0, -0x1d58f75c

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 v1, 0x0

    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-static {v0, v1, v3, v2}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v3, Landroidx/compose/material/SnackbarHostKt$animatedScale$1;

    .line 53
    .line 54
    invoke-direct {v3, v0, p1, p0, v2}, Landroidx/compose/material/SnackbarHostKt$animatedScale$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/AnimationSpec;Lrs/c;)V

    .line 55
    .line 56
    .line 57
    shr-int/lit8 p0, p3, 0x3

    .line 58
    .line 59
    and-int/lit8 p0, p0, 0xe

    .line 60
    .line 61
    invoke-static {v1, v3, p2, p0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method

.method public static final toMillis(Landroidx/compose/material/SnackbarDuration;ZLandroidx/compose/ui/platform/AccessibilityManager;)J
    .locals 8
    .param p0    # Landroidx/compose/material/SnackbarDuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/platform/AccessibilityManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/material/SnackbarHostKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p0, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    const-wide/16 v0, 0xfa0

    .line 24
    .line 25
    :goto_0
    move-wide v3, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 28
    .line 29
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    const-wide/16 v0, 0x2710

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    if-nez p2, :cond_3

    .line 43
    .line 44
    return-wide v3

    .line 45
    :cond_3
    const/4 v5, 0x1

    .line 46
    const/4 v6, 0x1

    .line 47
    move-object v2, p2

    .line 48
    move v7, p1

    .line 49
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/platform/AccessibilityManager;->calculateRecommendedTimeoutMillis(JZZZ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p0

    .line 53
    return-wide p0
.end method
