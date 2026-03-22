.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdBadge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,173:1\n1057#2,6:174\n1057#2,6:181\n1057#2,6:187\n1057#2,6:193\n1057#2,6:199\n155#3:180\n*S KotlinDebug\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt\n*L\n49#1:174,6\n56#1:181,6\n80#1:187,6\n131#1:193,6\n155#1:199,6\n55#1:180\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
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
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$semantics"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    const-string v0, "clickUrl"

    .line 8
    .line 9
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onClick"

    .line 13
    .line 14
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x3ddded44

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
    move-result-object v1

    .line 26
    and-int/lit8 v5, p5, 0x1

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    or-int/lit8 v6, v4, 0x6

    .line 31
    .line 32
    move v7, v6

    .line 33
    move-object/from16 v6, p0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    and-int/lit8 v6, v4, 0x6

    .line 37
    .line 38
    if-nez v6, :cond_2

    .line 39
    .line 40
    move-object/from16 v6, p0

    .line 41
    .line 42
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v7, 0x2

    .line 51
    :goto_0
    or-int/2addr v7, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object/from16 v6, p0

    .line 54
    .line 55
    move v7, v4

    .line 56
    :goto_1
    and-int/lit8 v8, p5, 0x2

    .line 57
    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    or-int/lit8 v7, v7, 0x30

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    and-int/lit8 v8, v4, 0x30

    .line 64
    .line 65
    if-nez v8, :cond_5

    .line 66
    .line 67
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_4

    .line 72
    .line 73
    const/16 v8, 0x20

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/16 v8, 0x10

    .line 77
    .line 78
    :goto_2
    or-int/2addr v7, v8

    .line 79
    :cond_5
    :goto_3
    and-int/lit8 v8, p5, 0x4

    .line 80
    .line 81
    if-eqz v8, :cond_6

    .line 82
    .line 83
    or-int/lit16 v7, v7, 0x180

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    and-int/lit16 v8, v4, 0x180

    .line 87
    .line 88
    if-nez v8, :cond_8

    .line 89
    .line 90
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_7

    .line 95
    .line 96
    const/16 v8, 0x100

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    const/16 v8, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v7, v8

    .line 102
    :cond_8
    :goto_5
    and-int/lit16 v8, v7, 0x93

    .line 103
    .line 104
    const/16 v9, 0x92

    .line 105
    .line 106
    if-ne v8, v9, :cond_a

    .line 107
    .line 108
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_9

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 116
    .line 117
    .line 118
    move-object v13, v6

    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    .line 122
    .line 123
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 124
    .line 125
    move-object v13, v5

    .line 126
    goto :goto_7

    .line 127
    :cond_b
    move-object v13, v6

    .line 128
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_c

    .line 133
    .line 134
    const/4 v5, -0x1

    .line 135
    const-string v6, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdBadge (AdBadge.kt:43)"

    .line 136
    .line 137
    invoke-static {v0, v7, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_c
    const v0, -0x15ad76e2

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 144
    .line 145
    .line 146
    const-string v6, "Ad Badge"

    .line 147
    .line 148
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-nez v0, :cond_d

    .line 157
    .line 158
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-ne v5, v0, :cond_e

    .line 165
    .line 166
    :cond_d
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/d;

    .line 167
    .line 168
    invoke-direct {v5, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/d;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_e
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 175
    .line 176
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 177
    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x1

    .line 182
    invoke-static {v13, v7, v5, v8, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const/16 v5, 0xc

    .line 187
    .line 188
    int-to-float v5, v5

    .line 189
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    const v0, -0x15ad5c2e

    .line 198
    .line 199
    .line 200
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    or-int/2addr v0, v5

    .line 212
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-nez v0, :cond_f

    .line 217
    .line 218
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-ne v5, v0, :cond_10

    .line 225
    .line 226
    :cond_f
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/f;

    .line 227
    .line 228
    invoke-direct {v5, v3, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/f;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_10
    move-object/from16 v18, v5

    .line 235
    .line 236
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 237
    .line 238
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 239
    .line 240
    .line 241
    const/16 v19, 0x7

    .line 242
    .line 243
    const/16 v20, 0x0

    .line 244
    .line 245
    const/4 v15, 0x0

    .line 246
    const/16 v16, 0x0

    .line 247
    .line 248
    const/16 v17, 0x0

    .line 249
    .line 250
    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sget v5, Lcom/moloco/sdk/o;->e:I

    .line 255
    .line 256
    invoke-static {v5, v1, v7}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 261
    .line 262
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 263
    .line 264
    .line 265
    move-result-wide v8

    .line 266
    const/16 v11, 0xc30

    .line 267
    .line 268
    const/4 v12, 0x0

    .line 269
    move-object v7, v0

    .line 270
    move-object v10, v1

    .line 271
    invoke-static/range {v5 .. v12}, Landroidx/compose/material/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 272
    .line 273
    .line 274
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_11

    .line 279
    .line 280
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 281
    .line 282
    .line 283
    :cond_11
    :goto_8
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    if-eqz v6, :cond_12

    .line 288
    .line 289
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/g;

    .line 290
    .line 291
    move-object v0, v7

    .line 292
    move-object v1, v13

    .line 293
    move-object/from16 v2, p1

    .line 294
    .line 295
    move-object/from16 v3, p2

    .line 296
    .line 297
    move/from16 v4, p4

    .line 298
    .line 299
    move/from16 v5, p5

    .line 300
    .line 301
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/g;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;II)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 305
    .line 306
    .line 307
    :cond_12
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Lat/p;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ComposableNaming"
        }
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lat/p<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, -0x6343b0d6

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v1, p6, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    :cond_0
    and-int/lit8 v1, p6, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string p1, "https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html"

    .line 18
    .line 19
    :cond_1
    and-int/lit8 v1, p6, 0x4

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    sget-object p2, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/moloco/sdk/service_locator/b$h;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_2
    and-int/lit8 p6, p6, 0x8

    .line 30
    .line 31
    if-eqz p6, :cond_5

    .line 32
    .line 33
    const p3, -0x30dc5809

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p6

    .line 47
    or-int/2addr p3, p6

    .line 48
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    if-nez p3, :cond_3

    .line 53
    .line 54
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-ne p6, p3, :cond_4

    .line 61
    .line 62
    :cond_3
    new-instance p6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/a;

    .line 63
    .line 64
    invoke-direct {p6, p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p4, p6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    move-object p3, p6

    .line 71
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_6

    .line 81
    .line 82
    const/4 p2, -0x1

    .line 83
    const-string p6, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultVastAdBadge (AdBadge.kt:80)"

    .line 84
    .line 85
    invoke-static {v0, p5, p2, p6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;

    .line 89
    .line 90
    invoke-direct {p2, p0, p1, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$a;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    const p0, 0x2e93aa00

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-static {p4, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 111
    .line 112
    .line 113
    return-object p0
.end method

.method public static final f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final g(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Lat/o;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ComposableNaming"
        }
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lat/o<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, -0x6bb36fee

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v1, p6, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    :cond_0
    and-int/lit8 v1, p6, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string p1, "https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html"

    .line 18
    .line 19
    :cond_1
    and-int/lit8 v1, p6, 0x4

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    sget-object p2, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/moloco/sdk/service_locator/b$h;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_2
    and-int/lit8 p6, p6, 0x8

    .line 30
    .line 31
    if-eqz p6, :cond_5

    .line 32
    .line 33
    const p3, -0x2d86655a

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p6

    .line 47
    or-int/2addr p3, p6

    .line 48
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    if-nez p3, :cond_3

    .line 53
    .line 54
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-ne p6, p3, :cond_4

    .line 61
    .line 62
    :cond_3
    new-instance p6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c;

    .line 63
    .line 64
    invoke-direct {p6, p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p4, p6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    move-object p3, p6

    .line 71
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_6

    .line 81
    .line 82
    const/4 p2, -0x1

    .line 83
    const-string p6, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultWebViewAdBadge (AdBadge.kt:131)"

    .line 84
    .line 85
    invoke-static {v0, p5, p2, p6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$b;

    .line 89
    .line 90
    invoke-direct {p2, p0, p1, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h$b;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    const p0, -0x26e4e357

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-static {p4, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 111
    .line 112
    .line 113
    return-object p0
.end method

.method public static final h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method
