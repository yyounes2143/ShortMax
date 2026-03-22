.class public final Landroidx/compose/material/RadioButtonKt;
.super Ljava/lang/Object;
.source "RadioButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final RadioAnimationDuration:I = 0x64

.field private static final RadioButtonDotSize:F

.field private static final RadioButtonPadding:F

.field private static final RadioButtonRippleRadius:F

.field private static final RadioButtonSize:F

.field private static final RadioRadius:F

.field private static final RadioStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput v0, Landroidx/compose/material/RadioButtonKt;->RadioButtonRippleRadius:F

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    int-to-float v0, v0

    .line 12
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonPadding:F

    .line 17
    .line 18
    const/16 v1, 0x14

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonSize:F

    .line 26
    .line 27
    div-float/2addr v1, v0

    .line 28
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioRadius:F

    .line 33
    .line 34
    const/16 v1, 0xc

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonDotSize:F

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Landroidx/compose/material/RadioButtonKt;->RadioStrokeWidth:F

    .line 48
    .line 49
    return-void
.end method

.method public static final RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/RadioButtonColors;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p5    # Landroidx/compose/material/RadioButtonColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/RadioButtonColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p7

    .line 6
    .line 7
    const v0, 0x4e58b201    # 9.0888608E8f

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p6

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    and-int/lit8 v1, p8, 0x1

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    or-int/lit8 v1, v9, 0x6

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v1, v9, 0xe

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v6

    .line 37
    :goto_0
    or-int/2addr v1, v9

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v9

    .line 40
    :goto_1
    and-int/lit8 v2, p8, 0x2

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    or-int/lit8 v1, v1, 0x30

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    and-int/lit8 v2, v9, 0x70

    .line 48
    .line 49
    if-nez v2, :cond_5

    .line 50
    .line 51
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    const/16 v2, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/16 v2, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v1, v2

    .line 63
    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    .line 64
    .line 65
    if-eqz v2, :cond_7

    .line 66
    .line 67
    or-int/lit16 v1, v1, 0x180

    .line 68
    .line 69
    :cond_6
    move-object/from16 v3, p2

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_7
    and-int/lit16 v3, v9, 0x380

    .line 73
    .line 74
    if-nez v3, :cond_6

    .line 75
    .line 76
    move-object/from16 v3, p2

    .line 77
    .line 78
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_8

    .line 83
    .line 84
    const/16 v4, 0x100

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_8
    const/16 v4, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v1, v4

    .line 90
    :goto_5
    and-int/lit8 v4, p8, 0x8

    .line 91
    .line 92
    if-eqz v4, :cond_a

    .line 93
    .line 94
    or-int/lit16 v1, v1, 0xc00

    .line 95
    .line 96
    :cond_9
    move/from16 v5, p3

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_a
    and-int/lit16 v5, v9, 0x1c00

    .line 100
    .line 101
    if-nez v5, :cond_9

    .line 102
    .line 103
    move/from16 v5, p3

    .line 104
    .line 105
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_b

    .line 110
    .line 111
    const/16 v10, 0x800

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_b
    const/16 v10, 0x400

    .line 115
    .line 116
    :goto_6
    or-int/2addr v1, v10

    .line 117
    :goto_7
    and-int/lit8 v10, p8, 0x10

    .line 118
    .line 119
    if-eqz v10, :cond_d

    .line 120
    .line 121
    or-int/lit16 v1, v1, 0x6000

    .line 122
    .line 123
    :cond_c
    move-object/from16 v11, p4

    .line 124
    .line 125
    goto :goto_9

    .line 126
    :cond_d
    const v11, 0xe000

    .line 127
    .line 128
    .line 129
    and-int/2addr v11, v9

    .line 130
    if-nez v11, :cond_c

    .line 131
    .line 132
    move-object/from16 v11, p4

    .line 133
    .line 134
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-eqz v12, :cond_e

    .line 139
    .line 140
    const/16 v12, 0x4000

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_e
    const/16 v12, 0x2000

    .line 144
    .line 145
    :goto_8
    or-int/2addr v1, v12

    .line 146
    :goto_9
    const/high16 v12, 0x70000

    .line 147
    .line 148
    and-int/2addr v12, v9

    .line 149
    if-nez v12, :cond_11

    .line 150
    .line 151
    and-int/lit8 v12, p8, 0x20

    .line 152
    .line 153
    if-nez v12, :cond_f

    .line 154
    .line 155
    move-object/from16 v12, p5

    .line 156
    .line 157
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-eqz v13, :cond_10

    .line 162
    .line 163
    const/high16 v13, 0x20000

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_f
    move-object/from16 v12, p5

    .line 167
    .line 168
    :cond_10
    const/high16 v13, 0x10000

    .line 169
    .line 170
    :goto_a
    or-int/2addr v1, v13

    .line 171
    goto :goto_b

    .line 172
    :cond_11
    move-object/from16 v12, p5

    .line 173
    .line 174
    :goto_b
    const v13, 0x5b6db

    .line 175
    .line 176
    .line 177
    and-int/2addr v13, v1

    .line 178
    const v14, 0x12492

    .line 179
    .line 180
    .line 181
    if-ne v13, v14, :cond_13

    .line 182
    .line 183
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_12

    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 191
    .line 192
    .line 193
    move v4, v5

    .line 194
    move-object v5, v11

    .line 195
    move-object v6, v12

    .line 196
    move-object v11, v0

    .line 197
    goto/16 :goto_14

    .line 198
    .line 199
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 200
    .line 201
    .line 202
    and-int/lit8 v13, v9, 0x1

    .line 203
    .line 204
    const v20, -0x70001

    .line 205
    .line 206
    .line 207
    if-eqz v13, :cond_16

    .line 208
    .line 209
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    if-eqz v13, :cond_14

    .line 214
    .line 215
    goto :goto_d

    .line 216
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 217
    .line 218
    .line 219
    and-int/lit8 v2, p8, 0x20

    .line 220
    .line 221
    if-eqz v2, :cond_15

    .line 222
    .line 223
    and-int v1, v1, v20

    .line 224
    .line 225
    :cond_15
    move v10, v1

    .line 226
    move-object v15, v3

    .line 227
    move v14, v5

    .line 228
    move-object/from16 v17, v11

    .line 229
    .line 230
    goto :goto_11

    .line 231
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 232
    .line 233
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_17
    move-object v2, v3

    .line 237
    :goto_e
    if-eqz v4, :cond_18

    .line 238
    .line 239
    const/4 v3, 0x1

    .line 240
    goto :goto_f

    .line 241
    :cond_18
    move v3, v5

    .line 242
    :goto_f
    if-eqz v10, :cond_1a

    .line 243
    .line 244
    const v4, -0x1d58f75c

    .line 245
    .line 246
    .line 247
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 255
    .line 256
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    if-ne v4, v5, :cond_19

    .line 261
    .line 262
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 270
    .line 271
    .line 272
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 273
    .line 274
    goto :goto_10

    .line 275
    :cond_1a
    move-object v4, v11

    .line 276
    :goto_10
    and-int/lit8 v5, p8, 0x20

    .line 277
    .line 278
    if-eqz v5, :cond_1b

    .line 279
    .line 280
    sget-object v10, Landroidx/compose/material/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material/RadioButtonDefaults;

    .line 281
    .line 282
    const/16 v18, 0xc00

    .line 283
    .line 284
    const/16 v19, 0x7

    .line 285
    .line 286
    const-wide/16 v11, 0x0

    .line 287
    .line 288
    const-wide/16 v13, 0x0

    .line 289
    .line 290
    const-wide/16 v15, 0x0

    .line 291
    .line 292
    move-object/from16 v17, v0

    .line 293
    .line 294
    invoke-virtual/range {v10 .. v19}, Landroidx/compose/material/RadioButtonDefaults;->colors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/RadioButtonColors;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    and-int v1, v1, v20

    .line 299
    .line 300
    move v10, v1

    .line 301
    move-object v15, v2

    .line 302
    move v14, v3

    .line 303
    move-object/from16 v17, v4

    .line 304
    .line 305
    move-object v12, v5

    .line 306
    goto :goto_11

    .line 307
    :cond_1b
    move v10, v1

    .line 308
    move-object v15, v2

    .line 309
    move v14, v3

    .line 310
    move-object/from16 v17, v4

    .line 311
    .line 312
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 313
    .line 314
    .line 315
    const/4 v13, 0x0

    .line 316
    if-eqz v7, :cond_1c

    .line 317
    .line 318
    sget v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonDotSize:F

    .line 319
    .line 320
    int-to-float v2, v6

    .line 321
    div-float/2addr v1, v2

    .line 322
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    goto :goto_12

    .line 327
    :cond_1c
    int-to-float v1, v13

    .line 328
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    :goto_12
    const/16 v2, 0x64

    .line 333
    .line 334
    const/4 v11, 0x0

    .line 335
    const/4 v3, 0x6

    .line 336
    invoke-static {v2, v13, v11, v3, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    const/16 v5, 0x30

    .line 341
    .line 342
    const/16 v16, 0x4

    .line 343
    .line 344
    const/4 v3, 0x0

    .line 345
    move-object v4, v0

    .line 346
    move/from16 v6, v16

    .line 347
    .line 348
    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-Kz89ssw(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    shr-int/lit8 v1, v10, 0x9

    .line 353
    .line 354
    and-int/lit8 v2, v1, 0xe

    .line 355
    .line 356
    shl-int/lit8 v3, v10, 0x3

    .line 357
    .line 358
    and-int/lit8 v3, v3, 0x70

    .line 359
    .line 360
    or-int/2addr v2, v3

    .line 361
    and-int/lit16 v1, v1, 0x380

    .line 362
    .line 363
    or-int/2addr v1, v2

    .line 364
    invoke-interface {v12, v14, v7, v0, v1}, Landroidx/compose/material/RadioButtonColors;->radioColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    const v1, 0x73baf562

    .line 369
    .line 370
    .line 371
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    .line 373
    .line 374
    if-eqz v8, :cond_1d

    .line 375
    .line 376
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 377
    .line 378
    sget-object v2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 379
    .line 380
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role$Companion;->getRadioButton-o7Vup1c()I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    sget v3, Landroidx/compose/material/RadioButtonKt;->RadioButtonRippleRadius:F

    .line 385
    .line 386
    const/16 v4, 0x36

    .line 387
    .line 388
    const/16 v16, 0x4

    .line 389
    .line 390
    const/4 v10, 0x0

    .line 391
    const-wide/16 v18, 0x0

    .line 392
    .line 393
    move v11, v3

    .line 394
    move-object/from16 v20, v12

    .line 395
    .line 396
    move v3, v13

    .line 397
    move-wide/from16 v12, v18

    .line 398
    .line 399
    move/from16 v18, v14

    .line 400
    .line 401
    move-object v14, v0

    .line 402
    move-object/from16 v21, v15

    .line 403
    .line 404
    move v15, v4

    .line 405
    invoke-static/range {v10 .. v16}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {v2}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    move-object v11, v0

    .line 414
    move-object v0, v1

    .line 415
    move/from16 v1, p0

    .line 416
    .line 417
    move-object/from16 v2, v17

    .line 418
    .line 419
    move v12, v3

    .line 420
    move-object v3, v4

    .line 421
    move/from16 v4, v18

    .line 422
    .line 423
    move-object v13, v5

    .line 424
    move-object v5, v10

    .line 425
    move-object v10, v6

    .line 426
    move-object/from16 v6, p1

    .line 427
    .line 428
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    goto :goto_13

    .line 433
    :cond_1d
    move-object v11, v0

    .line 434
    move-object v10, v6

    .line 435
    move-object/from16 v20, v12

    .line 436
    .line 437
    move v12, v13

    .line 438
    move/from16 v18, v14

    .line 439
    .line 440
    move-object/from16 v21, v15

    .line 441
    .line 442
    move-object v13, v5

    .line 443
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 444
    .line 445
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 446
    .line 447
    .line 448
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 449
    .line 450
    if-eqz v8, :cond_1e

    .line 451
    .line 452
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    :cond_1e
    move-object/from16 v2, v21

    .line 457
    .line 458
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 467
    .line 468
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const/4 v3, 0x2

    .line 473
    const/4 v4, 0x0

    .line 474
    invoke-static {v0, v1, v12, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    sget v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonPadding:F

    .line 479
    .line 480
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    sget v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonSize:F

    .line 485
    .line 486
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    const v1, 0x1e7b2b64

    .line 491
    .line 492
    .line 493
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    or-int/2addr v1, v3

    .line 505
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    if-nez v1, :cond_1f

    .line 510
    .line 511
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 512
    .line 513
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    if-ne v3, v1, :cond_20

    .line 518
    .line 519
    :cond_1f
    new-instance v3, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;

    .line 520
    .line 521
    invoke-direct {v3, v13, v10}, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 528
    .line 529
    .line 530
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 531
    .line 532
    invoke-static {v0, v3, v11, v12}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 533
    .line 534
    .line 535
    move-object v3, v2

    .line 536
    move-object/from16 v5, v17

    .line 537
    .line 538
    move/from16 v4, v18

    .line 539
    .line 540
    move-object/from16 v6, v20

    .line 541
    .line 542
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    if-nez v10, :cond_21

    .line 547
    .line 548
    goto :goto_15

    .line 549
    :cond_21
    new-instance v11, Landroidx/compose/material/RadioButtonKt$RadioButton$3;

    .line 550
    .line 551
    move-object v0, v11

    .line 552
    move/from16 v1, p0

    .line 553
    .line 554
    move-object/from16 v2, p1

    .line 555
    .line 556
    move/from16 v7, p7

    .line 557
    .line 558
    move/from16 v8, p8

    .line 559
    .line 560
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/RadioButtonKt$RadioButton$3;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/RadioButtonColors;II)V

    .line 561
    .line 562
    .line 563
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 564
    .line 565
    .line 566
    :goto_15
    return-void
.end method

.method public static final synthetic access$getRadioRadius$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/RadioButtonKt;->RadioRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getRadioStrokeWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/RadioButtonKt;->RadioStrokeWidth:F

    .line 2
    .line 3
    return v0
.end method
