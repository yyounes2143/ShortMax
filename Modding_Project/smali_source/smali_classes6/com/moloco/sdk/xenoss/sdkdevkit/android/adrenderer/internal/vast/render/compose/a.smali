.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCompanion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Companion.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/CompanionKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,98:1\n1057#2,6:99\n1057#2,6:105\n1057#2,6:111\n1057#2,6:117\n68#3,5:123\n73#3:154\n77#3:159\n75#4:128\n76#4,11:130\n89#4:158\n76#5:129\n460#6,13:141\n473#6,3:155\n62#7,5:160\n76#8:165\n*S KotlinDebug\n*F\n+ 1 Companion.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/CompanionKt\n*L\n32#1:99,6\n38#1:105,6\n50#1:111,6\n59#1:117,6\n76#1:123,5\n76#1:154\n76#1:159\n76#1:128\n76#1:130,11\n76#1:158\n76#1:129\n76#1:141,13\n76#1:155,3\n39#1:160,5\n44#1:165\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    .line 1
    const-string v0, "$this$DisposableEffect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$d;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$d;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public static final b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;
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

.method public static final c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    .line 1
    or-int/lit8 v4, p3, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p5

    .line 7
    move v5, p4

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p4, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a;->f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 7
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;
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
    .param p3    # Landroidx/compose/runtime/Composer;
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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "viewModel"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const v0, -0x3c6b71e6

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    and-int/lit8 v1, p5, 0x1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p4, 0x6

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit8 v1, p4, 0x6

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x2

    .line 34
    :goto_0
    or-int/2addr v1, p4

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v1, p4

    .line 37
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    or-int/lit8 v1, v1, 0x30

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    and-int/lit8 v2, p4, 0x30

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v2, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v1, v2

    .line 60
    :cond_5
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    or-int/lit16 v1, v1, 0x180

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v3, p4, 0x180

    .line 68
    .line 69
    if-nez v3, :cond_8

    .line 70
    .line 71
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_7

    .line 76
    .line 77
    const/16 v3, 0x100

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_7
    const/16 v3, 0x80

    .line 81
    .line 82
    :goto_4
    or-int/2addr v1, v3

    .line 83
    :cond_8
    :goto_5
    and-int/lit16 v3, v1, 0x93

    .line 84
    .line 85
    const/16 v4, 0x92

    .line 86
    .line 87
    if-ne v3, v4, :cond_b

    .line 88
    .line 89
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_9

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 97
    .line 98
    .line 99
    :cond_a
    :goto_6
    move-object v4, p2

    .line 100
    goto/16 :goto_9

    .line 101
    .line 102
    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    .line 103
    .line 104
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 105
    .line 106
    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_d

    .line 111
    .line 112
    const/4 v2, -0x1

    .line 113
    const-string v3, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.Companion (Companion.kt:30)"

    .line 114
    .line 115
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    const v1, -0x700a9772

    .line 121
    .line 122
    .line 123
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v3, 0x0

    .line 135
    if-nez v1, :cond_e

    .line 136
    .line 137
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-ne v2, v1, :cond_f

    .line 144
    .line 145
    :cond_e
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$a;

    .line 146
    .line 147
    invoke-direct {v2, p0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lrs/c;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 154
    .line 155
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 156
    .line 157
    .line 158
    const/4 v1, 0x6

    .line 159
    invoke-static {v0, v2, p3, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 160
    .line 161
    .line 162
    const v2, -0x700a8691

    .line 163
    .line 164
    .line 165
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-nez v2, :cond_10

    .line 177
    .line 178
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-ne v4, v2, :cond_11

    .line 185
    .line 186
    :cond_10
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/b;

    .line 187
    .line 188
    invoke-direct {v4, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 195
    .line 196
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v4, p3, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;->q()Lkt/i;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const/4 v2, 0x0

    .line 207
    const/4 v4, 0x1

    .line 208
    invoke-static {v1, v3, p3, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a;->b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    instance-of v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;

    .line 217
    .line 218
    if-eqz v4, :cond_14

    .line 219
    .line 220
    const v4, 0x6ebd5b6a

    .line 221
    .line 222
    .line 223
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 224
    .line 225
    .line 226
    const v4, -0x700a5e24

    .line 227
    .line 228
    .line 229
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 230
    .line 231
    .line 232
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    if-nez v4, :cond_12

    .line 241
    .line 242
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 243
    .line 244
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-ne v5, v4, :cond_13

    .line 249
    .line 250
    :cond_12
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$b;

    .line 251
    .line 252
    invoke-direct {v5, p0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lrs/c;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_13
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 259
    .line 260
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 261
    .line 262
    .line 263
    invoke-static {p2, v0, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;

    .line 268
    .line 269
    invoke-static {v1, v0, p3, v2, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/q0;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 270
    .line 271
    .line 272
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 273
    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_14
    instance-of v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;

    .line 277
    .line 278
    if-eqz v4, :cond_17

    .line 279
    .line 280
    const v4, 0x6ec33213

    .line 281
    .line 282
    .line 283
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 284
    .line 285
    .line 286
    const v4, -0x700a2ed4

    .line 287
    .line 288
    .line 289
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 290
    .line 291
    .line 292
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    or-int/2addr v4, v5

    .line 301
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    if-nez v4, :cond_15

    .line 306
    .line 307
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 308
    .line 309
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    if-ne v5, v4, :cond_16

    .line 314
    .line 315
    :cond_15
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$c;

    .line 316
    .line 317
    invoke-direct {v5, p0, p1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_16
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 324
    .line 325
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 326
    .line 327
    .line 328
    invoke-static {p2, v0, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;

    .line 333
    .line 334
    invoke-static {v1, v0, p3, v2, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a;->f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 335
    .line 336
    .line 337
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_17
    if-nez v1, :cond_19

    .line 342
    .line 343
    const v0, 0x6ec9badd

    .line 344
    .line 345
    .line 346
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 347
    .line 348
    .line 349
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 350
    .line 351
    .line 352
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_a

    .line 357
    .line 358
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_6

    .line 362
    .line 363
    :goto_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    if-eqz p2, :cond_18

    .line 368
    .line 369
    new-instance p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c;

    .line 370
    .line 371
    move-object v1, p3

    .line 372
    move-object v2, p0

    .line 373
    move-object v3, p1

    .line 374
    move v5, p4

    .line 375
    move v6, p5

    .line 376
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/j;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    .line 377
    .line 378
    .line 379
    invoke-interface {p2, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 380
    .line 381
    .line 382
    :cond_18
    return-void

    .line 383
    :cond_19
    const p0, -0x700a6dfb

    .line 384
    .line 385
    .line 386
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 387
    .line 388
    .line 389
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 390
    .line 391
    .line 392
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 393
    .line 394
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 395
    .line 396
    .line 397
    throw p0
.end method

.method public static final f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 11
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    const v1, 0x7d59cf22

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    and-int/lit8 v2, p4, 0x1

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    or-int/lit8 v2, p3, 0x6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    and-int/lit8 v2, p3, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v3

    .line 30
    :goto_0
    or-int/2addr v2, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v2, p3

    .line 33
    :goto_1
    and-int/lit8 v4, p4, 0x2

    .line 34
    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    or-int/lit8 v2, v2, 0x30

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v5, p3, 0x30

    .line 41
    .line 42
    if-nez v5, :cond_5

    .line 43
    .line 44
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    const/16 v5, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const/16 v5, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v2, v5

    .line 56
    :cond_5
    :goto_3
    and-int/lit8 v5, v2, 0x13

    .line 57
    .line 58
    const/16 v6, 0x12

    .line 59
    .line 60
    if-ne v5, v6, :cond_7

    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 75
    .line 76
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 77
    .line 78
    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_9

    .line 83
    .line 84
    const/4 v4, -0x1

    .line 85
    const-string v5, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.CompanionVastResourceImage (Companion.kt:74)"

    .line 86
    .line 87
    invoke-static {v1, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_9
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const v4, 0x2bb5b5d7

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-static {v1, v4, p2, v0}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, -0x4ee9b9da

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 122
    .line 123
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 132
    .line 133
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 142
    .line 143
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 144
    .line 145
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    if-nez v10, :cond_a

    .line 158
    .line 159
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 160
    .line 161
    .line 162
    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 163
    .line 164
    .line 165
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_b

    .line 170
    .line 171
    invoke-interface {p2, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_b
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 176
    .line 177
    .line 178
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 179
    .line 180
    .line 181
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-static {v8, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v8, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 214
    .line 215
    .line 216
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-interface {v9, v0, p2, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const v0, 0x7ab4aae9

    .line 232
    .line 233
    .line 234
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 235
    .line 236
    .line 237
    const v0, -0x7f65a980

    .line 238
    .line 239
    .line 240
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 241
    .line 242
    .line 243
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 244
    .line 245
    and-int/lit8 v0, v2, 0xe

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    invoke-static {p0, v1, p2, v0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/s0;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 249
    .line 250
    .line 251
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 252
    .line 253
    .line 254
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 255
    .line 256
    .line 257
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 258
    .line 259
    .line 260
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 261
    .line 262
    .line 263
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 264
    .line 265
    .line 266
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_c

    .line 271
    .line 272
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 273
    .line 274
    .line 275
    :cond_c
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    if-eqz p2, :cond_d

    .line 280
    .line 281
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/d;

    .line 282
    .line 283
    invoke-direct {v0, p0, p1, p3, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/d;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;II)V

    .line 284
    .line 285
    .line 286
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 287
    .line 288
    .line 289
    :cond_d
    return-void
.end method
