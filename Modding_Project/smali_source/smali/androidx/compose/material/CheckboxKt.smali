.class public final Landroidx/compose/material/CheckboxKt;
.super Ljava/lang/Object;
.source "Checkbox.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/CheckboxKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final BoxInDuration:I = 0x32

.field private static final BoxOutDuration:I = 0x64

.field private static final CheckAnimationDuration:I = 0x64

.field private static final CheckboxDefaultPadding:F

.field private static final CheckboxRippleRadius:F

.field private static final CheckboxSize:F

.field private static final RadiusSize:F

.field private static final StrokeWidth:F


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
    sput v0, Landroidx/compose/material/CheckboxKt;->CheckboxRippleRadius:F

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
    sput v1, Landroidx/compose/material/CheckboxKt;->CheckboxDefaultPadding:F

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
    sput v1, Landroidx/compose/material/CheckboxKt;->CheckboxSize:F

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sput v1, Landroidx/compose/material/CheckboxKt;->StrokeWidth:F

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sput v0, Landroidx/compose/material/CheckboxKt;->RadiusSize:F

    .line 38
    .line 39
    return-void
.end method

.method public static final Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p1    # Lkotlin/jvm/functions/Function1;
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
    .param p5    # Landroidx/compose/material/CheckboxColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
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
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/CheckboxColors;",
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
    move/from16 v7, p7

    .line 6
    .line 7
    const v0, -0x7e483386

    .line 8
    .line 9
    .line 10
    move-object/from16 v3, p6

    .line 11
    .line 12
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    and-int/lit8 v3, p8, 0x1

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    or-int/lit8 v3, v7, 0x6

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v3, v7, 0xe

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v7

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v3, v7

    .line 39
    :goto_1
    and-int/lit8 v4, p8, 0x2

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    or-int/lit8 v3, v3, 0x30

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    and-int/lit8 v4, v7, 0x70

    .line 47
    .line 48
    if-nez v4, :cond_5

    .line 49
    .line 50
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/16 v4, 0x10

    .line 60
    .line 61
    :goto_2
    or-int/2addr v3, v4

    .line 62
    :cond_5
    :goto_3
    and-int/lit8 v4, p8, 0x4

    .line 63
    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    or-int/lit16 v3, v3, 0x180

    .line 67
    .line 68
    :cond_6
    move-object/from16 v5, p2

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_7
    and-int/lit16 v5, v7, 0x380

    .line 72
    .line 73
    if-nez v5, :cond_6

    .line 74
    .line 75
    move-object/from16 v5, p2

    .line 76
    .line 77
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_8

    .line 82
    .line 83
    const/16 v6, 0x100

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_8
    const/16 v6, 0x80

    .line 87
    .line 88
    :goto_4
    or-int/2addr v3, v6

    .line 89
    :goto_5
    and-int/lit8 v6, p8, 0x8

    .line 90
    .line 91
    if-eqz v6, :cond_a

    .line 92
    .line 93
    or-int/lit16 v3, v3, 0xc00

    .line 94
    .line 95
    :cond_9
    move/from16 v8, p3

    .line 96
    .line 97
    goto :goto_7

    .line 98
    :cond_a
    and-int/lit16 v8, v7, 0x1c00

    .line 99
    .line 100
    if-nez v8, :cond_9

    .line 101
    .line 102
    move/from16 v8, p3

    .line 103
    .line 104
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_b

    .line 109
    .line 110
    const/16 v9, 0x800

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_b
    const/16 v9, 0x400

    .line 114
    .line 115
    :goto_6
    or-int/2addr v3, v9

    .line 116
    :goto_7
    and-int/lit8 v9, p8, 0x10

    .line 117
    .line 118
    if-eqz v9, :cond_d

    .line 119
    .line 120
    or-int/lit16 v3, v3, 0x6000

    .line 121
    .line 122
    :cond_c
    move-object/from16 v10, p4

    .line 123
    .line 124
    goto :goto_9

    .line 125
    :cond_d
    const v10, 0xe000

    .line 126
    .line 127
    .line 128
    and-int/2addr v10, v7

    .line 129
    if-nez v10, :cond_c

    .line 130
    .line 131
    move-object/from16 v10, p4

    .line 132
    .line 133
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_e

    .line 138
    .line 139
    const/16 v11, 0x4000

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_e
    const/16 v11, 0x2000

    .line 143
    .line 144
    :goto_8
    or-int/2addr v3, v11

    .line 145
    :goto_9
    const/high16 v11, 0x70000

    .line 146
    .line 147
    and-int/2addr v11, v7

    .line 148
    if-nez v11, :cond_11

    .line 149
    .line 150
    and-int/lit8 v11, p8, 0x20

    .line 151
    .line 152
    if-nez v11, :cond_f

    .line 153
    .line 154
    move-object/from16 v11, p5

    .line 155
    .line 156
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_10

    .line 161
    .line 162
    const/high16 v12, 0x20000

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :cond_f
    move-object/from16 v11, p5

    .line 166
    .line 167
    :cond_10
    const/high16 v12, 0x10000

    .line 168
    .line 169
    :goto_a
    or-int/2addr v3, v12

    .line 170
    goto :goto_b

    .line 171
    :cond_11
    move-object/from16 v11, p5

    .line 172
    .line 173
    :goto_b
    const v12, 0x5b6db

    .line 174
    .line 175
    .line 176
    and-int/2addr v12, v3

    .line 177
    const v13, 0x12492

    .line 178
    .line 179
    .line 180
    if-ne v12, v13, :cond_13

    .line 181
    .line 182
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    if-nez v12, :cond_12

    .line 187
    .line 188
    goto :goto_c

    .line 189
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 190
    .line 191
    .line 192
    move-object v3, v5

    .line 193
    move v4, v8

    .line 194
    move-object v5, v10

    .line 195
    move-object v6, v11

    .line 196
    goto/16 :goto_13

    .line 197
    .line 198
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 199
    .line 200
    .line 201
    and-int/lit8 v12, v7, 0x1

    .line 202
    .line 203
    const v22, -0x70001

    .line 204
    .line 205
    .line 206
    if-eqz v12, :cond_17

    .line 207
    .line 208
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-eqz v12, :cond_14

    .line 213
    .line 214
    goto :goto_d

    .line 215
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 216
    .line 217
    .line 218
    and-int/lit8 v4, p8, 0x20

    .line 219
    .line 220
    if-eqz v4, :cond_15

    .line 221
    .line 222
    and-int v3, v3, v22

    .line 223
    .line 224
    :cond_15
    move-object v4, v5

    .line 225
    move v5, v8

    .line 226
    move-object v6, v10

    .line 227
    :cond_16
    move v8, v3

    .line 228
    move-object v3, v11

    .line 229
    goto :goto_11

    .line 230
    :cond_17
    :goto_d
    if-eqz v4, :cond_18

    .line 231
    .line 232
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 233
    .line 234
    goto :goto_e

    .line 235
    :cond_18
    move-object v4, v5

    .line 236
    :goto_e
    if-eqz v6, :cond_19

    .line 237
    .line 238
    const/4 v5, 0x1

    .line 239
    goto :goto_f

    .line 240
    :cond_19
    move v5, v8

    .line 241
    :goto_f
    if-eqz v9, :cond_1b

    .line 242
    .line 243
    const v6, -0x1d58f75c

    .line 244
    .line 245
    .line 246
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 254
    .line 255
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    if-ne v6, v8, :cond_1a

    .line 260
    .line 261
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 269
    .line 270
    .line 271
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 272
    .line 273
    goto :goto_10

    .line 274
    :cond_1b
    move-object v6, v10

    .line 275
    :goto_10
    and-int/lit8 v8, p8, 0x20

    .line 276
    .line 277
    if-eqz v8, :cond_16

    .line 278
    .line 279
    sget-object v8, Landroidx/compose/material/CheckboxDefaults;->INSTANCE:Landroidx/compose/material/CheckboxDefaults;

    .line 280
    .line 281
    const/high16 v20, 0x30000

    .line 282
    .line 283
    const/16 v21, 0x1f

    .line 284
    .line 285
    const-wide/16 v9, 0x0

    .line 286
    .line 287
    const-wide/16 v11, 0x0

    .line 288
    .line 289
    const-wide/16 v13, 0x0

    .line 290
    .line 291
    const-wide/16 v15, 0x0

    .line 292
    .line 293
    const-wide/16 v17, 0x0

    .line 294
    .line 295
    move-object/from16 v19, v0

    .line 296
    .line 297
    invoke-virtual/range {v8 .. v21}, Landroidx/compose/material/CheckboxDefaults;->colors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    and-int v3, v3, v22

    .line 302
    .line 303
    move-object/from16 v23, v8

    .line 304
    .line 305
    move v8, v3

    .line 306
    move-object/from16 v3, v23

    .line 307
    .line 308
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 309
    .line 310
    .line 311
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/state/ToggleableStateKt;->ToggleableState(Z)Landroidx/compose/ui/state/ToggleableState;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    const v10, 0x556bc466

    .line 316
    .line 317
    .line 318
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 319
    .line 320
    .line 321
    if-eqz v2, :cond_1e

    .line 322
    .line 323
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    const v11, 0x1e7b2b64

    .line 328
    .line 329
    .line 330
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 331
    .line 332
    .line 333
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    or-int/2addr v10, v11

    .line 342
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    if-nez v10, :cond_1c

    .line 347
    .line 348
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 349
    .line 350
    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    if-ne v11, v10, :cond_1d

    .line 355
    .line 356
    :cond_1c
    new-instance v11, Landroidx/compose/material/CheckboxKt$Checkbox$2$1;

    .line 357
    .line 358
    invoke-direct {v11, v2, v1}, Landroidx/compose/material/CheckboxKt$Checkbox$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 359
    .line 360
    .line 361
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 365
    .line 366
    .line 367
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 368
    .line 369
    move-object v10, v11

    .line 370
    goto :goto_12

    .line 371
    :cond_1e
    const/4 v10, 0x0

    .line 372
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 373
    .line 374
    .line 375
    const v11, 0x7ff80

    .line 376
    .line 377
    .line 378
    and-int v15, v8, v11

    .line 379
    .line 380
    const/16 v16, 0x0

    .line 381
    .line 382
    move-object v8, v9

    .line 383
    move-object v9, v10

    .line 384
    move-object v10, v4

    .line 385
    move v11, v5

    .line 386
    move-object v12, v6

    .line 387
    move-object v13, v3

    .line 388
    move-object v14, v0

    .line 389
    invoke-static/range {v8 .. v16}, Landroidx/compose/material/CheckboxKt;->TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;II)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v23, v6

    .line 393
    .line 394
    move-object v6, v3

    .line 395
    move-object v3, v4

    .line 396
    move v4, v5

    .line 397
    move-object/from16 v5, v23

    .line 398
    .line 399
    :goto_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    if-nez v9, :cond_1f

    .line 404
    .line 405
    goto :goto_14

    .line 406
    :cond_1f
    new-instance v10, Landroidx/compose/material/CheckboxKt$Checkbox$3;

    .line 407
    .line 408
    move-object v0, v10

    .line 409
    move/from16 v1, p0

    .line 410
    .line 411
    move-object/from16 v2, p1

    .line 412
    .line 413
    move/from16 v7, p7

    .line 414
    .line 415
    move/from16 v8, p8

    .line 416
    .line 417
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/CheckboxKt$Checkbox$3;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;II)V

    .line 418
    .line 419
    .line 420
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 421
    .line 422
    .line 423
    :goto_14
    return-void
