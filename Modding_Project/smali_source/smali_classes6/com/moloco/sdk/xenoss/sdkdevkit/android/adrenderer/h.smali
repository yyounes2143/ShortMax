.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWatermark.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Watermark.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/WatermarkKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,171:1\n1057#2,6:172\n1057#2,6:178\n1057#2,6:217\n67#3,6:184\n73#3:216\n77#3:227\n75#4:190\n76#4,11:192\n89#4:226\n76#5:191\n460#6,13:203\n473#6,3:223\n*S KotlinDebug\n*F\n+ 1 Watermark.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/WatermarkKt\n*L\n83#1:172,6\n96#1:178,6\n104#1:217,6\n93#1:184,6\n93#1:216\n93#1:227\n93#1:190\n93#1:192,11\n93#1:226\n93#1:191\n93#1:203,13\n93#1:223,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v2, p0

    .line 17
    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 24
    .line 25
    const-string v2, "BitmapCreationError"

    .line 26
    .line 27
    const-string v3, "BitmapFactory failed to decode the byte array"

    .line 28
    .line 29
    const/16 v6, 0xc

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    move-object v4, p0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    move-object v0, p0

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :goto_1
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 44
    .line 45
    const-string v2, "BitmapCreationError"

    .line 46
    .line 47
    const-string v3, "Base64 string is null or empty"

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :goto_2
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 57
    .line 58
    const/16 v6, 0x8

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const-string v2, "BitmapCreationError"

    .line 62
    .line 63
    const-string v3, "Error creating bitmap from base64"

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_3
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 19

    .line 1
    const-string v0, "$this$Canvas"

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v12, v1

    .line 18
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result v13

    .line 26
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 31
    .line 32
    .line 33
    move-result v14

    .line 34
    const/4 v15, 0x0

    .line 35
    move v10, v15

    .line 36
    :goto_0
    cmpg-float v1, v10, v13

    .line 37
    .line 38
    if-gez v1, :cond_1

    .line 39
    .line 40
    move v9, v15

    .line 41
    :goto_1
    cmpg-float v1, v9, v14

    .line 42
    .line 43
    if-gez v1, :cond_0

    .line 44
    .line 45
    invoke-static {v10, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    const/16 v16, 0x3c

    .line 50
    .line 51
    const/16 v17, 0x0

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move-object/from16 v1, p1

    .line 58
    .line 59
    move-object/from16 v2, p0

    .line 60
    .line 61
    move/from16 v18, v9

    .line 62
    .line 63
    move/from16 v9, v16

    .line 64
    .line 65
    move/from16 v16, v10

    .line 66
    .line 67
    move-object/from16 v10, v17

    .line 68
    .line 69
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    add-float v9, v18, v12

    .line 73
    .line 74
    move/from16 v10, v16

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    move/from16 v16, v10

    .line 78
    .line 79
    add-float v10, v16, v0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object v0
.end method

.method public static final c(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
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

.method public static final d(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p3, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/h;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "content"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v3, 0x29cf52c1

    .line 13
    .line 14
    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x6

    .line 22
    and-int/lit8 v6, v2, 0x6

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v6, 0x2

    .line 35
    :goto_0
    or-int/2addr v6, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v6, v2

    .line 38
    :goto_1
    and-int/lit8 v7, v2, 0x30

    .line 39
    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v7, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v6, v7

    .line 54
    :cond_3
    and-int/lit8 v7, v6, 0x13

    .line 55
    .line 56
    const/16 v8, 0x12

    .line 57
    .line 58
    if-ne v7, v8, :cond_5

    .line 59
    .line 60
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_6

    .line 77
    .line 78
    const/4 v7, -0x1

    .line 79
    const-string v8, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.WatermarkComposable (Watermark.kt:79)"

    .line 80
    .line 81
    invoke-static {v3, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    const v3, 0x6d2479e7

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-nez v3, :cond_7

    .line 99
    .line 100
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-ne v7, v3, :cond_8

    .line 107
    .line 108
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/h;->f(Ljava/lang/String;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_8
    check-cast v7, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 116
    .line 117
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 118
    .line 119
    .line 120
    const v3, 0x6d248a9f

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 124
    .line 125
    .line 126
    if-nez v7, :cond_b

    .line 127
    .line 128
    shr-int/lit8 v3, v6, 0x3

    .line 129
    .line 130
    and-int/lit8 v3, v3, 0xe

    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v1, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_9

    .line 147
    .line 148
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 149
    .line 150
    .line 151
    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_a

    .line 156
    .line 157
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d;

    .line 158
    .line 159
    invoke-direct {v4, v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/d;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    :cond_a
    return-void

    .line 166
    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 167
    .line 168
    .line 169
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    const/4 v9, 0x1

    .line 173
    const/4 v10, 0x0

    .line 174
    invoke-static {v3, v8, v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    const v12, 0x6d249f38

    .line 179
    .line 180
    .line 181
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 182
    .line 183
    .line 184
    const-string v12, "Watermark Overlay"

    .line 185
    .line 186
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    if-nez v13, :cond_c

    .line 195
    .line 196
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 197
    .line 198
    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    if-ne v14, v13, :cond_d

    .line 203
    .line 204
    :cond_c
    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e;

    .line 205
    .line 206
    invoke-direct {v14, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_d
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 213
    .line 214
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 215
    .line 216
    .line 217
    const/4 v12, 0x0

    .line 218
    invoke-static {v11, v12, v14, v9, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    const v13, 0x2bb5b5d7

    .line 223
    .line 224
    .line 225
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 226
    .line 227
    .line 228
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 229
    .line 230
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    invoke-static {v13, v12, v4, v12}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    const v14, -0x4ee9b9da

    .line 239
    .line 240
    .line 241
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 242
    .line 243
    .line 244
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 253
    .line 254
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 263
    .line 264
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 273
    .line 274
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 275
    .line 276
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 285
    .line 286
    .line 287
    move-result-object v17

    .line 288
    if-nez v17, :cond_e

    .line 289
    .line 290
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 291
    .line 292
    .line 293
    :cond_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 294
    .line 295
    .line 296
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 297
    .line 298
    .line 299
    move-result v17

    .line 300
    if-eqz v17, :cond_f

    .line 301
    .line 302
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 307
    .line 308
    .line 309
    :goto_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 310
    .line 311
    .line 312
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    invoke-static {v8, v13, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-static {v8, v14, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-static {v8, v15, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-static {v8, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 345
    .line 346
    .line 347
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    invoke-interface {v11, v5, v4, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    const v5, 0x7ab4aae9

    .line 363
    .line 364
    .line 365
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 366
    .line 367
    .line 368
    const v5, -0x7f65a980

    .line 369
    .line 370
    .line 371
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    .line 373
    .line 374
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 375
    .line 376
    shr-int/lit8 v5, v6, 0x3

    .line 377
    .line 378
    and-int/lit8 v5, v5, 0xe

    .line 379
    .line 380
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-interface {v1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    const/4 v5, 0x0

    .line 388
    const/4 v6, 0x1

    .line 389
    invoke-static {v3, v5, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    const v5, 0x23ea7639    # 2.54204E-17f

    .line 394
    .line 395
    .line 396
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    if-nez v5, :cond_10

    .line 408
    .line 409
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 410
    .line 411
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    if-ne v6, v5, :cond_11

    .line 416
    .line 417
    :cond_10
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f;

    .line 418
    .line 419
    invoke-direct {v6, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_11
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 426
    .line 427
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 428
    .line 429
    .line 430
    const/4 v5, 0x6

    .line 431
    invoke-static {v3, v6, v4, v5}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 435
    .line 436
    .line 437
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 438
    .line 439
    .line 440
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 441
    .line 442
    .line 443
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 444
    .line 445
    .line 446
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 447
    .line 448
    .line 449
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_12

    .line 454
    .line 455
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 456
    .line 457
    .line 458
    :cond_12
    :goto_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    if-eqz v3, :cond_13

    .line 463
    .line 464
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g;

    .line 465
    .line 466
    invoke-direct {v4, v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 470
    .line 471
    .line 472
    :cond_13
    return-void
.end method

.method public static final f(Ljava/lang/String;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asImageBitmap(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static final g(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p3, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/h;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method
