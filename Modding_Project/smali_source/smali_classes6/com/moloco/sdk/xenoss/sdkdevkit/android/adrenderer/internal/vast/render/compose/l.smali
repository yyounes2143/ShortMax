.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastIconKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,45:1\n1057#2,6:46\n155#3:52\n*S KotlinDebug\n*F\n+ 1 VastIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastIconKt\n*L\n20#1:46,6\n44#1:52\n*E\n"
    }
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x30

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
    sput v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/l;->a:F

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
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
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/l;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
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
    const-string v0, "resource"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "onDisplayed"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "onClick"

    .line 20
    .line 21
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v0, -0x714317d3

    .line 25
    .line 26
    .line 27
    move-object/from16 v3, p4

    .line 28
    .line 29
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    and-int/lit8 v3, p6, 0x1

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    or-int/lit8 v3, v11, 0x6

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    and-int/lit8 v3, v11, 0x6

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x2

    .line 53
    :goto_0
    or-int/2addr v3, v11

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v3, v11

    .line 56
    :goto_1
    and-int/lit8 v4, p6, 0x2

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    or-int/lit8 v3, v3, 0x30

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    and-int/lit8 v4, v11, 0x30

    .line 64
    .line 65
    if-nez v4, :cond_5

    .line 66
    .line 67
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    const/16 v4, 0x20

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/16 v4, 0x10

    .line 77
    .line 78
    :goto_2
    or-int/2addr v3, v4

    .line 79
    :cond_5
    :goto_3
    and-int/lit8 v4, p6, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    or-int/lit16 v3, v3, 0x180

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    and-int/lit16 v4, v11, 0x180

    .line 87
    .line 88
    if-nez v4, :cond_8

    .line 89
    .line 90
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    const/16 v4, 0x100

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    const/16 v4, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v3, v4

    .line 102
    :cond_8
    :goto_5
    and-int/lit8 v4, p6, 0x8

    .line 103
    .line 104
    if-eqz v4, :cond_a

    .line 105
    .line 106
    or-int/lit16 v3, v3, 0xc00

    .line 107
    .line 108
    :cond_9
    move-object/from16 v5, p3

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_a
    and-int/lit16 v5, v11, 0xc00

    .line 112
    .line 113
    if-nez v5, :cond_9

    .line 114
    .line 115
    move-object/from16 v5, p3

    .line 116
    .line 117
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_b

    .line 122
    .line 123
    const/16 v6, 0x800

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_b
    const/16 v6, 0x400

    .line 127
    .line 128
    :goto_6
    or-int/2addr v3, v6

    .line 129
    :goto_7
    and-int/lit16 v6, v3, 0x493

    .line 130
    .line 131
    const/16 v7, 0x492

    .line 132
    .line 133
    if-ne v6, v7, :cond_d

    .line 134
    .line 135
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_c

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    move-object v4, v5

    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :cond_d
    :goto_8
    if-eqz v4, :cond_e

    .line 149
    .line 150
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 151
    .line 152
    move-object/from16 v20, v4

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_e
    move-object/from16 v20, v5

    .line 156
    .line 157
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_f

    .line 162
    .line 163
    const/4 v4, -0x1

    .line 164
    const-string v5, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastIcon (VastIcon.kt:18)"

    .line 165
    .line 166
    invoke-static {v0, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    const v3, 0x5d7c3f0a

    .line 172
    .line 173
    .line 174
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    if-nez v3, :cond_10

    .line 186
    .line 187
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 188
    .line 189
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-ne v4, v3, :cond_11

    .line 194
    .line 195
    :cond_10
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/l$a;

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-direct {v4, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/l$a;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 205
    .line 206
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 207
    .line 208
    .line 209
    const/4 v3, 0x6

    .line 210
    invoke-static {v0, v4, v12, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 211
    .line 212
    .line 213
    sget v17, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/l;->a:F

    .line 214
    .line 215
    const/16 v18, 0x3

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    const/4 v14, 0x0

    .line 220
    const/4 v15, 0x0

    .line 221
    move-object/from16 v13, v20

    .line 222
    .line 223
    move/from16 v16, v17

    .line 224
    .line 225
    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    instance-of v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;

    .line 230
    .line 231
    const/4 v13, 0x0

    .line 232
    if-eqz v0, :cond_12

    .line 233
    .line 234
    const v0, 0x520f648d

    .line 235
    .line 236
    .line 237
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 238
    .line 239
    .line 240
    move-object v0, v1

    .line 241
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;

    .line 242
    .line 243
    invoke-static {v0, v3, v12, v13, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/q0;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 247
    .line 248
    .line 249
    goto :goto_a

    .line 250
    :cond_12
    instance-of v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;

    .line 251
    .line 252
    if-eqz v0, :cond_15

    .line 253
    .line 254
    const v0, 0x521213e1

    .line 255
    .line 256
    .line 257
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 258
    .line 259
    .line 260
    const/4 v8, 0x7

    .line 261
    const/4 v9, 0x0

    .line 262
    const/4 v4, 0x0

    .line 263
    const/4 v5, 0x0

    .line 264
    const/4 v6, 0x0

    .line 265
    move-object/from16 v7, p2

    .line 266
    .line 267
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    move-object v3, v1

    .line 272
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;

    .line 273
    .line 274
    invoke-static {v3, v0, v12, v13, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/s0;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 275
    .line 276
    .line 277
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 278
    .line 279
    .line 280
    :goto_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_13

    .line 285
    .line 286
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 287
    .line 288
    .line 289
    :cond_13
    move-object/from16 v4, v20

    .line 290
    .line 291
    :goto_b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    if-eqz v7, :cond_14

    .line 296
    .line 297
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/d0;

    .line 298
    .line 299
    move-object v0, v8

    .line 300
    move-object/from16 v1, p0

    .line 301
    .line 302
    move-object/from16 v2, p1

    .line 303
    .line 304
    move-object/from16 v3, p2

    .line 305
    .line 306
    move/from16 v5, p5

    .line 307
    .line 308
    move/from16 v6, p6

    .line 309
    .line 310
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/d0;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 314
    .line 315
    .line 316
    :cond_14
    return-void

    .line 317
    :cond_15
    const v0, 0x5d7c57d2

    .line 318
    .line 319
    .line 320
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 327
    .line 328
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 329
    .line 330
    .line 331
    throw v0
.end method
