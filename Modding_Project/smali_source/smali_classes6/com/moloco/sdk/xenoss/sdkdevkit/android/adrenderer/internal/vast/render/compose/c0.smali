.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastCTA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastCTA.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastCTAKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,68:1\n155#2:69\n155#2:70\n155#2:71\n*S KotlinDebug\n*F\n+ 1 VastCTA.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastCTAKt\n*L\n33#1:69\n34#1:70\n55#1:71\n*E\n"
    }
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    int-to-float v0, v0

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0;->a:F

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a()F
    .locals 1

    .line 1
    sget v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9

    .line 1
    or-int/lit8 v7, p6, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object/from16 v6, p8

    .line 9
    .line 10
    move/from16 v8, p7

    .line 11
    .line 12
    invoke-static/range {v0 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move/from16 v1, p7

    .line 6
    .line 7
    const-string/jumbo v0, "text"

    .line 8
    .line 9
    .line 10
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "onClick"

    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v0, -0x6775caf5

    .line 19
    .line 20
    .line 21
    move-object/from16 v4, p6

    .line 22
    .line 23
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    .line 26
    move-result-object v15

    .line 27
    and-int/lit8 v4, p8, 0x1

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    or-int/lit8 v6, v1, 0x6

    .line 33
    .line 34
    move v7, v6

    .line 35
    move-object/from16 v6, p0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    and-int/lit8 v6, v1, 0x6

    .line 39
    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    move-object/from16 v6, p0

    .line 43
    .line 44
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v7, v5

    .line 53
    :goto_0
    or-int/2addr v7, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object/from16 v6, p0

    .line 56
    .line 57
    move v7, v1

    .line 58
    :goto_1
    and-int/lit8 v8, p8, 0x2

    .line 59
    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    or-int/lit8 v7, v7, 0x30

    .line 63
    .line 64
    :cond_3
    move-object/from16 v9, p1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    and-int/lit8 v9, v1, 0x30

    .line 68
    .line 69
    if-nez v9, :cond_3

    .line 70
    .line 71
    move-object/from16 v9, p1

    .line 72
    .line 73
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_5

    .line 78
    .line 79
    const/16 v10, 0x20

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const/16 v10, 0x10

    .line 83
    .line 84
    :goto_2
    or-int/2addr v7, v10

    .line 85
    :goto_3
    and-int/lit8 v10, p8, 0x4

    .line 86
    .line 87
    if-eqz v10, :cond_6

    .line 88
    .line 89
    or-int/lit16 v7, v7, 0x180

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_6
    and-int/lit16 v10, v1, 0x180

    .line 93
    .line 94
    if-nez v10, :cond_8

    .line 95
    .line 96
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_7

    .line 101
    .line 102
    const/16 v10, 0x100

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    const/16 v10, 0x80

    .line 106
    .line 107
    :goto_4
    or-int/2addr v7, v10

    .line 108
    :cond_8
    :goto_5
    and-int/lit16 v10, v1, 0xc00

    .line 109
    .line 110
    if-nez v10, :cond_b

    .line 111
    .line 112
    and-int/lit8 v10, p8, 0x8

    .line 113
    .line 114
    if-nez v10, :cond_9

    .line 115
    .line 116
    move-wide/from16 v10, p3

    .line 117
    .line 118
    invoke-interface {v15, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_a

    .line 123
    .line 124
    const/16 v12, 0x800

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_9
    move-wide/from16 v10, p3

    .line 128
    .line 129
    :cond_a
    const/16 v12, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v7, v12

    .line 132
    goto :goto_7

    .line 133
    :cond_b
    move-wide/from16 v10, p3

    .line 134
    .line 135
    :goto_7
    and-int/lit8 v12, p8, 0x10

    .line 136
    .line 137
    if-eqz v12, :cond_c

    .line 138
    .line 139
    or-int/lit16 v7, v7, 0x6000

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_c
    and-int/lit16 v12, v1, 0x6000

    .line 143
    .line 144
    if-nez v12, :cond_e

    .line 145
    .line 146
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-eqz v12, :cond_d

    .line 151
    .line 152
    const/16 v12, 0x4000

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_d
    const/16 v12, 0x2000

    .line 156
    .line 157
    :goto_8
    or-int/2addr v7, v12

    .line 158
    :cond_e
    :goto_9
    and-int/lit16 v12, v7, 0x2493

    .line 159
    .line 160
    const/16 v13, 0x2492

    .line 161
    .line 162
    if-ne v12, v13, :cond_10

    .line 163
    .line 164
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-nez v12, :cond_f

    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    move-object/from16 v18, v6

    .line 175
    .line 176
    move-wide v4, v10

    .line 177
    move-object/from16 v20, v15

    .line 178
    .line 179
    goto/16 :goto_f

    .line 180
    .line 181
    :cond_10
    :goto_a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 182
    .line 183
    .line 184
    and-int/lit8 v12, v1, 0x1

    .line 185
    .line 186
    const/4 v13, 0x0

    .line 187
    if-eqz v12, :cond_13

    .line 188
    .line 189
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    if-eqz v12, :cond_11

    .line 194
    .line 195
    goto :goto_c

    .line 196
    :cond_11
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 197
    .line 198
    .line 199
    and-int/lit8 v4, p8, 0x8

    .line 200
    .line 201
    if-eqz v4, :cond_12

    .line 202
    .line 203
    and-int/lit16 v7, v7, -0x1c01

    .line 204
    .line 205
    :cond_12
    move-object v14, v6

    .line 206
    :goto_b
    move-object v12, v9

    .line 207
    goto :goto_e

    .line 208
    :cond_13
    :goto_c
    if-eqz v4, :cond_14

    .line 209
    .line 210
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 211
    .line 212
    goto :goto_d

    .line 213
    :cond_14
    move-object v4, v6

    .line 214
    :goto_d
    if-eqz v8, :cond_15

    .line 215
    .line 216
    move-object v9, v13

    .line 217
    :cond_15
    and-int/lit8 v6, p8, 0x8

    .line 218
    .line 219
    if-eqz v6, :cond_16

    .line 220
    .line 221
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 222
    .line 223
    sget v8, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 224
    .line 225
    invoke-virtual {v6, v15, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 230
    .line 231
    .line 232
    move-result-wide v10

    .line 233
    and-int/lit16 v7, v7, -0x1c01

    .line 234
    .line 235
    :cond_16
    move-object v14, v4

    .line 236
    goto :goto_b

    .line 237
    :goto_e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_17

    .line 245
    .line 246
    const/4 v4, -0x1

    .line 247
    const-string v6, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastCTA (VastCTA.kt:29)"

    .line 248
    .line 249
    invoke-static {v0, v7, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_17
    const/16 v0, 0x30

    .line 253
    .line 254
    int-to-float v0, v0

    .line 255
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/16 v4, 0x9c

    .line 264
    .line 265
    int-to-float v4, v4

    .line 266
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v8, 0x1

    .line 272
    invoke-static {v0, v6, v4, v8, v13}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const/4 v4, 0x3

    .line 277
    invoke-static {v0, v13, v13, v4, v13}, Landroidx/compose/animation/AnimationModifierKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    sget v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0;->a:F

    .line 282
    .line 283
    invoke-static {v4, v6, v5, v13}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA$default(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0$a;

    .line 288
    .line 289
    invoke-direct {v4, v12, v3, v10, v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c0$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 290
    .line 291
    .line 292
    const v5, 0x5c9927fd

    .line 293
    .line 294
    .line 295
    invoke-static {v15, v5, v8, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 296
    .line 297
    .line 298
    move-result-object v16

    .line 299
    shr-int/lit8 v4, v7, 0xc

    .line 300
    .line 301
    and-int/lit8 v4, v4, 0xe

    .line 302
    .line 303
    const/high16 v5, 0x36000000

    .line 304
    .line 305
    or-int v17, v4, v5

    .line 306
    .line 307
    const/16 v18, 0x0

    .line 308
    .line 309
    const/16 v19, 0xfc

    .line 310
    .line 311
    const/4 v6, 0x0

    .line 312
    const/4 v7, 0x0

    .line 313
    const/4 v8, 0x0

    .line 314
    const/4 v9, 0x0

    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    move-object/from16 v4, p5

    .line 318
    .line 319
    move-object v5, v0

    .line 320
    move-wide/from16 v21, v10

    .line 321
    .line 322
    move-object/from16 v10, v20

    .line 323
    .line 324
    move-object/from16 v11, v18

    .line 325
    .line 326
    move-object v0, v12

    .line 327
    move-object v12, v13

    .line 328
    move-object/from16 v13, v16

    .line 329
    .line 330
    move-object/from16 v18, v14

    .line 331
    .line 332
    move-object v14, v15

    .line 333
    move-object/from16 v20, v15

    .line 334
    .line 335
    move/from16 v15, v17

    .line 336
    .line 337
    move/from16 v16, v19

    .line 338
    .line 339
    invoke-static/range {v4 .. v16}, Landroidx/compose/material/ButtonKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_18

    .line 347
    .line 348
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 349
    .line 350
    .line 351
    :cond_18
    move-object v9, v0

    .line 352
    move-wide/from16 v4, v21

    .line 353
    .line 354
    :goto_f
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    if-eqz v10, :cond_19

    .line 359
    .line 360
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/b0;

    .line 361
    .line 362
    move-object v0, v11

    .line 363
    move-object/from16 v1, v18

    .line 364
    .line 365
    move-object v2, v9

    .line 366
    move-object/from16 v3, p2

    .line 367
    .line 368
    move-object/from16 v6, p5

    .line 369
    .line 370
    move/from16 v7, p7

    .line 371
    .line 372
    move/from16 v8, p8

    .line 373
    .line 374
    invoke-direct/range {v0 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/b0;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;II)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 378
    .line 379
    .line 380
    :cond_19
    return-void
.end method