.end method

.method private static final CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 34
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    const v0, -0x7e4bc86f

    .line 12
    .line 13
    .line 14
    move-object/from16 v6, p4

    .line 15
    .line 16
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    and-int/lit8 v6, v5, 0xe

    .line 21
    .line 22
    const/4 v14, 0x2

    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v6, v14

    .line 34
    :goto_0
    or-int/2addr v6, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v6, v5

    .line 37
    :goto_1
    and-int/lit8 v7, v5, 0x70

    .line 38
    .line 39
    if-nez v7, :cond_3

    .line 40
    .line 41
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v7, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v6, v7

    .line 53
    :cond_3
    and-int/lit16 v7, v5, 0x380

    .line 54
    .line 55
    if-nez v7, :cond_5

    .line 56
    .line 57
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const/16 v7, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v7, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v6, v7

    .line 69
    :cond_5
    and-int/lit16 v7, v5, 0x1c00

    .line 70
    .line 71
    if-nez v7, :cond_7

    .line 72
    .line 73
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_6

    .line 78
    .line 79
    const/16 v7, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v7, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v6, v7

    .line 85
    :cond_7
    move v15, v6

    .line 86
    and-int/lit16 v6, v15, 0x16db

    .line 87
    .line 88
    const/16 v7, 0x492

    .line 89
    .line 90
    if-ne v6, v7, :cond_9

    .line 91
    .line 92
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_8

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_b

    .line 103
    .line 104
    :cond_9
    :goto_5
    shr-int/lit8 v13, v15, 0x3

    .line 105
    .line 106
    and-int/lit8 v12, v13, 0xe

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    invoke-static {v2, v11, v0, v12, v14}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    sget-object v6, Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkDrawFraction$2;->INSTANCE:Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkDrawFraction$2;

    .line 114
    .line 115
    const v10, 0x5370a61d

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 119
    .line 120
    .line 121
    sget-object v17, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 122
    .line 123
    invoke-static/range {v17 .. v17}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 124
    .line 125
    .line 126
    move-result-object v18

    .line 127
    const v9, 0x6e220c08

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Landroidx/compose/ui/state/ToggleableState;

    .line 138
    .line 139
    const v8, -0x6b309374

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 143
    .line 144
    .line 145
    sget-object v19, Landroidx/compose/material/CheckboxKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    aget v7, v19, v7

    .line 152
    .line 153
    move/from16 p4, v13

    .line 154
    .line 155
    const/4 v13, 0x1

    .line 156
    const/4 v8, 0x3

    .line 157
    const/16 v20, 0x0

    .line 158
    .line 159
    const/high16 v21, 0x3f800000    # 1.0f

    .line 160
    .line 161
    if-eq v7, v13, :cond_a

    .line 162
    .line 163
    if-eq v7, v14, :cond_c

    .line 164
    .line 165
    if-ne v7, v8, :cond_b

    .line 166
    .line 167
    :cond_a
    move/from16 v7, v21

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 171
    .line 172
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_c
    move/from16 v7, v20

    .line 177
    .line 178
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 179
    .line 180
    .line 181
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v22

    .line 189
    check-cast v22, Landroidx/compose/ui/state/ToggleableState;

    .line 190
    .line 191
    const v9, -0x6b309374

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    aget v9, v19, v9

    .line 202
    .line 203
    if-eq v9, v13, :cond_d

    .line 204
    .line 205
    if-eq v9, v14, :cond_f

    .line 206
    .line 207
    if-ne v9, v8, :cond_e

    .line 208
    .line 209
    :cond_d
    move/from16 v9, v21

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 213
    .line 214
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :cond_f
    move/from16 v9, v20

    .line 219
    .line 220
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 221
    .line 222
    .line 223
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    const/4 v14, 0x0

    .line 232
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    invoke-interface {v6, v8, v0, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    move-object v10, v6

    .line 241
    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 242
    .line 243
    const-string v24, "FloatAnimation"

    .line 244
    .line 245
    const/16 v25, 0x0

    .line 246
    .line 247
    move-object/from16 v6, v16

    .line 248
    .line 249
    const/4 v14, 0x3

    .line 250
    move-object v8, v9

    .line 251
    const v14, 0x6e220c08

    .line 252
    .line 253
    .line 254
    move-object v9, v10

    .line 255
    const v14, 0x5370a61d

    .line 256
    .line 257
    .line 258
    move-object/from16 v10, v18

    .line 259
    .line 260
    move-object/from16 v11, v24

    .line 261
    .line 262
    move/from16 v18, v12

    .line 263
    .line 264
    move-object v12, v0

    .line 265
    move/from16 v26, p4

    .line 266
    .line 267
    move/from16 v13, v25

    .line 268
    .line 269
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 270
    .line 271
    .line 272
    move-result-object v23

    .line 273
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 274
    .line 275
    .line 276
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 277
    .line 278
    .line 279
    sget-object v6, Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2;->INSTANCE:Landroidx/compose/material/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2;

    .line 280
    .line 281
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 282
    .line 283
    .line 284
    invoke-static/range {v17 .. v17}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    const v7, 0x6e220c08

    .line 289
    .line 290
    .line 291
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    check-cast v7, Landroidx/compose/ui/state/ToggleableState;

    .line 299
    .line 300
    const v8, -0x7d1b526b

    .line 301
    .line 302
    .line 303
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    aget v7, v19, v7

    .line 311
    .line 312
    const/4 v9, 0x1

    .line 313
    if-eq v7, v9, :cond_11

    .line 314
    .line 315
    const/4 v11, 0x2

    .line 316
    if-eq v7, v11, :cond_11

    .line 317
    .line 318
    const/4 v11, 0x3

    .line 319
    if-ne v7, v11, :cond_10

    .line 320
    .line 321
    move/from16 v7, v21

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 325
    .line 326
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_11
    move/from16 v7, v20

    .line 331
    .line 332
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 333
    .line 334
    .line 335
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    check-cast v11, Landroidx/compose/ui/state/ToggleableState;

    .line 344
    .line 345
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    aget v8, v19, v8

    .line 353
    .line 354
    if-eq v8, v9, :cond_13

    .line 355
    .line 356
    const/4 v9, 0x2

    .line 357
    if-eq v8, v9, :cond_13

    .line 358
    .line 359
    const/4 v9, 0x3

    .line 360
    if-ne v8, v9, :cond_12

    .line 361
    .line 362
    move/from16 v20, v21

    .line 363
    .line 364
    goto :goto_9

    .line 365
    :cond_12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 366
    .line 367
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_13
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 372
    .line 373
    .line 374
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    const/4 v11, 0x0

    .line 383
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-interface {v6, v9, v0, v12}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    move-object v9, v6

    .line 392
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 393
    .line 394
    const-string v11, "FloatAnimation"

    .line 395
    .line 396
    move-object/from16 v6, v16

    .line 397
    .line 398
    move-object v12, v0

    .line 399
    move/from16 v13, v25

    .line 400
    .line 401
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 402
    .line 403
    .line 404
    move-result-object v33

    .line 405
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 406
    .line 407
    .line 408
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 409
    .line 410
    .line 411
    const v6, -0x1d58f75c

    .line 412
    .line 413
    .line 414
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 422
    .line 423
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    if-ne v6, v7, :cond_14

    .line 428
    .line 429
    new-instance v6, Landroidx/compose/material/CheckDrawingCache;

    .line 430
    .line 431
    const/4 v12, 0x7

    .line 432
    const/4 v13, 0x0

    .line 433
    const/4 v9, 0x0

    .line 434
    const/4 v10, 0x0

    .line 435
    const/4 v11, 0x0

    .line 436
    move-object v8, v6

    .line 437
    invoke-direct/range {v8 .. v13}, Landroidx/compose/material/CheckDrawingCache;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/PathMeasure;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 438
    .line 439
    .line 440
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 444
    .line 445
    .line 446
    check-cast v6, Landroidx/compose/material/CheckDrawingCache;

    .line 447
    .line 448
    shr-int/lit8 v7, v15, 0x6

    .line 449
    .line 450
    and-int/lit8 v7, v7, 0x70

    .line 451
    .line 452
    or-int v7, v18, v7

    .line 453
    .line 454
    invoke-interface {v4, v2, v0, v7}, Landroidx/compose/material/CheckboxColors;->checkmarkColor(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    and-int/lit8 v8, v15, 0x7e

    .line 459
    .line 460
    move/from16 v9, v26

    .line 461
    .line 462
    and-int/lit16 v9, v9, 0x380

    .line 463
    .line 464
    or-int/2addr v8, v9

    .line 465
    invoke-interface {v4, v1, v2, v0, v8}, Landroidx/compose/material/CheckboxColors;->boxColor(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    invoke-interface {v4, v1, v2, v0, v8}, Landroidx/compose/material/CheckboxColors;->borderColor(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 474
    .line 475
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    const/4 v11, 0x2

    .line 480
    const/4 v12, 0x0

    .line 481
    const/4 v13, 0x0

    .line 482
    invoke-static {v3, v10, v13, v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    sget v11, Landroidx/compose/material/CheckboxKt;->CheckboxSize:F

    .line 487
    .line 488
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    move-object/from16 v27, v9

    .line 493
    .line 494
    move-object/from16 v28, v8

    .line 495
    .line 496
    move-object/from16 v29, v7

    .line 497
    .line 498
    move-object/from16 v30, v23

    .line 499
    .line 500
    move-object/from16 v31, v33

    .line 501
    .line 502
    move-object/from16 v32, v6

    .line 503
    .line 504
    filled-new-array/range {v27 .. v32}, [Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v11

    .line 508
    const v12, -0x21de6e89

    .line 509
    .line 510
    .line 511
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 512
    .line 513
    .line 514
    const/4 v12, 0x0

    .line 515
    const/4 v13, 0x0

    .line 516
    :goto_a
    const/4 v14, 0x6

    .line 517
    if-ge v12, v14, :cond_15

    .line 518
    .line 519
    aget-object v14, v11, v12

    .line 520
    .line 521
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    or-int/2addr v13, v14

    .line 526
    add-int/lit8 v12, v12, 0x1

    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    if-nez v13, :cond_16

    .line 534
    .line 535
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 536
    .line 537
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    if-ne v11, v12, :cond_17

    .line 542
    .line 543
    :cond_16
    new-instance v11, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;

    .line 544
    .line 545
    move-object/from16 v27, v11

    .line 546
    .line 547
    move-object/from16 v28, v6

    .line 548
    .line 549
    move-object/from16 v29, v9

    .line 550
    .line 551
    move-object/from16 v30, v8

    .line 552
    .line 553
    move-object/from16 v31, v7

    .line 554
    .line 555
    move-object/from16 v32, v23

    .line 556
    .line 557
    invoke-direct/range {v27 .. v33}, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;-><init>(Landroidx/compose/material/CheckDrawingCache;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 558
    .line 559
    .line 560
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 564
    .line 565
    .line 566
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 567
    .line 568
    const/4 v6, 0x0

    .line 569
    invoke-static {v10, v11, v0, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 570
    .line 571
    .line 572
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 573
    .line 574
    .line 575
    move-result-object v6

    .line 576
    if-nez v6, :cond_18

    .line 577
    .line 578
    goto :goto_c

    .line 579
    :cond_18
    new-instance v7, Landroidx/compose/material/CheckboxKt$CheckboxImpl$2;

    .line 580
    .line 581
    move-object v0, v7

    .line 582
    move/from16 v1, p0

    .line 583
    .line 584
    move-object/from16 v2, p1

    .line 585
    .line 586
    move-object/from16 v3, p2

    .line 587
    .line 588
    move-object/from16 v4, p3

    .line 589
    .line 590
    move/from16 v5, p5

    .line 591
    .line 592
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/CheckboxKt$CheckboxImpl$2;-><init>(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;I)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 596
    .line 597
    .line 598
    :goto_c
    return-void
.end method

.method private static final CheckboxImpl$lambda-10(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final CheckboxImpl$lambda-4(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final CheckboxImpl$lambda-6(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final CheckboxImpl$lambda-8(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final CheckboxImpl$lambda-9(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0    # Landroidx/compose/ui/state/ToggleableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .param p5    # Landroidx/compose/material/CheckboxColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/state/ToggleableState;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/CheckboxColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p7

    .line 6
    .line 7
    const-string v0, "state"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x79127e9a

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p6

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    and-int/lit8 v0, p8, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    or-int/lit8 v0, v9, 0x6

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v9

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v0, v9

    .line 44
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    or-int/lit8 v0, v0, 0x30

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    and-int/lit8 v1, v9, 0x70

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/16 v1, 0x20

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const/16 v1, 0x10

    .line 65
    .line 66
    :goto_2
    or-int/2addr v0, v1

    .line 67
    :cond_5
    :goto_3
    and-int/lit8 v1, p8, 0x4

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    or-int/lit16 v0, v0, 0x180

    .line 72
    .line 73
    :cond_6
    move-object/from16 v2, p2

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    and-int/lit16 v2, v9, 0x380

    .line 77
    .line 78
    if-nez v2, :cond_6

    .line 79
    .line 80
    move-object/from16 v2, p2

    .line 81
    .line 82
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_8

    .line 87
    .line 88
    const/16 v3, 0x100

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    const/16 v3, 0x80

    .line 92
    .line 93
    :goto_4
    or-int/2addr v0, v3

    .line 94
    :goto_5
    and-int/lit8 v3, p8, 0x8

    .line 95
    .line 96
    if-eqz v3, :cond_a

    .line 97
    .line 98
    or-int/lit16 v0, v0, 0xc00

    .line 99
    .line 100
    :cond_9
    move/from16 v4, p3

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_a
    and-int/lit16 v4, v9, 0x1c00

    .line 104
    .line 105
    if-nez v4, :cond_9

    .line 106
    .line 107
    move/from16 v4, p3

    .line 108
    .line 109
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_b

    .line 114
    .line 115
    const/16 v5, 0x800

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_b
    const/16 v5, 0x400

    .line 119
    .line 120
    :goto_6
    or-int/2addr v0, v5

    .line 121
    :goto_7
    and-int/lit8 v5, p8, 0x10

    .line 122
    .line 123
    if-eqz v5, :cond_d

    .line 124
    .line 125
    or-int/lit16 v0, v0, 0x6000

    .line 126
    .line 127
    :cond_c
    move-object/from16 v10, p4

    .line 128
    .line 129
    goto :goto_9

    .line 130
    :cond_d
    const v10, 0xe000

    .line 131
    .line 132
    .line 133
    and-int/2addr v10, v9

    .line 134
    if-nez v10, :cond_c

    .line 135
    .line 136
    move-object/from16 v10, p4

    .line 137
    .line 138
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_e

    .line 143
    .line 144
    const/16 v11, 0x4000

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_e
    const/16 v11, 0x2000

    .line 148
    .line 149
    :goto_8
    or-int/2addr v0, v11

    .line 150
    :goto_9
    const/high16 v11, 0x70000

    .line 151
    .line 152
    and-int/2addr v11, v9

    .line 153
    if-nez v11, :cond_11

    .line 154
    .line 155
    and-int/lit8 v11, p8, 0x20

    .line 156
    .line 157
    if-nez v11, :cond_f

    .line 158
    .line 159
    move-object/from16 v11, p5

    .line 160
    .line 161
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_10

    .line 166
    .line 167
    const/high16 v12, 0x20000

    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_f
    move-object/from16 v11, p5

    .line 171
    .line 172
    :cond_10
    const/high16 v12, 0x10000

    .line 173
    .line 174
    :goto_a
    or-int/2addr v0, v12

    .line 175
    goto :goto_b

    .line 176
    :cond_11
    move-object/from16 v11, p5

    .line 177
    .line 178
    :goto_b
    const v12, 0x5b6db

    .line 179
    .line 180
    .line 181
    and-int/2addr v12, v0

    .line 182
    const v13, 0x12492

    .line 183
    .line 184
    .line 185
    if-ne v12, v13, :cond_13

    .line 186
    .line 187
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    if-nez v12, :cond_12

    .line 192
    .line 193
    goto :goto_c

    .line 194
    :cond_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 195
    .line 196
    .line 197
    move-object v3, v2

    .line 198
    move-object v5, v10

    .line 199
    move-object v10, v6

    .line 200
    move-object v6, v11

    .line 201
    goto/16 :goto_14

    .line 202
    .line 203
    :cond_13
    :goto_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 204
    .line 205
    .line 206
    and-int/lit8 v12, v9, 0x1

    .line 207
    .line 208
    const v24, -0x70001

    .line 209
    .line 210
    .line 211
    if-eqz v12, :cond_16

    .line 212
    .line 213
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    if-eqz v12, :cond_14

    .line 218
    .line 219
    goto :goto_e

    .line 220
    :cond_14
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 221
    .line 222
    .line 223
    and-int/lit8 v1, p8, 0x20

    .line 224
    .line 225
    if-eqz v1, :cond_15

    .line 226
    .line 227
    and-int v0, v0, v24

    .line 228
    .line 229
    :cond_15
    move/from16 v20, v0

    .line 230
    .line 231
    move-object v5, v2

    .line 232
    move/from16 v17, v4

    .line 233
    .line 234
    move-object/from16 v18, v10

    .line 235
    .line 236
    :goto_d
    move-object/from16 v19, v11

    .line 237
    .line 238
    goto :goto_12

    .line 239
    :cond_16
    :goto_e
    if-eqz v1, :cond_17

    .line 240
    .line 241
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 242
    .line 243
    goto :goto_f

    .line 244
    :cond_17
    move-object v1, v2

    .line 245
    :goto_f
    if-eqz v3, :cond_18

    .line 246
    .line 247
    const/4 v2, 0x1

    .line 248
    goto :goto_10

    .line 249
    :cond_18
    move v2, v4

    .line 250
    :goto_10
    if-eqz v5, :cond_1a

    .line 251
    .line 252
    const v3, -0x1d58f75c

    .line 253
    .line 254
    .line 255
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 263
    .line 264
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    if-ne v3, v4, :cond_19

    .line 269
    .line 270
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_19
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 278
    .line 279
    .line 280
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 281
    .line 282
    goto :goto_11

    .line 283
    :cond_1a
    move-object v3, v10

    .line 284
    :goto_11
    and-int/lit8 v4, p8, 0x20

    .line 285
    .line 286
    if-eqz v4, :cond_1b

    .line 287
    .line 288
    sget-object v10, Landroidx/compose/material/CheckboxDefaults;->INSTANCE:Landroidx/compose/material/CheckboxDefaults;

    .line 289
    .line 290
    const/high16 v22, 0x30000

    .line 291
    .line 292
    const/16 v23, 0x1f

    .line 293
    .line 294
    const-wide/16 v11, 0x0

    .line 295
    .line 296
    const-wide/16 v13, 0x0

    .line 297
    .line 298
    const-wide/16 v15, 0x0

    .line 299
    .line 300
    const-wide/16 v17, 0x0

    .line 301
    .line 302
    const-wide/16 v19, 0x0

    .line 303
    .line 304
    move-object/from16 v21, v6

    .line 305
    .line 306
    invoke-virtual/range {v10 .. v23}, Landroidx/compose/material/CheckboxDefaults;->colors-zjMxDiM(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    and-int v0, v0, v24

    .line 311
    .line 312
    move/from16 v20, v0

    .line 313
    .line 314
    move-object v5, v1

    .line 315
    move/from16 v17, v2

    .line 316
    .line 317
    move-object/from16 v18, v3

    .line 318
    .line 319
    move-object/from16 v19, v4

    .line 320
    .line 321
    goto :goto_12

    .line 322
    :cond_1b
    move/from16 v20, v0

    .line 323
    .line 324
    move-object v5, v1

    .line 325
    move/from16 v17, v2

    .line 326
    .line 327
    move-object/from16 v18, v3

    .line 328
    .line 329
    goto :goto_d

    .line 330
    :goto_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 331
    .line 332
    .line 333
    const v0, -0x5a73f7ca

    .line 334
    .line 335
    .line 336
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 337
    .line 338
    .line 339
    if-eqz v8, :cond_1c

    .line 340
    .line 341
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 342
    .line 343
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->getCheckbox-o7Vup1c()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    sget v11, Landroidx/compose/material/CheckboxKt;->CheckboxRippleRadius:F

    .line 350
    .line 351
    const/16 v15, 0x36

    .line 352
    .line 353
    const/16 v16, 0x4

    .line 354
    .line 355
    const/4 v10, 0x0

    .line 356
    const-wide/16 v12, 0x0

    .line 357
    .line 358
    move-object v14, v6

    .line 359
    invoke-static/range {v10 .. v16}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    move-object/from16 v1, p0

    .line 368
    .line 369
    move-object/from16 v2, v18

    .line 370
    .line 371
    move/from16 v4, v17

    .line 372
    .line 373
    move-object v11, v5

    .line 374
    move-object v5, v10

    .line 375
    move-object v10, v6

    .line 376
    move-object/from16 v6, p1

    .line 377
    .line 378
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    goto :goto_13

    .line 383
    :cond_1c
    move-object v11, v5

    .line 384
    move-object v10, v6

    .line 385
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 386
    .line 387
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 388
    .line 389
    .line 390
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 391
    .line 392
    if-eqz v8, :cond_1d

    .line 393
    .line 394
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    :cond_1d
    invoke-interface {v11, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    sget v1, Landroidx/compose/material/CheckboxKt;->CheckboxDefaultPadding:F

    .line 407
    .line 408
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    shr-int/lit8 v0, v20, 0x9

    .line 413
    .line 414
    and-int/lit8 v0, v0, 0xe

    .line 415
    .line 416
    shl-int/lit8 v1, v20, 0x3

    .line 417
    .line 418
    and-int/lit8 v1, v1, 0x70

    .line 419
    .line 420
    or-int/2addr v0, v1

    .line 421
    shr-int/lit8 v1, v20, 0x6

    .line 422
    .line 423
    and-int/lit16 v1, v1, 0x1c00

    .line 424
    .line 425
    or-int v5, v0, v1

    .line 426
    .line 427
    move/from16 v0, v17

    .line 428
    .line 429
    move-object/from16 v1, p0

    .line 430
    .line 431
    move-object/from16 v3, v19

    .line 432
    .line 433
    move-object v4, v10

    .line 434
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    .line 435
    .line 436
    .line 437
    move-object v3, v11

    .line 438
    move/from16 v4, v17

    .line 439
    .line 440
    move-object/from16 v5, v18

    .line 441
    .line 442
    move-object/from16 v6, v19

    .line 443
    .line 444
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    if-nez v10, :cond_1e

    .line 449
    .line 450
    goto :goto_15

    .line 451
    :cond_1e
    new-instance v11, Landroidx/compose/material/CheckboxKt$TriStateCheckbox$2;

    .line 452
    .line 453
    move-object v0, v11

    .line 454
    move-object/from16 v1, p0

    .line 455
    .line 456
    move-object/from16 v2, p1

    .line 457
    .line 458
    move/from16 v7, p7

    .line 459
    .line 460
    move/from16 v8, p8

    .line 461
    .line 462
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/CheckboxKt$TriStateCheckbox$2;-><init>(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/CheckboxColors;II)V

    .line 463
    .line 464
    .line 465
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 466
    .line 467
    .line 468
    :goto_15
    return-void
.end method

.method public static final synthetic access$CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$CheckboxImpl$lambda-10(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl$lambda-10(Landroidx/compose/runtime/State;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$CheckboxImpl$lambda-4(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl$lambda-4(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$CheckboxImpl$lambda-6(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl$lambda-6(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$CheckboxImpl$lambda-8(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl$lambda-8(Landroidx/compose/runtime/State;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$CheckboxImpl$lambda-9(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/material/CheckboxKt;->CheckboxImpl$lambda-9(Landroidx/compose/runtime/State;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/CheckboxKt;->drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/CheckboxKt;->drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getRadiusSize$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/CheckboxKt;->RadiusSize:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getStrokeWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/CheckboxKt;->StrokeWidth:F

    .line 2
    .line 3
    return v0
.end method

.method private static final drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V
    .locals 51

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    move/from16 v9, p6

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float v10, v9, v1

    .line 8
    .line 9
    new-instance v20, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 10
    .line 11
    const/16 v7, 0x1e

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object/from16 v1, v20

    .line 19
    .line 20
    move/from16 v2, p6

    .line 21
    .line 22
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static/range {p1 .. p4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x2

    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 43
    .line 44
    .line 45
    move-result-wide v26

    .line 46
    invoke-static {v0, v5, v4, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v28

    .line 50
    sget-object v30, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 51
    .line 52
    const/16 v34, 0xe2

    .line 53
    .line 54
    const/16 v35, 0x0

    .line 55
    .line 56
    const-wide/16 v24, 0x0

    .line 57
    .line 58
    const/16 v31, 0x0

    .line 59
    .line 60
    const/16 v32, 0x0

    .line 61
    .line 62
    const/16 v33, 0x0

    .line 63
    .line 64
    move-object/from16 v21, p0

    .line 65
    .line 66
    move-wide/from16 v22, p1

    .line 67
    .line 68
    invoke-static/range {v21 .. v35}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v9, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 73
    .line 74
    .line 75
    move-result-wide v39

    .line 76
    int-to-float v2, v4

    .line 77
    mul-float/2addr v2, v9

    .line 78
    sub-float v2, v1, v2

    .line 79
    .line 80
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 81
    .line 82
    .line 83
    move-result-wide v41

    .line 84
    sub-float v2, v0, v9

    .line 85
    .line 86
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v2, v5, v4, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v43

    .line 94
    sget-object v45, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 95
    .line 96
    const/16 v49, 0xe0

    .line 97
    .line 98
    const/16 v50, 0x0

    .line 99
    .line 100
    const/16 v46, 0x0

    .line 101
    .line 102
    const/16 v47, 0x0

    .line 103
    .line 104
    const/16 v48, 0x0

    .line 105
    .line 106
    move-object/from16 v36, p0

    .line 107
    .line 108
    move-wide/from16 v37, p1

    .line 109
    .line 110
    invoke-static/range {v36 .. v50}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v10, v10}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 114
    .line 115
    .line 116
    move-result-wide v14

    .line 117
    sub-float/2addr v1, v9

    .line 118
    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 119
    .line 120
    .line 121
    move-result-wide v16

    .line 122
    sub-float/2addr v0, v10

    .line 123
    invoke-static {v0, v5, v4, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius$default(FFILjava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v18

    .line 127
    const/16 v24, 0xe0

    .line 128
    .line 129
    const/16 v25, 0x0

    .line 130
    .line 131
    const/16 v21, 0x0

    .line 132
    .line 133
    const/16 v22, 0x0

    .line 134
    .line 135
    const/16 v23, 0x0

    .line 136
    .line 137
    move-object/from16 v11, p0

    .line 138
    .line 139
    move-wide/from16 v12, p3

    .line 140
    .line 141
    invoke-static/range {v11 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-void
.end method

.method private static final drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V
    .locals 11

    .line 1
    move v0, p4

    .line 2
    new-instance v9, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    const/16 v7, 0x1a

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, v9

    .line 17
    move/from16 v2, p5

    .line 18
    .line 19
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const v2, 0x3ecccccd    # 0.4f

    .line 31
    .line 32
    .line 33
    const/high16 v3, 0x3f000000    # 0.5f

    .line 34
    .line 35
    invoke-static {v2, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const v4, 0x3f333333    # 0.7f

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v3, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const v6, 0x3e99999a    # 0.3f

    .line 51
    .line 52
    .line 53
    invoke-static {v6, v3, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const v6, 0x3e4ccccd    # 0.2f

    .line 69
    .line 70
    .line 71
    mul-float/2addr v6, v1

    .line 72
    mul-float/2addr v5, v1

    .line 73
    invoke-interface {v3, v6, v5}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    mul-float/2addr v2, v1

    .line 81
    mul-float/2addr v4, v1

    .line 82
    invoke-interface {v3, v2, v4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const v3, 0x3f4ccccd    # 0.8f

    .line 90
    .line 91
    .line 92
    mul-float/2addr v3, v1

    .line 93
    mul-float/2addr v1, v0

    .line 94
    invoke-interface {v2, v3, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getCheckPath()Landroidx/compose/ui/graphics/Path;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/PathMeasure;->setPath(Landroidx/compose/ui/graphics/Path;Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getPathToDraw()Landroidx/compose/ui/graphics/Path;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getPathMeasure()Landroidx/compose/ui/graphics/PathMeasure;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroidx/compose/ui/graphics/PathMeasure;->getLength()F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    mul-float/2addr v1, p3

    .line 129
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getPathToDraw()Landroidx/compose/ui/graphics/Path;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v3, 0x1

    .line 134
    const/4 v4, 0x0

    .line 135
    invoke-interface {v0, v4, v1, v2, v3}, Landroidx/compose/ui/graphics/PathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;Z)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/material/CheckDrawingCache;->getPathToDraw()Landroidx/compose/ui/graphics/Path;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/16 v8, 0x34

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    move-object v0, p0

    .line 148
    move-wide v2, p1

    .line 149
    move-object v5, v9

    .line 150
    move-object v9, v10

    .line 151
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
