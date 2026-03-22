.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivityKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,237:1\n1057#2,6:238\n1057#2,6:245\n1#3:244\n*S KotlinDebug\n*F\n+ 1 VastActivity.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastActivityKt\n*L\n231#1:238,6\n234#1:245,6\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/view/View;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final b(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    .line 1
    or-int/lit8 v5, p4, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p6

    .line 8
    move v6, p5

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c;->c(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final c(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p5

    .line 8
    .line 9
    const v0, 0x6e5796e9

    .line 10
    .line 11
    .line 12
    move-object/from16 v3, p4

    .line 13
    .line 14
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v6, p6, v6

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    or-int/lit8 v6, v5, 0x6

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    and-int/lit8 v6, v5, 0x6

    .line 28
    .line 29
    if-nez v6, :cond_2

    .line 30
    .line 31
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v6, 0x2

    .line 40
    :goto_0
    or-int/2addr v6, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v6, v5

    .line 43
    :goto_1
    and-int/lit8 v7, p6, 0x1

    .line 44
    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    or-int/lit8 v6, v6, 0x30

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    and-int/lit8 v7, v5, 0x30

    .line 51
    .line 52
    if-nez v7, :cond_5

    .line 53
    .line 54
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    const/16 v7, 0x20

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const/16 v7, 0x10

    .line 64
    .line 65
    :goto_2
    or-int/2addr v6, v7

    .line 66
    :cond_5
    :goto_3
    and-int/lit16 v7, v5, 0x180

    .line 67
    .line 68
    if-nez v7, :cond_8

    .line 69
    .line 70
    and-int/lit8 v7, p6, 0x2

    .line 71
    .line 72
    if-nez v7, :cond_6

    .line 73
    .line 74
    move-object/from16 v7, p2

    .line 75
    .line 76
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_7

    .line 81
    .line 82
    const/16 v8, 0x100

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    move-object/from16 v7, p2

    .line 86
    .line 87
    :cond_7
    const/16 v8, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v6, v8

    .line 90
    goto :goto_5

    .line 91
    :cond_8
    move-object/from16 v7, p2

    .line 92
    .line 93
    :goto_5
    and-int/lit8 v8, p6, 0x4

    .line 94
    .line 95
    if-eqz v8, :cond_9

    .line 96
    .line 97
    or-int/lit16 v6, v6, 0xc00

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_9
    and-int/lit16 v8, v5, 0xc00

    .line 101
    .line 102
    if-nez v8, :cond_b

    .line 103
    .line 104
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_a

    .line 109
    .line 110
    const/16 v8, 0x800

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_a
    const/16 v8, 0x400

    .line 114
    .line 115
    :goto_6
    or-int/2addr v6, v8

    .line 116
    :cond_b
    :goto_7
    and-int/lit16 v8, v6, 0x493

    .line 117
    .line 118
    const/16 v9, 0x492

    .line 119
    .line 120
    if-ne v8, v9, :cond_d

    .line 121
    .line 122
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_c

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 130
    .line 131
    .line 132
    move-object v12, v7

    .line 133
    goto/16 :goto_d

    .line 134
    .line 135
    :cond_d
    :goto_8
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 136
    .line 137
    .line 138
    and-int/lit8 v8, v5, 0x1

    .line 139
    .line 140
    if-eqz v8, :cond_10

    .line 141
    .line 142
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_e

    .line 147
    .line 148
    goto :goto_a

    .line 149
    :cond_e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 150
    .line 151
    .line 152
    and-int/lit8 v8, p6, 0x2

    .line 153
    .line 154
    if-eqz v8, :cond_f

    .line 155
    .line 156
    :goto_9
    and-int/lit16 v6, v6, -0x381

    .line 157
    .line 158
    :cond_f
    move v13, v6

    .line 159
    move-object v12, v7

    .line 160
    goto :goto_b

    .line 161
    :cond_10
    :goto_a
    and-int/lit8 v8, p6, 0x2

    .line 162
    .line 163
    if-eqz v8, :cond_f

    .line 164
    .line 165
    const/16 v20, 0x3ff

    .line 166
    .line 167
    const/16 v21, 0x0

    .line 168
    .line 169
    const-wide/16 v9, 0x0

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v12, 0x0

    .line 173
    const/4 v13, 0x0

    .line 174
    const/4 v14, 0x0

    .line 175
    const/4 v15, 0x0

    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    const/16 v19, 0x0

    .line 183
    .line 184
    invoke-static/range {v9 .. v21}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->h(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;ILjava/lang/Object;)Lkotlin/jvm/functions/Function2;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    goto :goto_9

    .line 189
    :goto_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 190
    .line 191
    .line 192
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_11

    .line 197
    .line 198
    const/4 v6, -0x1

    .line 199
    const-string v7, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastView (VastActivity.kt:227)"

    .line 200
    .line 201
    invoke-static {v0, v13, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_11
    const v0, 0x5c242a96

    .line 205
    .line 206
    .line 207
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 208
    .line 209
    .line 210
    const v0, 0x5c24259c

    .line 211
    .line 212
    .line 213
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    or-int/2addr v0, v6

    .line 225
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    if-nez v0, :cond_12

    .line 230
    .line 231
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-ne v6, v0, :cond_13

    .line 238
    .line 239
    :cond_12
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/d;

    .line 240
    .line 241
    invoke-direct {v6, v12, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/d;-><init>(Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_13
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 248
    .line 249
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 250
    .line 251
    .line 252
    const/4 v10, 0x0

    .line 253
    const/4 v11, 0x6

    .line 254
    const/4 v7, 0x0

    .line 255
    const/4 v8, 0x0

    .line 256
    move-object v9, v3

    .line 257
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 258
    .line 259
    .line 260
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 261
    .line 262
    const v6, 0x5c242d93

    .line 263
    .line 264
    .line 265
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 266
    .line 267
    .line 268
    const/4 v6, 0x1

    .line 269
    if-nez v4, :cond_14

    .line 270
    .line 271
    goto :goto_c

    .line 272
    :cond_14
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c$a;

    .line 273
    .line 274
    invoke-direct {v7, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c$a;-><init>(Lkotlin/Unit;)V

    .line 275
    .line 276
    .line 277
    const v0, 0x3e071738    # 0.13192451f

    .line 278
    .line 279
    .line 280
    invoke-static {v3, v0, v6, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    shr-int/lit8 v7, v13, 0x6

    .line 285
    .line 286
    and-int/lit8 v7, v7, 0x70

    .line 287
    .line 288
    or-int/lit8 v7, v7, 0x6

    .line 289
    .line 290
    invoke-interface {v4, v0, v3, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 291
    .line 292
    .line 293
    :goto_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 294
    .line 295
    .line 296
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 297
    .line 298
    .line 299
    const v0, 0x5c243517

    .line 300
    .line 301
    .line 302
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    if-nez v0, :cond_15

    .line 314
    .line 315
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 316
    .line 317
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    if-ne v7, v0, :cond_16

    .line 322
    .line 323
    :cond_15
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c$b;

    .line 324
    .line 325
    invoke-direct {v7, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c$b;-><init>(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_16
    check-cast v7, Lkotlin/reflect/KFunction;

    .line 332
    .line 333
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 334
    .line 335
    .line 336
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 337
    .line 338
    const/4 v0, 0x0

    .line 339
    invoke-static {v0, v7, v3, v0, v6}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 340
    .line 341
    .line 342
    and-int/lit8 v0, v13, 0xe

    .line 343
    .line 344
    invoke-static {v1, v3, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/s;->b(Landroid/app/Activity;Landroidx/compose/runtime/Composer;I)V

    .line 345
    .line 346
    .line 347
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_17

    .line 352
    .line 353
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 354
    .line 355
    .line 356
    :cond_17
    :goto_d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    if-eqz v7, :cond_18

    .line 361
    .line 362
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/f;

    .line 363
    .line 364
    move-object v0, v8

    .line 365
    move-object/from16 v1, p0

    .line 366
    .line 367
    move-object/from16 v2, p1

    .line 368
    .line 369
    move-object v3, v12

    .line 370
    move-object/from16 v4, p3

    .line 371
    .line 372
    move/from16 v5, p5

    .line 373
    .line 374
    move/from16 v6, p6

    .line 375
    .line 376
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/f;-><init>(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;II)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 380
    .line 381
    .line 382
    :cond_18
    return-void
.end method

.method public static final synthetic d(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/c;->c(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
