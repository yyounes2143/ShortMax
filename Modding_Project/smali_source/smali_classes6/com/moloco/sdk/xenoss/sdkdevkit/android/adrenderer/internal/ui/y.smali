.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCountdownButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/CountdownButtonKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,111:1\n68#2,5:112\n73#2:143\n77#2:148\n75#3:117\n76#3,11:119\n89#3:147\n76#4:118\n460#5,13:130\n473#5,3:144\n*S KotlinDebug\n*F\n+ 1 CountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/CountdownButtonKt\n*L\n38#1:112,5\n38#1:143\n38#1:148\n38#1:117\n38#1:119,11\n38#1:147\n38#1:118\n38#1:130,13\n38#1:144,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 14

    .line 1
    or-int/lit8 v12, p11, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-wide/from16 v4, p4

    .line 10
    .line 11
    move-wide/from16 v6, p6

    .line 12
    .line 13
    move-wide/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v10, p10

    .line 16
    .line 17
    move-object/from16 v11, p13

    .line 18
    .line 19
    move/from16 v13, p12

    .line 20
    .line 21
    invoke-static/range {v0 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object v0
.end method

.method public static final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/internal/ortb/model/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;ZJJJ",
            "Lcom/moloco/sdk/internal/ortb/model/i;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v5, p10

    .line 6
    .line 7
    move/from16 v4, p12

    .line 8
    .line 9
    move/from16 v3, p13

    .line 10
    .line 11
    const/16 v0, 0x80

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v8, 0x4

    .line 17
    const/4 v9, 0x6

    .line 18
    const/16 v10, 0x10

    .line 19
    .line 20
    const-string v11, "countdownButtonPart"

    .line 21
    .line 22
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v11, "onClick"

    .line 26
    .line 27
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const v11, -0x367a495f

    .line 31
    .line 32
    .line 33
    move-object/from16 v12, p11

    .line 34
    .line 35
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 36
    .line 37
    .line 38
    move-result-object v15

    .line 39
    const/4 v13, 0x1

    .line 40
    and-int/lit8 v12, v3, 0x1

    .line 41
    .line 42
    if-eqz v12, :cond_0

    .line 43
    .line 44
    or-int/lit8 v12, v4, 0x6

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    and-int/lit8 v12, v4, 0x6

    .line 48
    .line 49
    if-nez v12, :cond_2

    .line 50
    .line 51
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    if-eqz v12, :cond_1

    .line 56
    .line 57
    move v12, v8

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v12, v2

    .line 60
    :goto_0
    or-int/2addr v12, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v12, v4

    .line 63
    :goto_1
    and-int/2addr v2, v3

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    or-int/lit8 v12, v12, 0x30

    .line 67
    .line 68
    :cond_3
    move-object/from16 v14, p1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    and-int/lit8 v14, v4, 0x30

    .line 72
    .line 73
    if-nez v14, :cond_3

    .line 74
    .line 75
    move-object/from16 v14, p1

    .line 76
    .line 77
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-eqz v16, :cond_5

    .line 82
    .line 83
    move/from16 v16, v1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move/from16 v16, v10

    .line 87
    .line 88
    :goto_2
    or-int v12, v12, v16

    .line 89
    .line 90
    :goto_3
    and-int/2addr v8, v3

    .line 91
    if-eqz v8, :cond_6

    .line 92
    .line 93
    or-int/lit16 v12, v12, 0x180

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_6
    and-int/lit16 v8, v4, 0x180

    .line 97
    .line 98
    if-nez v8, :cond_8

    .line 99
    .line 100
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_7

    .line 105
    .line 106
    const/16 v8, 0x100

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    move v8, v0

    .line 110
    :goto_4
    or-int/2addr v12, v8

    .line 111
    :cond_8
    :goto_5
    and-int/lit8 v8, v3, 0x8

    .line 112
    .line 113
    if-eqz v8, :cond_a

    .line 114
    .line 115
    or-int/lit16 v12, v12, 0xc00

    .line 116
    .line 117
    :cond_9
    move/from16 v8, p3

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_a
    and-int/lit16 v8, v4, 0xc00

    .line 121
    .line 122
    if-nez v8, :cond_9

    .line 123
    .line 124
    move/from16 v8, p3

    .line 125
    .line 126
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-eqz v16, :cond_b

    .line 131
    .line 132
    const/16 v16, 0x800

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_b
    const/16 v16, 0x400

    .line 136
    .line 137
    :goto_6
    or-int v12, v12, v16

    .line 138
    .line 139
    :goto_7
    and-int/lit16 v9, v4, 0x6000

    .line 140
    .line 141
    if-nez v9, :cond_d

    .line 142
    .line 143
    and-int/lit8 v9, v3, 0x10

    .line 144
    .line 145
    move-wide/from16 v10, p4

    .line 146
    .line 147
    if-nez v9, :cond_c

    .line 148
    .line 149
    invoke-interface {v15, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 150
    .line 151
    .line 152
    move-result v18

    .line 153
    if-eqz v18, :cond_c

    .line 154
    .line 155
    const/16 v18, 0x4000

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_c
    const/16 v18, 0x2000

    .line 159
    .line 160
    :goto_8
    or-int v12, v12, v18

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_d
    move-wide/from16 v10, p4

    .line 164
    .line 165
    :goto_9
    and-int/2addr v1, v3

    .line 166
    const/high16 v18, 0x30000

    .line 167
    .line 168
    if-eqz v1, :cond_e

    .line 169
    .line 170
    or-int v12, v12, v18

    .line 171
    .line 172
    move-wide/from16 v9, p6

    .line 173
    .line 174
    goto :goto_b

    .line 175
    :cond_e
    and-int v18, v4, v18

    .line 176
    .line 177
    move-wide/from16 v9, p6

    .line 178
    .line 179
    if-nez v18, :cond_10

    .line 180
    .line 181
    invoke-interface {v15, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_f

    .line 186
    .line 187
    const/high16 v11, 0x20000

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_f
    const/high16 v11, 0x10000

    .line 191
    .line 192
    :goto_a
    or-int/2addr v12, v11

    .line 193
    :cond_10
    :goto_b
    and-int/lit8 v11, v3, 0x40

    .line 194
    .line 195
    const/high16 v18, 0x180000

    .line 196
    .line 197
    if-eqz v11, :cond_11

    .line 198
    .line 199
    or-int v12, v12, v18

    .line 200
    .line 201
    move-wide/from16 v13, p8

    .line 202
    .line 203
    goto :goto_d

    .line 204
    :cond_11
    and-int v18, v4, v18

    .line 205
    .line 206
    move-wide/from16 v13, p8

    .line 207
    .line 208
    if-nez v18, :cond_13

    .line 209
    .line 210
    invoke-interface {v15, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 211
    .line 212
    .line 213
    move-result v19

    .line 214
    if-eqz v19, :cond_12

    .line 215
    .line 216
    const/high16 v19, 0x100000

    .line 217
    .line 218
    goto :goto_c

    .line 219
    :cond_12
    const/high16 v19, 0x80000

    .line 220
    .line 221
    :goto_c
    or-int v12, v12, v19

    .line 222
    .line 223
    :cond_13
    :goto_d
    and-int/2addr v0, v3

    .line 224
    const/high16 v19, 0xc00000

    .line 225
    .line 226
    if-eqz v0, :cond_14

    .line 227
    .line 228
    or-int v12, v12, v19

    .line 229
    .line 230
    goto :goto_f

    .line 231
    :cond_14
    and-int v0, v4, v19

    .line 232
    .line 233
    if-nez v0, :cond_16

    .line 234
    .line 235
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_15

    .line 240
    .line 241
    const/high16 v0, 0x800000

    .line 242
    .line 243
    goto :goto_e

    .line 244
    :cond_15
    const/high16 v0, 0x400000

    .line 245
    .line 246
    :goto_e
    or-int/2addr v12, v0

    .line 247
    :cond_16
    :goto_f
    const v0, 0x492493

    .line 248
    .line 249
    .line 250
    and-int/2addr v0, v12

    .line 251
    const v6, 0x492492

    .line 252
    .line 253
    .line 254
    if-ne v0, v6, :cond_18

    .line 255
    .line 256
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-nez v0, :cond_17

    .line 261
    .line 262
    goto :goto_10

    .line 263
    :cond_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 264
    .line 265
    .line 266
    move-object/from16 v2, p1

    .line 267
    .line 268
    move-wide/from16 v5, p4

    .line 269
    .line 270
    move-wide/from16 v22, v13

    .line 271
    .line 272
    move-object v12, v15

    .line 273
    goto/16 :goto_17

    .line 274
    .line 275
    :cond_18
    :goto_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 276
    .line 277
    .line 278
    const/4 v0, 0x1

    .line 279
    and-int/lit8 v6, v4, 0x1

    .line 280
    .line 281
    const v0, -0xe001

    .line 282
    .line 283
    .line 284
    if-eqz v6, :cond_19

    .line 285
    .line 286
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_1a

    .line 291
    .line 292
    :cond_19
    const/16 v6, 0x10

    .line 293
    .line 294
    goto :goto_11

    .line 295
    :cond_1a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 296
    .line 297
    .line 298
    const/16 v6, 0x10

    .line 299
    .line 300
    and-int/lit8 v1, v3, 0x10

    .line 301
    .line 302
    if-eqz v1, :cond_1b

    .line 303
    .line 304
    and-int/2addr v12, v0

    .line 305
    :cond_1b
    move-object/from16 v19, p1

    .line 306
    .line 307
    move-wide/from16 v20, p4

    .line 308
    .line 309
    move-wide v1, v9

    .line 310
    move v0, v12

    .line 311
    move-wide/from16 v22, v13

    .line 312
    .line 313
    goto :goto_15

    .line 314
    :goto_11
    if-eqz v2, :cond_1c

    .line 315
    .line 316
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 317
    .line 318
    goto :goto_12

    .line 319
    :cond_1c
    move-object/from16 v2, p1

    .line 320
    .line 321
    :goto_12
    and-int/2addr v6, v3

    .line 322
    if-eqz v6, :cond_1d

    .line 323
    .line 324
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 325
    .line 326
    sget v0, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 327
    .line 328
    invoke-virtual {v6, v15, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 333
    .line 334
    .line 335
    move-result-wide v19

    .line 336
    const v0, -0xe001

    .line 337
    .line 338
    .line 339
    and-int/2addr v12, v0

    .line 340
    goto :goto_13

    .line 341
    :cond_1d
    move-wide/from16 v19, p4

    .line 342
    .line 343
    :goto_13
    if-eqz v1, :cond_1e

    .line 344
    .line 345
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b()J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    move-wide v9, v0

    .line 350
    :cond_1e
    if-eqz v11, :cond_1f

    .line 351
    .line 352
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->c()J

    .line 353
    .line 354
    .line 355
    move-result-wide v0

    .line 356
    move-wide/from16 v22, v0

    .line 357
    .line 358
    move v0, v12

    .line 359
    :goto_14
    move-wide/from16 v20, v19

    .line 360
    .line 361
    move-object/from16 v19, v2

    .line 362
    .line 363
    move-wide v1, v9

    .line 364
    goto :goto_15

    .line 365
    :cond_1f
    move v0, v12

    .line 366
    move-wide/from16 v22, v13

    .line 367
    .line 368
    goto :goto_14

    .line 369
    :goto_15
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 370
    .line 371
    .line 372
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-eqz v6, :cond_20

    .line 377
    .line 378
    const/4 v6, -0x1

    .line 379
    const-string v9, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.CountdownButton (CountdownButton.kt:36)"

    .line 380
    .line 381
    const v10, -0x367a495f

    .line 382
    .line 383
    .line 384
    invoke-static {v10, v0, v6, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_20
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 388
    .line 389
    const/4 v9, 0x0

    .line 390
    const/4 v10, 0x0

    .line 391
    const/4 v13, 0x1

    .line 392
    invoke-static {v6, v9, v13, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-static {v6, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 401
    .line 402
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTopEnd()Landroidx/compose/ui/Alignment;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    const v10, 0x2bb5b5d7

    .line 407
    .line 408
    .line 409
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 410
    .line 411
    .line 412
    const/4 v10, 0x0

    .line 413
    const/4 v11, 0x6

    .line 414
    invoke-static {v9, v10, v15, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    const v11, -0x4ee9b9da

    .line 419
    .line 420
    .line 421
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 422
    .line 423
    .line 424
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 433
    .line 434
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v12

    .line 442
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 443
    .line 444
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 445
    .line 446
    .line 447
    move-result-object v14

    .line 448
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v14

    .line 452
    check-cast v14, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 453
    .line 454
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 455
    .line 456
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 457
    .line 458
    .line 459
    move-result-object v13

    .line 460
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 465
    .line 466
    .line 467
    move-result-object v17

    .line 468
    if-nez v17, :cond_21

    .line 469
    .line 470
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 471
    .line 472
    .line 473
    :cond_21
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 474
    .line 475
    .line 476
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 477
    .line 478
    .line 479
    move-result v17

    .line 480
    if-eqz v17, :cond_22

    .line 481
    .line 482
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 483
    .line 484
    .line 485
    goto :goto_16

    .line 486
    :cond_22
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 487
    .line 488
    .line 489
    :goto_16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 490
    .line 491
    .line 492
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 493
    .line 494
    .line 495
    move-result-object v13

    .line 496
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    invoke-static {v13, v11, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-static {v13, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    invoke-static {v13, v14, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 525
    .line 526
    .line 527
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    const/4 v10, 0x0

    .line 536
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    invoke-interface {v6, v9, v15, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    const v6, 0x7ab4aae9

    .line 544
    .line 545
    .line 546
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 547
    .line 548
    .line 549
    const v6, -0x7f65a980

    .line 550
    .line 551
    .line 552
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 553
    .line 554
    .line 555
    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 556
    .line 557
    const v6, 0x1f3a6a54

    .line 558
    .line 559
    .line 560
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 561
    .line 562
    .line 563
    instance-of v6, v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$a;

    .line 564
    .line 565
    if-eqz v6, :cond_23

    .line 566
    .line 567
    if-eqz v5, :cond_23

    .line 568
    .line 569
    move-object v6, v7

    .line 570
    check-cast v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$a;

    .line 571
    .line 572
    invoke-virtual {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$a;->b()Z

    .line 573
    .line 574
    .line 575
    move-result v9

    .line 576
    if-eqz v9, :cond_23

    .line 577
    .line 578
    invoke-virtual {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$a;->c()I

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    invoke-virtual {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$a;->a()I

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    shr-int/lit8 v10, v0, 0x15

    .line 587
    .line 588
    and-int/lit8 v10, v10, 0xe

    .line 589
    .line 590
    invoke-static {v5, v9, v6, v15, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/h;->e(Lcom/moloco/sdk/internal/ortb/model/i;IILandroidx/compose/runtime/Composer;I)V

    .line 591
    .line 592
    .line 593
    :cond_23
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 594
    .line 595
    .line 596
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;

    .line 597
    .line 598
    move-object v8, v6

    .line 599
    move-object/from16 v9, p2

    .line 600
    .line 601
    move/from16 v10, p3

    .line 602
    .line 603
    move-wide/from16 v11, v20

    .line 604
    .line 605
    const/4 v3, 0x1

    .line 606
    move-wide v13, v1

    .line 607
    move-wide/from16 v17, v1

    .line 608
    .line 609
    move-object v2, v15

    .line 610
    move-wide/from16 v15, v22

    .line 611
    .line 612
    invoke-direct/range {v8 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;-><init>(Lkotlin/jvm/functions/Function0;ZJJJ)V

    .line 613
    .line 614
    .line 615
    const v1, -0x4b57870b

    .line 616
    .line 617
    .line 618
    invoke-static {v2, v1, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    and-int/lit8 v1, v0, 0xe

    .line 623
    .line 624
    or-int/lit16 v1, v1, 0xc00

    .line 625
    .line 626
    and-int/lit8 v0, v0, 0x70

    .line 627
    .line 628
    or-int v6, v1, v0

    .line 629
    .line 630
    const/4 v8, 0x0

    .line 631
    const/4 v9, 0x4

    .line 632
    move-object/from16 v0, p0

    .line 633
    .line 634
    move-wide/from16 v10, v17

    .line 635
    .line 636
    move-object/from16 v1, v19

    .line 637
    .line 638
    move-object v12, v2

    .line 639
    move-object v2, v8

    .line 640
    move-object v4, v12

    .line 641
    move v5, v6

    .line 642
    move v6, v9

    .line 643
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 644
    .line 645
    .line 646
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 647
    .line 648
    .line 649
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 650
    .line 651
    .line 652
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 653
    .line 654
    .line 655
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 656
    .line 657
    .line 658
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 659
    .line 660
    .line 661
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_24

    .line 666
    .line 667
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 668
    .line 669
    .line 670
    :cond_24
    move-wide v9, v10

    .line 671
    move-object/from16 v2, v19

    .line 672
    .line 673
    move-wide/from16 v5, v20

    .line 674
    .line 675
    :goto_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 676
    .line 677
    .line 678
    move-result-object v14

    .line 679
    if-eqz v14, :cond_25

    .line 680
    .line 681
    new-instance v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;

    .line 682
    .line 683
    move-object v0, v15

    .line 684
    move-object/from16 v1, p0

    .line 685
    .line 686
    move-object/from16 v3, p2

    .line 687
    .line 688
    move/from16 v4, p3

    .line 689
    .line 690
    move-wide v7, v9

    .line 691
    move-wide/from16 v9, v22

    .line 692
    .line 693
    move-object/from16 v11, p10

    .line 694
    .line 695
    move/from16 v12, p12

    .line 696
    .line 697
    move/from16 v13, p13

    .line 698
    .line 699
    invoke-direct/range {v0 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/x;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;II)V

    .line 700
    .line 701
    .line 702
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 703
    .line 704
    .line 705
    :cond_25
    return-void
.end method
