.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLifecycleAwareAdCountdownButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,59:1\n473#2,4:60\n477#2,2:68\n481#2:74\n25#3:64\n1057#4,3:65\n1060#4,3:71\n1057#4,6:75\n1057#4,6:81\n473#5:70\n76#6:87\n76#6:88\n*S KotlinDebug\n*F\n+ 1 LifecycleAwareAdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/LifecycleAwareAdCountdownButtonKt\n*L\n35#1:60,4\n35#1:68,2\n35#1:74\n35#1:64\n35#1:65,3\n35#1:71,3\n37#1:75,6\n43#1:81,6\n35#1:70\n37#1:87\n41#1:88\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lms/n;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lms/n;

    .line 6
    .line 7
    invoke-virtual {p0}, Lms/n;->g()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final b(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    .line 1
    or-int/lit8 v10, p9, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p10

    .line 17
    .line 18
    invoke-static/range {v0 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t;->c(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object v0
.end method

.method public static final c(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p0    # Landroidx/compose/foundation/layout/BoxScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p<",
            "Lms/n;",
            ">;ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p4

    .line 6
    .line 7
    move-object/from16 v14, p5

    .line 8
    .line 9
    move-object/from16 v15, p6

    .line 10
    .line 11
    move-object/from16 v10, p7

    .line 12
    .line 13
    move/from16 v9, p10

    .line 14
    .line 15
    const-string v0, "<this>"

    .line 16
    .line 17
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "initialSecondsLeft"

    .line 21
    .line 22
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "onCountdownFinished"

    .line 26
    .line 27
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "onClick"

    .line 31
    .line 32
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "onButtonRendered"

    .line 36
    .line 37
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "basedOnAdCountdownButton"

    .line 41
    .line 42
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const v0, 0x28e388d0

    .line 46
    .line 47
    .line 48
    move-object/from16 v1, p9

    .line 49
    .line 50
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    and-int/lit8 v1, v9, 0x6

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    const/4 v1, 0x4

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x2

    .line 67
    :goto_0
    or-int/2addr v1, v9

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v1, v9

    .line 70
    :goto_1
    and-int/lit8 v2, v9, 0x30

    .line 71
    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const/16 v2, 0x20

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const/16 v2, 0x10

    .line 84
    .line 85
    :goto_2
    or-int/2addr v1, v2

    .line 86
    :cond_3
    and-int/lit16 v2, v9, 0x180

    .line 87
    .line 88
    move/from16 v7, p2

    .line 89
    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    const/16 v2, 0x100

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/16 v2, 0x80

    .line 102
    .line 103
    :goto_3
    or-int/2addr v1, v2

    .line 104
    :cond_5
    and-int/lit16 v2, v9, 0xc00

    .line 105
    .line 106
    move/from16 v6, p3

    .line 107
    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    const/16 v2, 0x800

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    const/16 v2, 0x400

    .line 120
    .line 121
    :goto_4
    or-int/2addr v1, v2

    .line 122
    :cond_7
    and-int/lit16 v2, v9, 0x6000

    .line 123
    .line 124
    if-nez v2, :cond_9

    .line 125
    .line 126
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_8

    .line 131
    .line 132
    const/16 v2, 0x4000

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    const/16 v2, 0x2000

    .line 136
    .line 137
    :goto_5
    or-int/2addr v1, v2

    .line 138
    :cond_9
    const/high16 v2, 0x30000

    .line 139
    .line 140
    and-int/2addr v2, v9

    .line 141
    if-nez v2, :cond_b

    .line 142
    .line 143
    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_a

    .line 148
    .line 149
    const/high16 v2, 0x20000

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_a
    const/high16 v2, 0x10000

    .line 153
    .line 154
    :goto_6
    or-int/2addr v1, v2

    .line 155
    :cond_b
    const/high16 v2, 0x180000

    .line 156
    .line 157
    and-int/2addr v2, v9

    .line 158
    if-nez v2, :cond_d

    .line 159
    .line 160
    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_c

    .line 165
    .line 166
    const/high16 v2, 0x100000

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_c
    const/high16 v2, 0x80000

    .line 170
    .line 171
    :goto_7
    or-int/2addr v1, v2

    .line 172
    :cond_d
    const/high16 v2, 0xc00000

    .line 173
    .line 174
    and-int/2addr v2, v9

    .line 175
    if-nez v2, :cond_f

    .line 176
    .line 177
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_e

    .line 182
    .line 183
    const/high16 v2, 0x800000

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_e
    const/high16 v2, 0x400000

    .line 187
    .line 188
    :goto_8
    or-int/2addr v1, v2

    .line 189
    :cond_f
    const/high16 v2, 0x6000000

    .line 190
    .line 191
    and-int/2addr v2, v9

    .line 192
    move/from16 v5, p8

    .line 193
    .line 194
    if-nez v2, :cond_11

    .line 195
    .line 196
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_10

    .line 201
    .line 202
    const/high16 v2, 0x4000000

    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_10
    const/high16 v2, 0x2000000

    .line 206
    .line 207
    :goto_9
    or-int/2addr v1, v2

    .line 208
    :cond_11
    move v4, v1

    .line 209
    const v1, 0x2492493

    .line 210
    .line 211
    .line 212
    and-int/2addr v1, v4

    .line 213
    const v2, 0x2492492

    .line 214
    .line 215
    .line 216
    if-ne v1, v2, :cond_13

    .line 217
    .line 218
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_12

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    move-object/from16 v18, v8

    .line 229
    .line 230
    goto/16 :goto_b

    .line 231
    .line 232
    :cond_13
    :goto_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_14

    .line 237
    .line 238
    const/4 v1, -0x1

    .line 239
    const-string v2, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.LifecycleAwareAdCountdownButton (LifecycleAwareAdCountdownButton.kt:33)"

    .line 240
    .line 241
    invoke-static {v0, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_14
    const v0, 0x2e20b340

    .line 245
    .line 246
    .line 247
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 248
    .line 249
    .line 250
    const v0, -0x1d58f75c

    .line 251
    .line 252
    .line 253
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 261
    .line 262
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-ne v0, v1, :cond_15

    .line 267
    .line 268
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 269
    .line 270
    invoke-static {v0, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 275
    .line 276
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    move-object v0, v1

    .line 283
    :cond_15
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 284
    .line 285
    .line 286
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 287
    .line 288
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 293
    .line 294
    .line 295
    const v1, 0x42a2a470

    .line 296
    .line 297
    .line 298
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-nez v1, :cond_16

    .line 310
    .line 311
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    if-ne v2, v1, :cond_17

    .line 316
    .line 317
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;->a()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Lms/n;

    .line 322
    .line 323
    invoke-virtual {v1}, Lms/n;->g()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-static {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g;->b(ILgt/g0;)Lkt/i;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    :cond_17
    move-object v1, v2

    .line 335
    check-cast v1, Lkt/i;

    .line 336
    .line 337
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 338
    .line 339
    .line 340
    const/4 v0, 0x0

    .line 341
    const/16 v17, 0x7

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    const/4 v3, 0x0

    .line 345
    const/16 v18, 0x0

    .line 346
    .line 347
    move/from16 v19, v4

    .line 348
    .line 349
    move-object/from16 v4, v18

    .line 350
    .line 351
    move-object v5, v8

    .line 352
    move v6, v0

    .line 353
    move/from16 v7, v17

    .line 354
    .line 355
    invoke-static/range {v1 .. v7}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkt/i;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    move/from16 v1, v19

    .line 360
    .line 361
    shr-int/lit8 v2, v1, 0xc

    .line 362
    .line 363
    and-int/lit8 v2, v2, 0xe

    .line 364
    .line 365
    invoke-static {v13, v8, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 370
    .line 371
    const v4, 0x42a2c2ac

    .line 372
    .line 373
    .line 374
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    or-int/2addr v4, v5

    .line 386
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    if-nez v4, :cond_18

    .line 391
    .line 392
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    if-ne v5, v4, :cond_19

    .line 397
    .line 398
    :cond_18
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t$a;

    .line 399
    .line 400
    const/4 v4, 0x0

    .line 401
    invoke-direct {v5, v0, v2, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t$a;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 408
    .line 409
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 410
    .line 411
    .line 412
    const/4 v2, 0x6

    .line 413
    invoke-static {v3, v5, v8, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 414
    .line 415
    .line 416
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;->a()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t;->a(Landroidx/compose/runtime/State;)I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    invoke-static {v0}, Lms/n;->a(I)Lms/n;

    .line 437
    .line 438
    .line 439
    move-result-object v16

    .line 440
    and-int/lit8 v0, v1, 0xe

    .line 441
    .line 442
    shr-int/lit8 v4, v1, 0x6

    .line 443
    .line 444
    and-int/lit8 v5, v4, 0x70

    .line 445
    .line 446
    or-int/2addr v0, v5

    .line 447
    and-int/lit16 v5, v1, 0x380

    .line 448
    .line 449
    or-int/2addr v0, v5

    .line 450
    and-int/lit16 v5, v4, 0x1c00

    .line 451
    .line 452
    or-int/2addr v0, v5

    .line 453
    const v5, 0xe000

    .line 454
    .line 455
    .line 456
    and-int/2addr v4, v5

    .line 457
    or-int/2addr v0, v4

    .line 458
    shr-int/lit8 v4, v1, 0x9

    .line 459
    .line 460
    const/high16 v5, 0x70000

    .line 461
    .line 462
    and-int/2addr v4, v5

    .line 463
    or-int/2addr v0, v4

    .line 464
    shl-int/lit8 v1, v1, 0x3

    .line 465
    .line 466
    const/high16 v4, 0xe000000

    .line 467
    .line 468
    and-int/2addr v1, v4

    .line 469
    or-int/2addr v0, v1

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v17

    .line 474
    move-object/from16 v0, p7

    .line 475
    .line 476
    move-object/from16 v1, p0

    .line 477
    .line 478
    move-object/from16 v4, p5

    .line 479
    .line 480
    move-object/from16 v5, p6

    .line 481
    .line 482
    move-object/from16 v18, v8

    .line 483
    .line 484
    move-object/from16 v8, v16

    .line 485
    .line 486
    move-object/from16 v9, v18

    .line 487
    .line 488
    move-object/from16 v10, v17

    .line 489
    .line 490
    invoke-interface/range {v0 .. v10}, Lat/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_1a

    .line 498
    .line 499
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 500
    .line 501
    .line 502
    :cond_1a
    :goto_b
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    if-eqz v10, :cond_1b

    .line 507
    .line 508
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/g0;

    .line 509
    .line 510
    move-object v0, v9

    .line 511
    move-object/from16 v1, p0

    .line 512
    .line 513
    move-object/from16 v2, p1

    .line 514
    .line 515
    move/from16 v3, p2

    .line 516
    .line 517
    move/from16 v4, p3

    .line 518
    .line 519
    move-object/from16 v5, p4

    .line 520
    .line 521
    move-object/from16 v6, p5

    .line 522
    .line 523
    move-object/from16 v7, p6

    .line 524
    .line 525
    move-object/from16 v8, p7

    .line 526
    .line 527
    move-object v11, v9

    .line 528
    move/from16 v9, p8

    .line 529
    .line 530
    move-object v12, v10

    .line 531
    move/from16 v10, p10

    .line 532
    .line 533
    invoke-direct/range {v0 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/g0;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZI)V

    .line 534
    .line 535
    .line 536
    invoke-interface {v12, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 537
    .line 538
    .line 539
    :cond_1b
    return-void
.end method

.method public static final d(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function0<",
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
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t;->a(Landroidx/compose/runtime/State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t;->d(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
