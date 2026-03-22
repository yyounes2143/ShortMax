.class public final Landroidx/compose/material/MaterialThemeKt;
.super Ljava/lang/Object;
.source "MaterialTheme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 44
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/Typography;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/Shapes;
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
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/Colors;",
            "Landroidx/compose/material/Typography;",
            "Landroidx/compose/material/Shapes;",
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
    move-object/from16 v4, p3

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x3521f1f7    # -7276292.5f

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p4

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    and-int/lit8 v1, v5, 0xe

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    and-int/lit8 v1, p6, 0x1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object/from16 v1, p0

    .line 38
    .line 39
    :cond_1
    const/4 v2, 0x2

    .line 40
    :goto_0
    or-int/2addr v2, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object/from16 v1, p0

    .line 43
    .line 44
    move v2, v5

    .line 45
    :goto_1
    and-int/lit8 v3, v5, 0x70

    .line 46
    .line 47
    if-nez v3, :cond_5

    .line 48
    .line 49
    and-int/lit8 v3, p6, 0x2

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    move-object/from16 v3, p1

    .line 54
    .line 55
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    const/16 v6, 0x20

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object/from16 v3, p1

    .line 65
    .line 66
    :cond_4
    const/16 v6, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v2, v6

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move-object/from16 v3, p1

    .line 71
    .line 72
    :goto_3
    and-int/lit16 v6, v5, 0x380

    .line 73
    .line 74
    if-nez v6, :cond_8

    .line 75
    .line 76
    and-int/lit8 v6, p6, 0x4

    .line 77
    .line 78
    if-nez v6, :cond_6

    .line 79
    .line 80
    move-object/from16 v6, p2

    .line 81
    .line 82
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_7

    .line 87
    .line 88
    const/16 v7, 0x100

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    move-object/from16 v6, p2

    .line 92
    .line 93
    :cond_7
    const/16 v7, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v2, v7

    .line 96
    goto :goto_5

    .line 97
    :cond_8
    move-object/from16 v6, p2

    .line 98
    .line 99
    :goto_5
    and-int/lit8 v7, p6, 0x8

    .line 100
    .line 101
    if-eqz v7, :cond_9

    .line 102
    .line 103
    or-int/lit16 v2, v2, 0xc00

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_9
    and-int/lit16 v7, v5, 0x1c00

    .line 107
    .line 108
    if-nez v7, :cond_b

    .line 109
    .line 110
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_a

    .line 115
    .line 116
    const/16 v7, 0x800

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_a
    const/16 v7, 0x400

    .line 120
    .line 121
    :goto_6
    or-int/2addr v2, v7

    .line 122
    :cond_b
    :goto_7
    and-int/lit16 v7, v2, 0x16db

    .line 123
    .line 124
    const/16 v8, 0x492

    .line 125
    .line 126
    if-ne v7, v8, :cond_d

    .line 127
    .line 128
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_c

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    move-object v2, v3

    .line 139
    move-object v3, v6

    .line 140
    goto/16 :goto_c

    .line 141
    .line 142
    :cond_d
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 143
    .line 144
    .line 145
    and-int/lit8 v7, v5, 0x1

    .line 146
    .line 147
    const/4 v13, 0x6

    .line 148
    if-eqz v7, :cond_12

    .line 149
    .line 150
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_e

    .line 155
    .line 156
    goto :goto_a

    .line 157
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 158
    .line 159
    .line 160
    and-int/lit8 v7, p6, 0x1

    .line 161
    .line 162
    if-eqz v7, :cond_f

    .line 163
    .line 164
    and-int/lit8 v2, v2, -0xf

    .line 165
    .line 166
    :cond_f
    and-int/lit8 v7, p6, 0x2

    .line 167
    .line 168
    if-eqz v7, :cond_10

    .line 169
    .line 170
    and-int/lit8 v2, v2, -0x71

    .line 171
    .line 172
    :cond_10
    and-int/lit8 v7, p6, 0x4

    .line 173
    .line 174
    if-eqz v7, :cond_11

    .line 175
    .line 176
    :goto_9
    and-int/lit16 v2, v2, -0x381

    .line 177
    .line 178
    :cond_11
    move v12, v2

    .line 179
    move-object v2, v6

    .line 180
    goto :goto_b

    .line 181
    :cond_12
    :goto_a
    and-int/lit8 v7, p6, 0x1

    .line 182
    .line 183
    if-eqz v7, :cond_13

    .line 184
    .line 185
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 186
    .line 187
    invoke-virtual {v1, v0, v13}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    and-int/lit8 v2, v2, -0xf

    .line 192
    .line 193
    :cond_13
    and-int/lit8 v7, p6, 0x2

    .line 194
    .line 195
    if-eqz v7, :cond_14

    .line 196
    .line 197
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 198
    .line 199
    invoke-virtual {v3, v0, v13}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    and-int/lit8 v2, v2, -0x71

    .line 204
    .line 205
    :cond_14
    and-int/lit8 v7, p6, 0x4

    .line 206
    .line 207
    if-eqz v7, :cond_11

    .line 208
    .line 209
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 210
    .line 211
    invoke-virtual {v6, v0, v13}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    goto :goto_9

    .line 216
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 217
    .line 218
    .line 219
    const v6, -0x1d58f75c

    .line 220
    .line 221
    .line 222
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 230
    .line 231
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    if-ne v6, v7, :cond_15

    .line 236
    .line 237
    const/16 v40, 0x1fff

    .line 238
    .line 239
    const/16 v41, 0x0

    .line 240
    .line 241
    const-wide/16 v15, 0x0

    .line 242
    .line 243
    const-wide/16 v17, 0x0

    .line 244
    .line 245
    const-wide/16 v19, 0x0

    .line 246
    .line 247
    const-wide/16 v21, 0x0

    .line 248
    .line 249
    const-wide/16 v23, 0x0

    .line 250
    .line 251
    const-wide/16 v25, 0x0

    .line 252
    .line 253
    const-wide/16 v27, 0x0

    .line 254
    .line 255
    const-wide/16 v29, 0x0

    .line 256
    .line 257
    const-wide/16 v31, 0x0

    .line 258
    .line 259
    const-wide/16 v33, 0x0

    .line 260
    .line 261
    const-wide/16 v35, 0x0

    .line 262
    .line 263
    const-wide/16 v37, 0x0

    .line 264
    .line 265
    const/16 v39, 0x0

    .line 266
    .line 267
    move-object v14, v1

    .line 268
    invoke-static/range {v14 .. v41}, Landroidx/compose/material/Colors;->copy-pvPzIIM$default(Landroidx/compose/material/Colors;JJJJJJJJJJJJZILjava/lang/Object;)Landroidx/compose/material/Colors;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 276
    .line 277
    .line 278
    move-object v14, v6

    .line 279
    check-cast v14, Landroidx/compose/material/Colors;

    .line 280
    .line 281
    invoke-static {v14, v1}, Landroidx/compose/material/ColorsKt;->updateColorsFrom(Landroidx/compose/material/Colors;Landroidx/compose/material/Colors;)V

    .line 282
    .line 283
    .line 284
    const/4 v11, 0x0

    .line 285
    const/4 v15, 0x7

    .line 286
    const/4 v6, 0x0

    .line 287
    const/4 v7, 0x0

    .line 288
    const-wide/16 v8, 0x0

    .line 289
    .line 290
    move-object v10, v0

    .line 291
    move/from16 v42, v12

    .line 292
    .line 293
    move v12, v15

    .line 294
    invoke-static/range {v6 .. v12}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    const/4 v7, 0x0

    .line 299
    invoke-static {v14, v0, v7}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->rememberTextSelectionColors(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-static {}, Landroidx/compose/material/ColorsKt;->getLocalColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 308
    .line 309
    .line 310
    move-result-object v15

    .line 311
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    sget-object v9, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 316
    .line 317
    invoke-virtual {v9, v0, v13}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 334
    .line 335
    .line 336
    move-result-object v17

    .line 337
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->getLocalRippleTheme()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    sget-object v8, Landroidx/compose/material/MaterialRippleTheme;->INSTANCE:Landroidx/compose/material/MaterialRippleTheme;

    .line 342
    .line 343
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 344
    .line 345
    .line 346
    move-result-object v18

    .line 347
    invoke-static {}, Landroidx/compose/material/ShapesKt;->getLocalShapes()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 352
    .line 353
    .line 354
    move-result-object v19

    .line 355
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 360
    .line 361
    .line 362
    move-result-object v20

    .line 363
    invoke-static {}, Landroidx/compose/material/TypographyKt;->getLocalTypography()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 368
    .line 369
    .line 370
    move-result-object v21

    .line 371
    filled-new-array/range {v15 .. v21}, [Landroidx/compose/runtime/ProvidedValue;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    new-instance v7, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;

    .line 376
    .line 377
    move/from16 v8, v42

    .line 378
    .line 379
    invoke-direct {v7, v3, v4, v8}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;-><init>(Landroidx/compose/material/Typography;Lkotlin/jvm/functions/Function2;I)V

    .line 380
    .line 381
    .line 382
    const v8, -0x67b7dd37

    .line 383
    .line 384
    .line 385
    const/4 v9, 0x1

    .line 386
    invoke-static {v0, v8, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    const/16 v8, 0x38

    .line 391
    .line 392
    invoke-static {v6, v7, v0, v8}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 393
    .line 394
    .line 395
    move-object/from16 v43, v3

    .line 396
    .line 397
    move-object v3, v2

    .line 398
    move-object/from16 v2, v43

    .line 399
    .line 400
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    if-nez v7, :cond_16

    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_16
    new-instance v8, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;

    .line 408
    .line 409
    move-object v0, v8

    .line 410
    move-object/from16 v4, p3

    .line 411
    .line 412
    move/from16 v5, p5

    .line 413
    .line 414
    move/from16 v6, p6

    .line 415
    .line 416
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;II)V

    .line 417
    .line 418
    .line 419
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 420
    .line 421
    .line 422
    :goto_d
    return-void
.end method
