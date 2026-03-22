.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;
    .locals 20
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/internal/ortb/model/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "JJJ",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/internal/ortb/model/i;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lat/a<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lms/n;",
            "Lms/n;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v14, p11

    .line 2
    .line 3
    move/from16 v0, p12

    .line 4
    .line 5
    move/from16 v1, p13

    .line 6
    .line 7
    const v2, 0x5769ca2f

    .line 8
    .line 9
    .line 10
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    .line 12
    .line 13
    and-int/lit8 v3, v1, 0x1

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopEnd()Landroidx/compose/ui/Alignment;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object/from16 v3, p0

    .line 25
    .line 26
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->a()F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object/from16 v4, p1

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v5, v1, 0x4

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 46
    .line 47
    sget v6, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 48
    .line 49
    invoke-virtual {v5, v14, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-wide/from16 v5, p2

    .line 59
    .line 60
    :goto_2
    and-int/lit8 v7, v1, 0x8

    .line 61
    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b()J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move-wide/from16 v7, p4

    .line 70
    .line 71
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 72
    .line 73
    if-eqz v9, :cond_4

    .line 74
    .line 75
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->c()J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move-wide/from16 v9, p6

    .line 81
    .line 82
    :goto_4
    and-int/lit8 v11, v1, 0x20

    .line 83
    .line 84
    if-eqz v11, :cond_5

    .line 85
    .line 86
    const/4 v11, 0x0

    .line 87
    const/16 v12, 0xf

    .line 88
    .line 89
    const/4 v13, 0x0

    .line 90
    const-wide/16 v15, 0x0

    .line 91
    .line 92
    const/16 v17, 0x0

    .line 93
    .line 94
    const-wide/16 v18, 0x0

    .line 95
    .line 96
    move-object/from16 p0, v13

    .line 97
    .line 98
    move-wide/from16 p1, v15

    .line 99
    .line 100
    move-object/from16 p3, v17

    .line 101
    .line 102
    move-wide/from16 p4, v18

    .line 103
    .line 104
    move-object/from16 p6, p11

    .line 105
    .line 106
    move/from16 p7, v11

    .line 107
    .line 108
    move/from16 p8, v12

    .line 109
    .line 110
    invoke-static/range {p0 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c0;->b(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    move-object/from16 v11, p8

    .line 116
    .line 117
    :goto_5
    and-int/lit8 v12, v1, 0x40

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    if-eqz v12, :cond_6

    .line 121
    .line 122
    move-object v12, v13

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    move-object/from16 v12, p9

    .line 125
    .line 126
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_7
    move-object/from16 v13, p10

    .line 132
    .line 133
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    const/4 v1, -0x1

    .line 140
    const-string v15, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultAdCloseCountdownButton (DefaultAdCloseCountdownButton.kt:31)"

    .line 141
    .line 142
    invoke-static {v2, v0, v1, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_8
    sget-object v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 146
    .line 147
    and-int/lit8 v1, v0, 0xe

    .line 148
    .line 149
    const/high16 v2, 0x180000

    .line 150
    .line 151
    or-int/2addr v1, v2

    .line 152
    and-int/lit8 v2, v0, 0x70

    .line 153
    .line 154
    or-int/2addr v1, v2

    .line 155
    and-int/lit16 v2, v0, 0x380

    .line 156
    .line 157
    or-int/2addr v1, v2

    .line 158
    and-int/lit16 v2, v0, 0x1c00

    .line 159
    .line 160
    or-int/2addr v1, v2

    .line 161
    const v2, 0xe000

    .line 162
    .line 163
    .line 164
    and-int/2addr v2, v0

    .line 165
    or-int/2addr v1, v2

    .line 166
    const/high16 v2, 0x70000

    .line 167
    .line 168
    and-int/2addr v2, v0

    .line 169
    or-int/2addr v1, v2

    .line 170
    shl-int/lit8 v0, v0, 0x3

    .line 171
    .line 172
    const/high16 v2, 0x1c00000

    .line 173
    .line 174
    and-int/2addr v2, v0

    .line 175
    or-int/2addr v1, v2

    .line 176
    const/high16 v2, 0xe000000

    .line 177
    .line 178
    and-int/2addr v0, v2

    .line 179
    or-int v16, v1, v0

    .line 180
    .line 181
    move-object v0, v3

    .line 182
    move-object v1, v4

    .line 183
    move-wide v2, v5

    .line 184
    move-wide v4, v7

    .line 185
    move-wide v6, v9

    .line 186
    move-object v8, v11

    .line 187
    move-object v9, v15

    .line 188
    move-object v10, v12

    .line 189
    move-object v11, v13

    .line 190
    move-object/from16 v12, p11

    .line 191
    .line 192
    move/from16 v13, v16

    .line 193
    .line 194
    invoke-static/range {v0 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/m;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;I)Lat/a;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 208
    .line 209
    .line 210
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;
    .locals 12
    .param p0    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    const v1, 0x22175feb

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v2, p8, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget v2, Lcom/moloco/sdk/o;->a:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, p0

    .line 23
    :goto_0
    and-int/lit8 v2, p8, 0x2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    move-wide v6, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-wide v6, p1

    .line 34
    :goto_1
    and-int/lit8 v2, p8, 0x4

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->e()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move-object v8, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v8, p3

    .line 45
    :goto_2
    and-int/lit8 v2, p8, 0x8

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->d()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    move-wide v9, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move-wide/from16 v9, p4

    .line 56
    .line 57
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const/4 v2, -0x1

    .line 64
    const-string v3, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCloseAfterCountdownIcon (DefaultAdCloseCountdownButton.kt:49)"

    .line 65
    .line 66
    move/from16 v5, p7

    .line 67
    .line 68
    invoke-static {v1, v5, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;

    .line 72
    .line 73
    const-string v5, "Close"

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    move-object v3, v1

    .line 77
    invoke-direct/range {v3 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;JLandroidx/compose/ui/graphics/Shape;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 90
    .line 91
    .line 92
    return-object v1
.end method
