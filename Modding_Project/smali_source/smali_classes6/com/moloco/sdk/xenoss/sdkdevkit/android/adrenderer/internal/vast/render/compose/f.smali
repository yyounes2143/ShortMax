.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDEC.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DEC.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/DECKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,56:1\n1057#2,6:57\n1057#2,6:96\n1057#2,6:102\n1057#2,6:108\n1057#2,6:114\n67#3,6:63\n73#3:95\n77#3:124\n75#4:69\n76#4,11:71\n89#4:123\n76#5:70\n460#6,13:82\n473#6,3:120\n76#7:125\n*S KotlinDebug\n*F\n+ 1 DEC.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/DECKt\n*L\n24#1:57,6\n34#1:96,6\n43#1:102,6\n50#1:108,6\n51#1:114,6\n30#1:63,6\n30#1:95\n30#1:124\n30#1:69\n30#1:71,11\n30#1:123\n30#1:70\n30#1:82,13\n30#1:120,3\n47#1:125\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
            ">;)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final b()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;Lkotlin/jvm/functions/Function0;Lat/q;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
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
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;Lkotlin/jvm/functions/Function0;Lat/q;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;Lkotlin/jvm/functions/Function0;Lat/q;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lat/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lat/q<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
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
    move-object/from16 v10, p2

    .line 6
    .line 7
    move/from16 v11, p5

    .line 8
    .line 9
    const-string/jumbo v0, "viewModel"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const v0, -0x2382c005

    .line 16
    .line 17
    .line 18
    move-object/from16 v3, p4

    .line 19
    .line 20
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    and-int/lit8 v3, p6, 0x1

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    or-int/lit8 v3, v11, 0x6

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    and-int/lit8 v3, v11, 0x6

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x2

    .line 44
    :goto_0
    or-int/2addr v3, v11

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v3, v11

    .line 47
    :goto_1
    and-int/lit8 v4, p6, 0x2

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    or-int/lit8 v3, v3, 0x30

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    and-int/lit8 v4, v11, 0x30

    .line 55
    .line 56
    if-nez v4, :cond_5

    .line 57
    .line 58
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    const/16 v4, 0x20

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const/16 v4, 0x10

    .line 68
    .line 69
    :goto_2
    or-int/2addr v3, v4

    .line 70
    :cond_5
    :goto_3
    and-int/lit8 v4, p6, 0x4

    .line 71
    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    or-int/lit16 v3, v3, 0x180

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_6
    and-int/lit16 v4, v11, 0x180

    .line 78
    .line 79
    if-nez v4, :cond_8

    .line 80
    .line 81
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_7

    .line 86
    .line 87
    const/16 v4, 0x100

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const/16 v4, 0x80

    .line 91
    .line 92
    :goto_4
    or-int/2addr v3, v4

    .line 93
    :cond_8
    :goto_5
    and-int/lit8 v4, p6, 0x8

    .line 94
    .line 95
    if-eqz v4, :cond_a

    .line 96
    .line 97
    or-int/lit16 v3, v3, 0xc00

    .line 98
    .line 99
    :cond_9
    move-object/from16 v5, p3

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_a
    and-int/lit16 v5, v11, 0xc00

    .line 103
    .line 104
    if-nez v5, :cond_9

    .line 105
    .line 106
    move-object/from16 v5, p3

    .line 107
    .line 108
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_b

    .line 113
    .line 114
    const/16 v6, 0x800

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_b
    const/16 v6, 0x400

    .line 118
    .line 119
    :goto_6
    or-int/2addr v3, v6

    .line 120
    :goto_7
    and-int/lit16 v6, v3, 0x493

    .line 121
    .line 122
    const/16 v7, 0x492

    .line 123
    .line 124
    if-ne v6, v7, :cond_d

    .line 125
    .line 126
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-nez v6, :cond_c

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 134
    .line 135
    .line 136
    move-object v4, v5

    .line 137
    move-object v12, v9

    .line 138
    goto/16 :goto_c

    .line 139
    .line 140
    :cond_d
    :goto_8
    if-eqz v4, :cond_e

    .line 141
    .line 142
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 143
    .line 144
    move-object/from16 v20, v4

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_e
    move-object/from16 v20, v5

    .line 148
    .line 149
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_f

    .line 154
    .line 155
    const/4 v4, -0x1

    .line 156
    const-string v5, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.DEC (DEC.kt:22)"

    .line 157
    .line 158
    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    const v3, -0x23ec3c3c

    .line 164
    .line 165
    .line 166
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const/4 v5, 0x0

    .line 178
    if-nez v3, :cond_10

    .line 179
    .line 180
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 181
    .line 182
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-ne v4, v3, :cond_11

    .line 187
    .line 188
    :cond_10
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$a;

    .line 189
    .line 190
    invoke-direct {v4, v1, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;Lrs/c;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 199
    .line 200
    .line 201
    const/4 v3, 0x6

    .line 202
    invoke-static {v0, v4, v9, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 203
    .line 204
    .line 205
    const v4, 0x2bb5b5d7

    .line 206
    .line 207
    .line 208
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 209
    .line 210
    .line 211
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const/4 v6, 0x0

    .line 218
    invoke-static {v4, v6, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const v7, -0x4ee9b9da

    .line 223
    .line 224
    .line 225
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 237
    .line 238
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 247
    .line 248
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 257
    .line 258
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 259
    .line 260
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 261
    .line 262
    .line 263
    move-result-object v14

    .line 264
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 269
    .line 270
    .line 271
    move-result-object v16

    .line 272
    if-nez v16, :cond_12

    .line 273
    .line 274
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 275
    .line 276
    .line 277
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 278
    .line 279
    .line 280
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 281
    .line 282
    .line 283
    move-result v16

    .line 284
    if-eqz v16, :cond_13

    .line 285
    .line 286
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 287
    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 291
    .line 292
    .line 293
    :goto_a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 294
    .line 295
    .line 296
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-static {v14, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-static {v14, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-static {v14, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static {v14, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 329
    .line 330
    .line 331
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-interface {v15, v3, v9, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    const v3, 0x7ab4aae9

    .line 347
    .line 348
    .line 349
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 350
    .line 351
    .line 352
    const v3, -0x7f65a980

    .line 353
    .line 354
    .line 355
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 356
    .line 357
    .line 358
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 359
    .line 360
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 361
    .line 362
    const-string v7, "DECContainer"

    .line 363
    .line 364
    invoke-static {v3, v7}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    const v7, 0x1d502154

    .line 369
    .line 370
    .line 371
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    or-int/2addr v7, v8

    .line 383
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    if-nez v7, :cond_14

    .line 388
    .line 389
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 390
    .line 391
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    if-ne v8, v7, :cond_15

    .line 396
    .line 397
    :cond_14
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$b;

    .line 398
    .line 399
    invoke-direct {v8, v2, v1, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$b;-><init>(Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;Lrs/c;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    :cond_15
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 406
    .line 407
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 408
    .line 409
    .line 410
    invoke-static {v3, v0, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 411
    .line 412
    .line 413
    move-result-object v12

    .line 414
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;->l()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v13

    .line 418
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;->g()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v14

    .line 422
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;->H()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    const v0, 0x1d504ea7

    .line 427
    .line 428
    .line 429
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 430
    .line 431
    .line 432
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 437
    .line 438
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    if-ne v0, v7, :cond_16

    .line 443
    .line 444
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/j;

    .line 445
    .line 446
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/j;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    :cond_16
    move-object/from16 v16, v0

    .line 453
    .line 454
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 455
    .line 456
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 457
    .line 458
    .line 459
    const/16 v18, 0x6000

    .line 460
    .line 461
    const/16 v19, 0x0

    .line 462
    .line 463
    move-object/from16 v17, v9

    .line 464
    .line 465
    invoke-static/range {v12 .. v19}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b0;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 466
    .line 467
    .line 468
    const v0, 0x1d50553d

    .line 469
    .line 470
    .line 471
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 472
    .line 473
    .line 474
    if-nez v10, :cond_17

    .line 475
    .line 476
    move-object v12, v9

    .line 477
    goto :goto_b

    .line 478
    :cond_17
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/q;->y()Lkt/i;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const/4 v7, 0x1

    .line 483
    invoke-static {v0, v5, v9, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f;->a(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    const v0, 0x54ded4fc

    .line 492
    .line 493
    .line 494
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 495
    .line 496
    .line 497
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    if-nez v0, :cond_18

    .line 506
    .line 507
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    if-ne v6, v0, :cond_19

    .line 512
    .line 513
    :cond_18
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$c;

    .line 514
    .line 515
    invoke-direct {v6, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$c;-><init>(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    :cond_19
    check-cast v6, Lkotlin/reflect/KFunction;

    .line 522
    .line 523
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 524
    .line 525
    .line 526
    const v0, 0x54dedbd8

    .line 527
    .line 528
    .line 529
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 530
    .line 531
    .line 532
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    if-nez v0, :cond_1a

    .line 541
    .line 542
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    if-ne v7, v0, :cond_1b

    .line 547
    .line 548
    :cond_1a
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$d;

    .line 549
    .line 550
    invoke-direct {v7, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f$d;-><init>(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    :cond_1b
    check-cast v7, Lkotlin/reflect/KFunction;

    .line 557
    .line 558
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 559
    .line 560
    .line 561
    const/4 v0, 0x6

    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    move-object/from16 v3, p2

    .line 567
    .line 568
    move-object v8, v9

    .line 569
    move-object v12, v9

    .line 570
    move-object v9, v0

    .line 571
    invoke-interface/range {v3 .. v9}, Lat/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    :goto_b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 575
    .line 576
    .line 577
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 578
    .line 579
    .line 580
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 581
    .line 582
    .line 583
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 584
    .line 585
    .line 586
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 587
    .line 588
    .line 589
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 590
    .line 591
    .line 592
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_1c

    .line 597
    .line 598
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 599
    .line 600
    .line 601
    :cond_1c
    move-object/from16 v4, v20

    .line 602
    .line 603
    :goto_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    if-eqz v7, :cond_1d

    .line 608
    .line 609
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/k;

    .line 610
    .line 611
    move-object v0, v8

    .line 612
    move-object/from16 v1, p0

    .line 613
    .line 614
    move-object/from16 v2, p1

    .line 615
    .line 616
    move-object/from16 v3, p2

    .line 617
    .line 618
    move/from16 v5, p5

    .line 619
    .line 620
    move/from16 v6, p6

    .line 621
    .line 622
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/k;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/e;Lkotlin/jvm/functions/Function0;Lat/q;Landroidx/compose/ui/Modifier;II)V

    .line 623
    .line 624
    .line 625
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 626
    .line 627
    .line 628
    :cond_1d
    return-void
.end method
