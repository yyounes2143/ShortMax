.class public final Landroidx/compose/ui/window/AndroidDialog_androidKt;
.super Ljava/lang/Object;
.source "AndroidDialog.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/window/DialogProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p4

    .line 6
    .line 7
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "content"

    .line 13
    .line 14
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x792b3ec6

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p3

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    and-int/lit8 v0, p5, 0x1

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    or-int/lit8 v0, v9, 0x6

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v9

    .line 49
    :goto_1
    and-int/lit8 v1, v9, 0x70

    .line 50
    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    and-int/lit8 v1, p5, 0x2

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    move-object/from16 v1, p1

    .line 58
    .line 59
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    const/16 v2, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object/from16 v1, p1

    .line 69
    .line 70
    :cond_4
    const/16 v2, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v0, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    move-object/from16 v1, p1

    .line 75
    .line 76
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    or-int/lit16 v0, v0, 0x180

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_6
    and-int/lit16 v2, v9, 0x380

    .line 84
    .line 85
    if-nez v2, :cond_8

    .line 86
    .line 87
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    const/16 v2, 0x100

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    const/16 v2, 0x80

    .line 97
    .line 98
    :goto_4
    or-int/2addr v0, v2

    .line 99
    :cond_8
    :goto_5
    and-int/lit16 v2, v0, 0x2db

    .line 100
    .line 101
    const/16 v3, 0x92

    .line 102
    .line 103
    if-ne v2, v3, :cond_a

    .line 104
    .line 105
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_9

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    move-object v2, v1

    .line 116
    move-object v15, v6

    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_a
    :goto_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 120
    .line 121
    .line 122
    and-int/lit8 v2, v9, 0x1

    .line 123
    .line 124
    if-eqz v2, :cond_d

    .line 125
    .line 126
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_b

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 134
    .line 135
    .line 136
    and-int/lit8 v2, p5, 0x2

    .line 137
    .line 138
    if-eqz v2, :cond_c

    .line 139
    .line 140
    :goto_7
    and-int/lit8 v0, v0, -0x71

    .line 141
    .line 142
    :cond_c
    move-object v5, v1

    .line 143
    goto :goto_9

    .line 144
    :cond_d
    :goto_8
    and-int/lit8 v2, p5, 0x2

    .line 145
    .line 146
    if-eqz v2, :cond_c

    .line 147
    .line 148
    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    .line 149
    .line 150
    const/4 v14, 0x7

    .line 151
    const/4 v15, 0x0

    .line 152
    const/4 v11, 0x0

    .line 153
    const/4 v12, 0x0

    .line 154
    const/4 v13, 0x0

    .line 155
    move-object v10, v1

    .line 156
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .line 158
    .line 159
    goto :goto_7

    .line 160
    :goto_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    move-object v3, v1

    .line 172
    check-cast v3, Landroid/view/View;

    .line 173
    .line 174
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    move-object v4, v1

    .line 183
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 184
    .line 185
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    move-object v2, v1

    .line 194
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 195
    .line 196
    const/4 v1, 0x0

    .line 197
    invoke-static {v6, v1}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    shr-int/lit8 v0, v0, 0x6

    .line 202
    .line 203
    and-int/lit8 v0, v0, 0xe

    .line 204
    .line 205
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-array v10, v1, [Ljava/lang/Object;

    .line 210
    .line 211
    sget-object v13, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1;

    .line 212
    .line 213
    const/16 v16, 0xc08

    .line 214
    .line 215
    const/16 v17, 0x6

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    const/4 v12, 0x0

    .line 219
    move-object v14, v6

    .line 220
    move-object/from16 v18, v15

    .line 221
    .line 222
    move/from16 v15, v16

    .line 223
    .line 224
    move/from16 v16, v17

    .line 225
    .line 226
    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    check-cast v10, Ljava/util/UUID;

    .line 231
    .line 232
    const v11, 0x1e7b2b64

    .line 233
    .line 234
    .line 235
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    or-int/2addr v11, v12

    .line 247
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    if-nez v11, :cond_f

    .line 252
    .line 253
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 254
    .line 255
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    if-ne v12, v11, :cond_e

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_e
    move-object v14, v2

    .line 263
    move-object v13, v5

    .line 264
    move-object v15, v6

    .line 265
    goto :goto_b

    .line 266
    :cond_f
    :goto_a
    new-instance v12, Landroidx/compose/ui/window/DialogWrapper;

    .line 267
    .line 268
    const-string v11, "dialogId"

    .line 269
    .line 270
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move-object v11, v0

    .line 274
    move-object v0, v12

    .line 275
    move v13, v1

    .line 276
    move-object/from16 v1, p0

    .line 277
    .line 278
    move-object v14, v2

    .line 279
    move-object v2, v5

    .line 280
    move-object v15, v4

    .line 281
    move-object v4, v14

    .line 282
    move-object v13, v5

    .line 283
    move-object v5, v15

    .line 284
    move-object v15, v6

    .line 285
    move-object v6, v10

    .line 286
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/DialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;

    .line 290
    .line 291
    invoke-direct {v0, v11}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 292
    .line 293
    .line 294
    const v1, 0x1d1a4619

    .line 295
    .line 296
    .line 297
    const/4 v2, 0x1

    .line 298
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    move-object/from16 v1, v18

    .line 303
    .line 304
    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/window/DialogWrapper;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :goto_b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 311
    .line 312
    .line 313
    check-cast v12, Landroidx/compose/ui/window/DialogWrapper;

    .line 314
    .line 315
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1;

    .line 316
    .line 317
    invoke-direct {v0, v12}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    .line 318
    .line 319
    .line 320
    const/16 v1, 0x8

    .line 321
    .line 322
    invoke-static {v12, v0, v15, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;

    .line 326
    .line 327
    invoke-direct {v0, v12, v7, v13, v14}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2;-><init>(Landroidx/compose/ui/window/DialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 328
    .line 329
    .line 330
    const/4 v1, 0x0

    .line 331
    invoke-static {v0, v15, v1}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 332
    .line 333
    .line 334
    move-object v2, v13

    .line 335
    :goto_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    if-nez v6, :cond_10

    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_10
    new-instance v10, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    .line 343
    .line 344
    move-object v0, v10

    .line 345
    move-object/from16 v1, p0

    .line 346
    .line 347
    move-object/from16 v3, p2

    .line 348
    .line 349
    move/from16 v4, p4

    .line 350
    .line 351
    move/from16 v5, p5

    .line 352
    .line 353
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;II)V

    .line 354
    .line 355
    .line 356
    invoke-interface {v6, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 357
    .line 358
    .line 359
    :goto_d
    return-void
.end method

.method private static final Dialog$lambda-0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
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

.method private static final DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 9
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
            "II)V"
        }
    .end annotation

    .line 1
    const v0, -0x4634f888

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    and-int/lit8 v0, p4, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    or-int/lit8 v1, p3, 0x6

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    and-int/lit8 v1, p3, 0xe

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, p3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v1, p3

    .line 31
    :goto_1
    and-int/lit8 v2, p4, 0x2

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    or-int/lit8 v1, v1, 0x30

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    and-int/lit8 v2, p3, 0x70

    .line 39
    .line 40
    if-nez v2, :cond_5

    .line 41
    .line 42
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    const/16 v2, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/16 v2, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v1, v2

    .line 54
    :cond_5
    :goto_3
    and-int/lit8 v2, v1, 0x5b

    .line 55
    .line 56
    const/16 v3, 0x12

    .line 57
    .line 58
    if-ne v2, v3, :cond_7

    .line 59
    .line 60
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_6

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 73
    .line 74
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 75
    .line 76
    :cond_8
    sget-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    .line 77
    .line 78
    shr-int/lit8 v2, v1, 0x3

    .line 79
    .line 80
    and-int/lit8 v2, v2, 0xe

    .line 81
    .line 82
    shl-int/lit8 v1, v1, 0x3

    .line 83
    .line 84
    and-int/lit8 v1, v1, 0x70

    .line 85
    .line 86
    or-int/2addr v1, v2

    .line 87
    const v2, -0x4ee9b9da

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 102
    .line 103
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 122
    .line 123
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    shl-int/lit8 v1, v1, 0x9

    .line 134
    .line 135
    and-int/lit16 v1, v1, 0x1c00

    .line 136
    .line 137
    or-int/lit8 v1, v1, 0x6

    .line 138
    .line 139
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    if-nez v8, :cond_9

    .line 144
    .line 145
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 146
    .line 147
    .line 148
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 149
    .line 150
    .line 151
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_a

    .line 156
    .line 157
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 162
    .line 163
    .line 164
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 165
    .line 166
    .line 167
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-static {v6, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 200
    .line 201
    .line 202
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const/4 v2, 0x0

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-interface {v7, v0, p2, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    const v0, 0x7ab4aae9

    .line 219
    .line 220
    .line 221
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 222
    .line 223
    .line 224
    shr-int/lit8 v0, v1, 0x9

    .line 225
    .line 226
    and-int/lit8 v0, v0, 0xe

    .line 227
    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 236
    .line 237
    .line 238
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 239
    .line 240
    .line 241
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 242
    .line 243
    .line 244
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    if-nez p2, :cond_b

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_b
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;

    .line 252
    .line 253
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    :goto_7
    return-void
.end method

.method public static final synthetic access$Dialog$lambda-0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->Dialog$lambda-0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
