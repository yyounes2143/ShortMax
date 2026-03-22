.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastProgressBar.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastProgressBarKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,110:1\n155#2:111\n155#2:130\n1057#3,6:112\n1057#3,6:118\n1057#3,6:124\n1057#3,6:131\n76#4:137\n102#4,2:138\n*S KotlinDebug\n*F\n+ 1 VastProgressBar.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastProgressBarKt\n*L\n32#1:111\n59#1:130\n34#1:112,6\n39#1:118,6\n42#1:124,6\n60#1:131,6\n34#1:137\n34#1:138,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/MutableState;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
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

.method public static final synthetic b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m;->i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final c()Landroidx/compose/runtime/MutableState;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static final d(Landroidx/compose/animation/core/Animatable;FJLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 16

    .line 1
    const-string v0, "$this$drawBehind"

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface/range {p4 .. p4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    mul-float/2addr v0, v2

    .line 27
    invoke-interface/range {p4 .. p4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    move/from16 v0, p1

    .line 40
    .line 41
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    const/16 v14, 0xf2

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    move-wide/from16 v2, p2

    .line 55
    .line 56
    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object v0
.end method

.method public static final e(ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    .line 1
    or-int/lit8 v6, p5, 0x1

    .line 2
    .line 3
    move v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p7

    .line 8
    move v7, p6

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m;->g(ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object v0
.end method

.method public static final f(Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final g(ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p6

    .line 6
    .line 7
    const-string v0, "progress"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x25b9272f

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p5

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    and-int/lit8 v1, p7, 0x1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x4

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    or-int/lit8 v1, v8, 0x6

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    and-int/lit8 v1, v8, 0x6

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v1, v2

    .line 43
    :goto_0
    or-int/2addr v1, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, v8

    .line 46
    :goto_1
    and-int/lit8 v4, p7, 0x2

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    or-int/lit8 v1, v1, 0x30

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    and-int/lit8 v4, v8, 0x30

    .line 54
    .line 55
    if-nez v4, :cond_5

    .line 56
    .line 57
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    const/16 v4, 0x20

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/16 v4, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v1, v4

    .line 69
    :cond_5
    :goto_3
    and-int/lit8 v4, p7, 0x4

    .line 70
    .line 71
    if-eqz v4, :cond_7

    .line 72
    .line 73
    or-int/lit16 v1, v1, 0x180

    .line 74
    .line 75
    :cond_6
    move-object/from16 v9, p2

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    and-int/lit16 v9, v8, 0x180

    .line 79
    .line 80
    if-nez v9, :cond_6

    .line 81
    .line 82
    move-object/from16 v9, p2

    .line 83
    .line 84
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_8

    .line 89
    .line 90
    const/16 v10, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/16 v10, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v1, v10

    .line 96
    :goto_5
    and-int/lit16 v10, v8, 0xc00

    .line 97
    .line 98
    if-nez v10, :cond_b

    .line 99
    .line 100
    and-int/lit8 v10, p7, 0x8

    .line 101
    .line 102
    if-nez v10, :cond_9

    .line 103
    .line 104
    move-wide/from16 v10, p3

    .line 105
    .line 106
    invoke-interface {v5, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-eqz v12, :cond_a

    .line 111
    .line 112
    const/16 v12, 0x800

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    move-wide/from16 v10, p3

    .line 116
    .line 117
    :cond_a
    const/16 v12, 0x400

    .line 118
    .line 119
    :goto_6
    or-int/2addr v1, v12

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    move-wide/from16 v10, p3

    .line 122
    .line 123
    :goto_7
    and-int/lit16 v12, v1, 0x493

    .line 124
    .line 125
    const/16 v13, 0x492

    .line 126
    .line 127
    if-ne v12, v13, :cond_d

    .line 128
    .line 129
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    if-nez v12, :cond_c

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    move-object v8, v5

    .line 140
    move-object v3, v9

    .line 141
    move-wide v4, v10

    .line 142
    goto/16 :goto_e

    .line 143
    .line 144
    :cond_d
    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 145
    .line 146
    .line 147
    and-int/lit8 v12, v8, 0x1

    .line 148
    .line 149
    if-eqz v12, :cond_10

    .line 150
    .line 151
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    if-eqz v12, :cond_e

    .line 156
    .line 157
    goto :goto_a

    .line 158
    :cond_e
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    and-int/lit8 v4, p7, 0x8

    .line 162
    .line 163
    if-eqz v4, :cond_f

    .line 164
    .line 165
    :goto_9
    and-int/lit16 v1, v1, -0x1c01

    .line 166
    .line 167
    :cond_f
    move-object v4, v9

    .line 168
    move-wide v14, v10

    .line 169
    goto :goto_b

    .line 170
    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    .line 171
    .line 172
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 173
    .line 174
    move-object v9, v4

    .line 175
    :cond_11
    and-int/lit8 v4, p7, 0x8

    .line 176
    .line 177
    if-eqz v4, :cond_f

    .line 178
    .line 179
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 180
    .line 181
    sget v10, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 182
    .line 183
    invoke-virtual {v4, v5, v10}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 188
    .line 189
    .line 190
    move-result-wide v10

    .line 191
    goto :goto_9

    .line 192
    :goto_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_12

    .line 200
    .line 201
    const/4 v9, -0x1

    .line 202
    const-string v10, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastProgressBar (VastProgressBar.kt:30)"

    .line 203
    .line 204
    invoke-static {v0, v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_12
    int-to-float v3, v3

    .line 208
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    const/4 v13, 0x0

    .line 213
    new-array v9, v13, [Ljava/lang/Object;

    .line 214
    .line 215
    const v10, -0x6282662d

    .line 216
    .line 217
    .line 218
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 226
    .line 227
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    if-ne v10, v11, :cond_13

    .line 232
    .line 233
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/e0;

    .line 234
    .line 235
    invoke-direct {v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/e0;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_13
    move-object v12, v10

    .line 242
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 243
    .line 244
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 245
    .line 246
    .line 247
    const/16 v17, 0xc00

    .line 248
    .line 249
    const/16 v18, 0x6

    .line 250
    .line 251
    const/4 v10, 0x0

    .line 252
    const/4 v11, 0x0

    .line 253
    move-object v13, v5

    .line 254
    move-wide/from16 v19, v14

    .line 255
    .line 256
    move/from16 v14, v17

    .line 257
    .line 258
    move/from16 v15, v18

    .line 259
    .line 260
    invoke-static/range {v9 .. v15}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 265
    .line 266
    invoke-static/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m;->h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)F

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    invoke-static {v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m;->a(Landroidx/compose/runtime/MutableState;)F

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    const v11, -0x628255a6

    .line 279
    .line 280
    .line 281
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    if-ne v11, v12, :cond_14

    .line 293
    .line 294
    const/4 v11, 0x0

    .line 295
    const/4 v12, 0x0

    .line 296
    invoke-static {v10, v11, v2, v12}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_14
    check-cast v11, Landroidx/compose/animation/core/Animatable;

    .line 304
    .line 305
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v11}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Ljava/lang/Number;

    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-static {v9, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m;->f(Landroidx/compose/runtime/MutableState;F)V

    .line 319
    .line 320
    .line 321
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    const v2, -0x628242a4

    .line 326
    .line 327
    .line 328
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    or-int/2addr v2, v12

    .line 340
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    or-int/2addr v2, v12

    .line 345
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    or-int/2addr v2, v12

    .line 350
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    if-nez v2, :cond_16

    .line 355
    .line 356
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    if-ne v12, v2, :cond_15

    .line 361
    .line 362
    goto :goto_c

    .line 363
    :cond_15
    move v14, v0

    .line 364
    move v15, v1

    .line 365
    move v10, v3

    .line 366
    move-object v6, v4

    .line 367
    move-object v8, v5

    .line 368
    goto :goto_d

    .line 369
    :cond_16
    :goto_c
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m$a;

    .line 370
    .line 371
    const/4 v13, 0x0

    .line 372
    move v14, v0

    .line 373
    move-object v0, v12

    .line 374
    move v15, v1

    .line 375
    move-object v1, v11

    .line 376
    move v2, v10

    .line 377
    move v10, v3

    .line 378
    move/from16 v3, p0

    .line 379
    .line 380
    move-object v6, v4

    .line 381
    move-object/from16 v4, p1

    .line 382
    .line 383
    move-object v8, v5

    .line 384
    move-object v5, v13

    .line 385
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/m$a;-><init>(Landroidx/compose/animation/core/Animatable;FZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Lrs/c;)V

    .line 386
    .line 387
    .line 388
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :goto_d
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 392
    .line 393
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 394
    .line 395
    .line 396
    shr-int/lit8 v0, v15, 0x3

    .line 397
    .line 398
    and-int/lit8 v0, v0, 0xe

    .line 399
    .line 400
    shl-int/lit8 v1, v15, 0x3

    .line 401
    .line 402
    and-int/lit8 v1, v1, 0x70

    .line 403
    .line 404
    or-int/2addr v0, v1

    .line 405
    invoke-static {v7, v9, v12, v8, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 406
    .line 407
    .line 408
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    const v1, -0x628203b0

    .line 417
    .line 418
    .line 419
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    or-int/2addr v1, v2

    .line 431
    move-wide/from16 v2, v19

    .line 432
    .line 433
    invoke-interface {v8, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    or-int/2addr v1, v4

    .line 438
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    if-nez v1, :cond_17

    .line 443
    .line 444
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    if-ne v4, v1, :cond_18

    .line 449
    .line 450
    :cond_17
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f0;

    .line 451
    .line 452
    invoke-direct {v4, v11, v14, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/f0;-><init>(Landroidx/compose/animation/core/Animatable;FJ)V

    .line 453
    .line 454
    .line 455
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_18
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 459
    .line 460
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 461
    .line 462
    .line 463
    invoke-static {v0, v4}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    const/4 v1, 0x0

    .line 468
    invoke-static {v0, v8, v1}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 469
    .line 470
    .line 471
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_19

    .line 476
    .line 477
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 478
    .line 479
    .line 480
    :cond_19
    move-wide v4, v2

    .line 481
    move-object v3, v6

    .line 482
    :goto_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    if-eqz v8, :cond_1a

    .line 487
    .line 488
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/g0;

    .line 489
    .line 490
    move-object v0, v9

    .line 491
    move/from16 v1, p0

    .line 492
    .line 493
    move-object/from16 v2, p1

    .line 494
    .line 495
    move/from16 v6, p6

    .line 496
    .line 497
    move/from16 v7, p7

    .line 498
    .line 499
    invoke-direct/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/g0;-><init>(ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Landroidx/compose/ui/Modifier;JII)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 503
    .line 504
    .line 505
    :cond_1a
    return-void
.end method

.method public static final h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)F
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 p0, 0x42c80000    # 100.0f

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->b()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-double v0, v0

    .line 30
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->b()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    long-to-double v2, v2

    .line 35
    div-double/2addr v0, v2

    .line 36
    double-to-float p0, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$d;

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;

    .line 43
    .line 44
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 52
    .line 53
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 58
    :goto_1
    return p0
.end method

.method public static final i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)I
    .locals 6

    .line 1
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->b()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$c;->a()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    sub-long/2addr v2, v4

    .line 33
    long-to-int p0, v2

    .line 34
    invoke-static {p0, v1}, Lkotlin/ranges/e;->e(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$d;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;

    .line 44
    .line 45
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 53
    .line 54
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_4
    :goto_0
    return v1
.end method
