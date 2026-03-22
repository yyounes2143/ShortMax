.class public final Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;
.source "AndroidPopup.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    .line 11
    return-void
.end method

.method public static final Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/ui/window/PopupPositionProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/window/PopupProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
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
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p3

    .line 4
    .line 5
    move/from16 v13, p5

    .line 6
    .line 7
    const-string v0, "popupPositionProvider"

    .line 8
    .line 9
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "content"

    .line 13
    .line 14
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x317c909c

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p4

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v14

    .line 26
    and-int/lit8 v0, p6, 0x1

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    or-int/lit8 v0, v13, 0x6

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    and-int/lit8 v0, v13, 0xe

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_0
    or-int/2addr v0, v13

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v13

    .line 49
    :goto_1
    and-int/lit8 v1, p6, 0x2

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    or-int/lit8 v0, v0, 0x30

    .line 54
    .line 55
    :cond_3
    move-object/from16 v2, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v2, v13, 0x70

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    move-object/from16 v2, p1

    .line 63
    .line 64
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    const/16 v3, 0x20

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v3, 0x10

    .line 74
    .line 75
    :goto_2
    or-int/2addr v0, v3

    .line 76
    :goto_3
    and-int/lit16 v3, v13, 0x380

    .line 77
    .line 78
    if-nez v3, :cond_8

    .line 79
    .line 80
    and-int/lit8 v3, p6, 0x4

    .line 81
    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    move-object/from16 v3, p2

    .line 85
    .line 86
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_7

    .line 91
    .line 92
    const/16 v4, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-object/from16 v3, p2

    .line 96
    .line 97
    :cond_7
    const/16 v4, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v0, v4

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move-object/from16 v3, p2

    .line 102
    .line 103
    :goto_5
    and-int/lit8 v4, p6, 0x8

    .line 104
    .line 105
    if-eqz v4, :cond_9

    .line 106
    .line 107
    or-int/lit16 v0, v0, 0xc00

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    and-int/lit16 v4, v13, 0x1c00

    .line 111
    .line 112
    if-nez v4, :cond_b

    .line 113
    .line 114
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_a

    .line 119
    .line 120
    const/16 v4, 0x800

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_a
    const/16 v4, 0x400

    .line 124
    .line 125
    :goto_6
    or-int/2addr v0, v4

    .line 126
    :cond_b
    :goto_7
    and-int/lit16 v4, v0, 0x16db

    .line 127
    .line 128
    const/16 v5, 0x492

    .line 129
    .line 130
    if-ne v4, v5, :cond_d

    .line 131
    .line 132
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_c

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_d

    .line 143
    .line 144
    :cond_d
    :goto_8
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 145
    .line 146
    .line 147
    and-int/lit8 v4, v13, 0x1

    .line 148
    .line 149
    if-eqz v4, :cond_10

    .line 150
    .line 151
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_e

    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    and-int/lit8 v1, p6, 0x4

    .line 162
    .line 163
    if-eqz v1, :cond_f

    .line 164
    .line 165
    and-int/lit16 v0, v0, -0x381

    .line 166
    .line 167
    :cond_f
    move/from16 v18, v0

    .line 168
    .line 169
    move-object/from16 v16, v2

    .line 170
    .line 171
    move-object/from16 v17, v3

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    :cond_11
    and-int/lit8 v1, p6, 0x4

    .line 178
    .line 179
    if-eqz v1, :cond_f

    .line 180
    .line 181
    new-instance v1, Landroidx/compose/ui/window/PopupProperties;

    .line 182
    .line 183
    const/16 v23, 0x3f

    .line 184
    .line 185
    const/16 v24, 0x0

    .line 186
    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    const/16 v19, 0x0

    .line 192
    .line 193
    const/16 v20, 0x0

    .line 194
    .line 195
    const/16 v21, 0x0

    .line 196
    .line 197
    const/16 v22, 0x0

    .line 198
    .line 199
    move-object/from16 v16, v1

    .line 200
    .line 201
    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    .line 203
    .line 204
    and-int/lit16 v0, v0, -0x381

    .line 205
    .line 206
    move/from16 v18, v0

    .line 207
    .line 208
    move-object/from16 v17, v1

    .line 209
    .line 210
    move-object/from16 v16, v2

    .line 211
    .line 212
    :goto_a
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    move-object v8, v0

    .line 224
    check-cast v8, Landroid/view/View;

    .line 225
    .line 226
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    move-object v9, v0

    .line 235
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 236
    .line 237
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 238
    .line 239
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    move-object/from16 v19, v0

    .line 244
    .line 245
    check-cast v19, Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object v10, v0

    .line 256
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 257
    .line 258
    const/4 v0, 0x0

    .line 259
    invoke-static {v14, v0}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    shr-int/lit8 v1, v18, 0x9

    .line 264
    .line 265
    and-int/lit8 v1, v1, 0xe

    .line 266
    .line 267
    invoke-static {v12, v14, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    new-array v1, v0, [Ljava/lang/Object;

    .line 272
    .line 273
    sget-object v4, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1;

    .line 274
    .line 275
    const/16 v20, 0xc08

    .line 276
    .line 277
    const/16 v21, 0x6

    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    const/4 v3, 0x0

    .line 281
    move-object v5, v14

    .line 282
    move-object v15, v6

    .line 283
    move/from16 v6, v20

    .line 284
    .line 285
    move-object/from16 v25, v7

    .line 286
    .line 287
    move/from16 v7, v21

    .line 288
    .line 289
    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    move-object v7, v1

    .line 294
    check-cast v7, Ljava/util/UUID;

    .line 295
    .line 296
    const v1, -0x1d58f75c

    .line 297
    .line 298
    .line 299
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 307
    .line 308
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    if-ne v1, v2, :cond_12

    .line 313
    .line 314
    new-instance v6, Landroidx/compose/ui/window/PopupLayout;

    .line 315
    .line 316
    const-string v1, "popupId"

    .line 317
    .line 318
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/16 v20, 0x80

    .line 322
    .line 323
    const/16 v21, 0x0

    .line 324
    .line 325
    const/16 v22, 0x0

    .line 326
    .line 327
    move v5, v0

    .line 328
    move-object v0, v6

    .line 329
    move-object/from16 v1, v16

    .line 330
    .line 331
    move-object/from16 v2, v17

    .line 332
    .line 333
    move-object/from16 v3, v19

    .line 334
    .line 335
    move-object v4, v8

    .line 336
    move v8, v5

    .line 337
    move-object v5, v9

    .line 338
    move-object v9, v6

    .line 339
    move-object/from16 v6, p0

    .line 340
    .line 341
    move-object/from16 v8, v22

    .line 342
    .line 343
    move-object/from16 v26, v9

    .line 344
    .line 345
    move/from16 v9, v20

    .line 346
    .line 347
    move-object/from16 p1, v10

    .line 348
    .line 349
    move-object/from16 v10, v21

    .line 350
    .line 351
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;Landroidx/compose/ui/window/PopupLayoutHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;

    .line 355
    .line 356
    move-object/from16 v1, v26

    .line 357
    .line 358
    invoke-direct {v0, v1, v15}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/State;)V

    .line 359
    .line 360
    .line 361
    const v2, 0x4da88f2f    # 3.53494496E8f

    .line 362
    .line 363
    .line 364
    const/4 v3, 0x1

    .line 365
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    move-object/from16 v2, v25

    .line 370
    .line 371
    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/window/PopupLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_12
    move-object/from16 p1, v10

    .line 379
    .line 380
    :goto_b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 381
    .line 382
    .line 383
    check-cast v1, Landroidx/compose/ui/window/PopupLayout;

    .line 384
    .line 385
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2;

    .line 386
    .line 387
    move-object v3, v0

    .line 388
    move-object v4, v1

    .line 389
    move-object/from16 v5, v16

    .line 390
    .line 391
    move-object/from16 v6, v17

    .line 392
    .line 393
    move-object/from16 v7, v19

    .line 394
    .line 395
    move-object/from16 v8, p1

    .line 396
    .line 397
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 398
    .line 399
    .line 400
    const/16 v2, 0x8

    .line 401
    .line 402
    invoke-static {v1, v0, v14, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 403
    .line 404
    .line 405
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3;

    .line 406
    .line 407
    move-object v3, v0

    .line 408
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 409
    .line 410
    .line 411
    const/4 v3, 0x0

    .line 412
    invoke-static {v0, v14, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 413
    .line 414
    .line 415
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4;

    .line 416
    .line 417
    invoke-direct {v0, v1, v11}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 418
    .line 419
    .line 420
    and-int/lit8 v4, v18, 0xe

    .line 421
    .line 422
    invoke-static {v11, v0, v14, v4}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5;

    .line 426
    .line 427
    const/4 v4, 0x0

    .line 428
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5;-><init>(Landroidx/compose/ui/window/PopupLayout;Lrs/c;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v1, v0, v14, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 432
    .line 433
    .line 434
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 435
    .line 436
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;

    .line 437
    .line 438
    invoke-direct {v2, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    .line 439
    .line 440
    .line 441
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8;

    .line 446
    .line 447
    move-object/from16 v4, p1

    .line 448
    .line 449
    invoke-direct {v2, v1, v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 450
    .line 451
    .line 452
    const v1, -0x4ee9b9da

    .line 453
    .line 454
    .line 455
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 456
    .line 457
    .line 458
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 467
    .line 468
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 477
    .line 478
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 487
    .line 488
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 489
    .line 490
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    if-nez v8, :cond_13

    .line 503
    .line 504
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 505
    .line 506
    .line 507
    :cond_13
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 508
    .line 509
    .line 510
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    if-eqz v8, :cond_14

    .line 515
    .line 516
    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 517
    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 521
    .line 522
    .line 523
    :goto_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 524
    .line 525
    .line 526
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v7, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 559
    .line 560
    .line 561
    invoke-static {v14}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-interface {v0, v1, v14, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    const v0, 0x7ab4aae9

    .line 577
    .line 578
    .line 579
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 580
    .line 581
    .line 582
    const v0, 0x7c532c0d

    .line 583
    .line 584
    .line 585
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 586
    .line 587
    .line 588
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 589
    .line 590
    .line 591
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 592
    .line 593
    .line 594
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 595
    .line 596
    .line 597
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 598
    .line 599
    .line 600
    move-object/from16 v2, v16

    .line 601
    .line 602
    move-object/from16 v3, v17

    .line 603
    .line 604
    :goto_d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    if-nez v7, :cond_15

    .line 609
    .line 610
    goto :goto_e

    .line 611
    :cond_15
    new-instance v8, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;

    .line 612
    .line 613
    move-object v0, v8

    .line 614
    move-object/from16 v1, p0

    .line 615
    .line 616
    move-object/from16 v4, p3

    .line 617
    .line 618
    move/from16 v5, p5

    .line 619
    .line 620
    move/from16 v6, p6

    .line 621
    .line 622
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;II)V

    .line 623
    .line 624
    .line 625
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 626
    .line 627
    .line 628
    :goto_e
    return-void
.end method

.method private static final Popup$lambda-1(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final Popup-K5zGePQ(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/window/PopupProperties;
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
            "(",
            "Landroidx/compose/ui/Alignment;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
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
    move-object/from16 v7, p5

    .line 2
    .line 3
    move/from16 v8, p7

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x119a1011

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p6

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    and-int/lit8 v0, p8, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v1, v8, 0x6

    .line 24
    .line 25
    move v2, v1

    .line 26
    move-object/from16 v1, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v1, v8, 0xe

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v8

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v1, p0

    .line 47
    .line 48
    move v2, v8

    .line 49
    :goto_1
    and-int/lit8 v3, p8, 0x2

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    or-int/lit8 v2, v2, 0x30

    .line 54
    .line 55
    :cond_3
    move-wide/from16 v4, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v4, v8, 0x70

    .line 59
    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    move-wide/from16 v4, p1

    .line 63
    .line 64
    invoke-interface {v9, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    const/16 v6, 0x20

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v6, 0x10

    .line 74
    .line 75
    :goto_2
    or-int/2addr v2, v6

    .line 76
    :goto_3
    and-int/lit8 v6, p8, 0x4

    .line 77
    .line 78
    if-eqz v6, :cond_7

    .line 79
    .line 80
    or-int/lit16 v2, v2, 0x180

    .line 81
    .line 82
    :cond_6
    move-object/from16 v10, p3

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_7
    and-int/lit16 v10, v8, 0x380

    .line 86
    .line 87
    if-nez v10, :cond_6

    .line 88
    .line 89
    move-object/from16 v10, p3

    .line 90
    .line 91
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_8

    .line 96
    .line 97
    const/16 v11, 0x100

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    const/16 v11, 0x80

    .line 101
    .line 102
    :goto_4
    or-int/2addr v2, v11

    .line 103
    :goto_5
    and-int/lit16 v11, v8, 0x1c00

    .line 104
    .line 105
    if-nez v11, :cond_b

    .line 106
    .line 107
    and-int/lit8 v11, p8, 0x8

    .line 108
    .line 109
    if-nez v11, :cond_9

    .line 110
    .line 111
    move-object/from16 v11, p4

    .line 112
    .line 113
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_a

    .line 118
    .line 119
    const/16 v12, 0x800

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_9
    move-object/from16 v11, p4

    .line 123
    .line 124
    :cond_a
    const/16 v12, 0x400

    .line 125
    .line 126
    :goto_6
    or-int/2addr v2, v12

    .line 127
    goto :goto_7

    .line 128
    :cond_b
    move-object/from16 v11, p4

    .line 129
    .line 130
    :goto_7
    and-int/lit8 v12, p8, 0x10

    .line 131
    .line 132
    if-eqz v12, :cond_c

    .line 133
    .line 134
    or-int/lit16 v2, v2, 0x6000

    .line 135
    .line 136
    goto :goto_9

    .line 137
    :cond_c
    const v12, 0xe000

    .line 138
    .line 139
    .line 140
    and-int/2addr v12, v8

    .line 141
    if-nez v12, :cond_e

    .line 142
    .line 143
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-eqz v12, :cond_d

    .line 148
    .line 149
    const/16 v12, 0x4000

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_d
    const/16 v12, 0x2000

    .line 153
    .line 154
    :goto_8
    or-int/2addr v2, v12

    .line 155
    :cond_e
    :goto_9
    const v12, 0xb6db

    .line 156
    .line 157
    .line 158
    and-int/2addr v12, v2

    .line 159
    const/16 v13, 0x2492

    .line 160
    .line 161
    if-ne v12, v13, :cond_10

    .line 162
    .line 163
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-nez v12, :cond_f

    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 171
    .line 172
    .line 173
    move-wide v2, v4

    .line 174
    move-object v4, v10

    .line 175
    move-object v5, v11

    .line 176
    goto/16 :goto_f

    .line 177
    .line 178
    :cond_10
    :goto_a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 179
    .line 180
    .line 181
    and-int/lit8 v12, v8, 0x1

    .line 182
    .line 183
    const/4 v13, 0x0

    .line 184
    if-eqz v12, :cond_13

    .line 185
    .line 186
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    if-eqz v12, :cond_11

    .line 191
    .line 192
    goto :goto_b

    .line 193
    :cond_11
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 194
    .line 195
    .line 196
    and-int/lit8 v0, p8, 0x8

    .line 197
    .line 198
    if-eqz v0, :cond_12

    .line 199
    .line 200
    and-int/lit16 v2, v2, -0x1c01

    .line 201
    .line 202
    :cond_12
    move-object v14, v10

    .line 203
    move-object v15, v11

    .line 204
    move-object v10, v1

    .line 205
    move-wide v11, v4

    .line 206
    goto :goto_e

    .line 207
    :cond_13
    :goto_b
    if-eqz v0, :cond_14

    .line 208
    .line 209
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    goto :goto_c

    .line 216
    :cond_14
    move-object v0, v1

    .line 217
    :goto_c
    if-eqz v3, :cond_15

    .line 218
    .line 219
    const/4 v1, 0x0

    .line 220
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    goto :goto_d

    .line 225
    :cond_15
    move-wide v3, v4

    .line 226
    :goto_d
    if-eqz v6, :cond_16

    .line 227
    .line 228
    move-object v10, v13

    .line 229
    :cond_16
    and-int/lit8 v1, p8, 0x8

    .line 230
    .line 231
    if-eqz v1, :cond_17

    .line 232
    .line 233
    new-instance v1, Landroidx/compose/ui/window/PopupProperties;

    .line 234
    .line 235
    const/16 v21, 0x3f

    .line 236
    .line 237
    const/16 v22, 0x0

    .line 238
    .line 239
    const/4 v15, 0x0

    .line 240
    const/16 v16, 0x0

    .line 241
    .line 242
    const/16 v17, 0x0

    .line 243
    .line 244
    const/16 v18, 0x0

    .line 245
    .line 246
    const/16 v19, 0x0

    .line 247
    .line 248
    const/16 v20, 0x0

    .line 249
    .line 250
    move-object v14, v1

    .line 251
    invoke-direct/range {v14 .. v22}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    .line 253
    .line 254
    and-int/lit16 v2, v2, -0x1c01

    .line 255
    .line 256
    move-object v15, v1

    .line 257
    move-wide v11, v3

    .line 258
    move-object v14, v10

    .line 259
    move-object v10, v0

    .line 260
    goto :goto_e

    .line 261
    :cond_17
    move-object v14, v10

    .line 262
    move-object v15, v11

    .line 263
    move-object v10, v0

    .line 264
    move-wide v11, v3

    .line 265
    :goto_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 266
    .line 267
    .line 268
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const v1, 0x1e7b2b64

    .line 273
    .line 274
    .line 275
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    or-int/2addr v0, v1

    .line 287
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-nez v0, :cond_18

    .line 292
    .line 293
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 294
    .line 295
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-ne v1, v0, :cond_19

    .line 300
    .line 301
    :cond_18
    new-instance v1, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;

    .line 302
    .line 303
    invoke-direct {v1, v10, v11, v12, v13}, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;-><init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_19
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 310
    .line 311
    .line 312
    move-object v0, v1

    .line 313
    check-cast v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;

    .line 314
    .line 315
    shr-int/lit8 v1, v2, 0x3

    .line 316
    .line 317
    and-int/lit16 v5, v1, 0x1ff0

    .line 318
    .line 319
    const/4 v6, 0x0

    .line 320
    move-object v1, v14

    .line 321
    move-object v2, v15

    .line 322
    move-object/from16 v3, p5

    .line 323
    .line 324
    move-object v4, v9

    .line 325
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 326
    .line 327
    .line 328
    move-object v1, v10

    .line 329
    move-wide v2, v11

    .line 330
    move-object v4, v14

    .line 331
    move-object v5, v15

    .line 332
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    if-nez v9, :cond_1a

    .line 337
    .line 338
    goto :goto_10

    .line 339
    :cond_1a
    new-instance v10, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$1;

    .line 340
    .line 341
    move-object v0, v10

    .line 342
    move-object/from16 v6, p5

    .line 343
    .line 344
    move/from16 v7, p7

    .line 345
    .line 346
    move/from16 v8, p8

    .line 347
    .line 348
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$1;-><init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;II)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    :goto_10
    return-void
.end method

.method public static final PopupTestTag(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0x1dbc4c70

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    and-int/lit8 v0, p3, 0xe

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, p3

    .line 34
    :goto_1
    and-int/lit8 v1, p3, 0x70

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v1, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v0, v1

    .line 50
    :cond_3
    and-int/lit8 v1, v0, 0x5b

    .line 51
    .line 52
    const/16 v2, 0x12

    .line 53
    .line 54
    if-ne v1, v2, :cond_5

    .line 55
    .line 56
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    filled-new-array {v1}, [Landroidx/compose/runtime/ProvidedValue;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    and-int/lit8 v0, v0, 0x70

    .line 78
    .line 79
    or-int/lit8 v0, v0, 0x8

    .line 80
    .line 81
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 82
    .line 83
    .line 84
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-nez p2, :cond_6

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$PopupTestTag$1;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/ui/window/AndroidPopup_androidKt$PopupTestTag$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    :goto_5
    return-void
.end method

.method private static final SimpleStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, 0x53d02508

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;

    .line 8
    .line 9
    shr-int/lit8 v1, p3, 0x3

    .line 10
    .line 11
    and-int/lit8 v1, v1, 0xe

    .line 12
    .line 13
    shl-int/lit8 p3, p3, 0x3

    .line 14
    .line 15
    and-int/lit8 p3, p3, 0x70

    .line 16
    .line 17
    or-int/2addr p3, v1

    .line 18
    const v1, -0x4ee9b9da

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 53
    .line 54
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    shl-int/lit8 p3, p3, 0x9

    .line 65
    .line 66
    and-int/lit16 p3, p3, 0x1c00

    .line 67
    .line 68
    or-int/lit8 p3, p3, 0x6

    .line 69
    .line 70
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v6, :cond_0

    .line 75
    .line 76
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v5, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v5, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {p0, v0, p2, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const p0, 0x7ab4aae9

    .line 150
    .line 151
    .line 152
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 153
    .line 154
    .line 155
    shr-int/lit8 p0, p3, 0x9

    .line 156
    .line 157
    and-int/lit8 p0, p0, 0xe

    .line 158
    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-interface {p1, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 167
    .line 168
    .line 169
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 170
    .line 171
    .line 172
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 173
    .line 174
    .line 175
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public static final synthetic access$Popup$lambda-1(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup$lambda-1(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final getLocalPopupTestTag()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0x2000

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_1
    return v0
.end method

.method public static final isPopupLayout(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Landroidx/compose/ui/window/PopupLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/ui/window/PopupLayout;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getTestTag()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public static synthetic isPopupLayout$default(Landroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isPopupLayout(Landroid/view/View;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static final toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
