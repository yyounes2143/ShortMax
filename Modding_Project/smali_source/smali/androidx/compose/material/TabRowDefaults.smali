.class public final Landroidx/compose/material/TabRowDefaults;
.super Ljava/lang/Object;
.source "TabRow.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final DividerOpacity:F = 0.12f

.field private static final DividerThickness:F

.field public static final INSTANCE:Landroidx/compose/material/TabRowDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IndicatorHeight:F

.field private static final ScrollableTabRowPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/TabRowDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/TabRowDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/TabRowDefaults;->INSTANCE:Landroidx/compose/material/TabRowDefaults;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/material/TabRowDefaults;->DividerThickness:F

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Landroidx/compose/material/TabRowDefaults;->IndicatorHeight:F

    .line 23
    .line 24
    const/16 v0, 0x34

    .line 25
    .line 26
    int-to-float v0, v0

    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Landroidx/compose/material/TabRowDefaults;->ScrollableTabRowPadding:F

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Divider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
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
    move/from16 v6, p6

    .line 2
    .line 3
    const v0, 0x364bc30f

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    and-int/lit8 v1, p7, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    or-int/lit8 v2, v6, 0x6

    .line 17
    .line 18
    move v3, v2

    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object/from16 v2, p1

    .line 40
    .line 41
    move v3, v6

    .line 42
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 43
    .line 44
    if-nez v4, :cond_5

    .line 45
    .line 46
    and-int/lit8 v4, p7, 0x2

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move/from16 v4, p2

    .line 51
    .line 52
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const/16 v5, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move/from16 v4, p2

    .line 62
    .line 63
    :cond_4
    const/16 v5, 0x10

    .line 64
    .line 65
    :goto_2
    or-int/2addr v3, v5

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    move/from16 v4, p2

    .line 68
    .line 69
    :goto_3
    and-int/lit16 v5, v6, 0x380

    .line 70
    .line 71
    if-nez v5, :cond_7

    .line 72
    .line 73
    and-int/lit8 v5, p7, 0x4

    .line 74
    .line 75
    move-wide/from16 v7, p3

    .line 76
    .line 77
    if-nez v5, :cond_6

    .line 78
    .line 79
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    const/16 v5, 0x100

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v5, 0x80

    .line 89
    .line 90
    :goto_4
    or-int/2addr v3, v5

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    move-wide/from16 v7, p3

    .line 93
    .line 94
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 95
    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    or-int/lit16 v3, v3, 0xc00

    .line 99
    .line 100
    move-object/from16 v15, p0

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_8
    and-int/lit16 v5, v6, 0x1c00

    .line 104
    .line 105
    move-object/from16 v15, p0

    .line 106
    .line 107
    if-nez v5, :cond_a

    .line 108
    .line 109
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_9

    .line 114
    .line 115
    const/16 v5, 0x800

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    const/16 v5, 0x400

    .line 119
    .line 120
    :goto_6
    or-int/2addr v3, v5

    .line 121
    :cond_a
    :goto_7
    and-int/lit16 v5, v3, 0x16db

    .line 122
    .line 123
    const/16 v9, 0x492

    .line 124
    .line 125
    if-ne v5, v9, :cond_c

    .line 126
    .line 127
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-nez v5, :cond_b

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 135
    .line 136
    .line 137
    move v3, v4

    .line 138
    move-wide v4, v7

    .line 139
    goto/16 :goto_d

    .line 140
    .line 141
    :cond_c
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 142
    .line 143
    .line 144
    and-int/lit8 v5, v6, 0x1

    .line 145
    .line 146
    if-eqz v5, :cond_11

    .line 147
    .line 148
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_d

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 156
    .line 157
    .line 158
    and-int/lit8 v1, p7, 0x2

    .line 159
    .line 160
    if-eqz v1, :cond_e

    .line 161
    .line 162
    and-int/lit8 v3, v3, -0x71

    .line 163
    .line 164
    :cond_e
    and-int/lit8 v1, p7, 0x4

    .line 165
    .line 166
    if-eqz v1, :cond_f

    .line 167
    .line 168
    and-int/lit16 v3, v3, -0x381

    .line 169
    .line 170
    :cond_f
    move-object v1, v2

    .line 171
    move v2, v4

    .line 172
    :cond_10
    move-wide v4, v7

    .line 173
    goto :goto_c

    .line 174
    :cond_11
    :goto_9
    if-eqz v1, :cond_12

    .line 175
    .line 176
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_12
    move-object v1, v2

    .line 180
    :goto_a
    and-int/lit8 v2, p7, 0x2

    .line 181
    .line 182
    if-eqz v2, :cond_13

    .line 183
    .line 184
    sget v2, Landroidx/compose/material/TabRowDefaults;->DividerThickness:F

    .line 185
    .line 186
    and-int/lit8 v3, v3, -0x71

    .line 187
    .line 188
    goto :goto_b

    .line 189
    :cond_13
    move v2, v4

    .line 190
    :goto_b
    and-int/lit8 v4, p7, 0x4

    .line 191
    .line 192
    if-eqz v4, :cond_10

    .line 193
    .line 194
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 203
    .line 204
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 205
    .line 206
    .line 207
    move-result-wide v7

    .line 208
    const/16 v13, 0xe

    .line 209
    .line 210
    const/4 v14, 0x0

    .line 211
    const v9, 0x3df5c28f    # 0.12f

    .line 212
    .line 213
    .line 214
    const/4 v10, 0x0

    .line 215
    const/4 v11, 0x0

    .line 216
    const/4 v12, 0x0

    .line 217
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v4

    .line 221
    and-int/lit16 v3, v3, -0x381

    .line 222
    .line 223
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 224
    .line 225
    .line 226
    and-int/lit8 v7, v3, 0xe

    .line 227
    .line 228
    shr-int/lit8 v8, v3, 0x3

    .line 229
    .line 230
    and-int/lit8 v8, v8, 0x70

    .line 231
    .line 232
    or-int/2addr v7, v8

    .line 233
    shl-int/lit8 v3, v3, 0x3

    .line 234
    .line 235
    and-int/lit16 v3, v3, 0x380

    .line 236
    .line 237
    or-int v13, v7, v3

    .line 238
    .line 239
    const/16 v14, 0x8

    .line 240
    .line 241
    const/4 v11, 0x0

    .line 242
    move-object v7, v1

    .line 243
    move-wide v8, v4

    .line 244
    move v10, v2

    .line 245
    move-object v12, v0

    .line 246
    invoke-static/range {v7 .. v14}, Landroidx/compose/material/DividerKt;->Divider-oMI9zvI(Landroidx/compose/ui/Modifier;JFFLandroidx/compose/runtime/Composer;II)V

    .line 247
    .line 248
    .line 249
    move v3, v2

    .line 250
    move-object v2, v1

    .line 251
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    if-nez v8, :cond_14

    .line 256
    .line 257
    goto :goto_e

    .line 258
    :cond_14
    new-instance v9, Landroidx/compose/material/TabRowDefaults$Divider$1;

    .line 259
    .line 260
    move-object v0, v9

    .line 261
    move-object/from16 v1, p0

    .line 262
    .line 263
    move/from16 v6, p6

    .line 264
    .line 265
    move/from16 v7, p7

    .line 266
    .line 267
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/TabRowDefaults$Divider$1;-><init>(Landroidx/compose/material/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 271
    .line 272
    .line 273
    :goto_e
    return-void
.end method

.method public final Indicator-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
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
    move/from16 v6, p6

    .line 2
    .line 3
    const v0, 0x5958f559

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    and-int/lit8 v1, p7, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    or-int/lit8 v2, v6, 0x6

    .line 17
    .line 18
    move v3, v2

    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object/from16 v2, p1

    .line 40
    .line 41
    move v3, v6

    .line 42
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 43
    .line 44
    if-nez v4, :cond_5

    .line 45
    .line 46
    and-int/lit8 v4, p7, 0x2

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move/from16 v4, p2

    .line 51
    .line 52
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const/16 v5, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move/from16 v4, p2

    .line 62
    .line 63
    :cond_4
    const/16 v5, 0x10

    .line 64
    .line 65
    :goto_2
    or-int/2addr v3, v5

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    move/from16 v4, p2

    .line 68
    .line 69
    :goto_3
    and-int/lit16 v5, v6, 0x380

    .line 70
    .line 71
    if-nez v5, :cond_7

    .line 72
    .line 73
    and-int/lit8 v5, p7, 0x4

    .line 74
    .line 75
    move-wide/from16 v7, p3

    .line 76
    .line 77
    if-nez v5, :cond_6

    .line 78
    .line 79
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    const/16 v5, 0x100

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v5, 0x80

    .line 89
    .line 90
    :goto_4
    or-int/2addr v3, v5

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    move-wide/from16 v7, p3

    .line 93
    .line 94
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 95
    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    or-int/lit16 v3, v3, 0xc00

    .line 99
    .line 100
    move-object/from16 v9, p0

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_8
    and-int/lit16 v5, v6, 0x1c00

    .line 104
    .line 105
    move-object/from16 v9, p0

    .line 106
    .line 107
    if-nez v5, :cond_a

    .line 108
    .line 109
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_9

    .line 114
    .line 115
    const/16 v5, 0x800

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    const/16 v5, 0x400

    .line 119
    .line 120
    :goto_6
    or-int/2addr v3, v5

    .line 121
    :cond_a
    :goto_7
    and-int/lit16 v3, v3, 0x16db

    .line 122
    .line 123
    const/16 v5, 0x492

    .line 124
    .line 125
    if-ne v3, v5, :cond_c

    .line 126
    .line 127
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_b

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 135
    .line 136
    .line 137
    move v3, v4

    .line 138
    move-wide v4, v7

    .line 139
    goto :goto_d

    .line 140
    :cond_c
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 141
    .line 142
    .line 143
    and-int/lit8 v3, v6, 0x1

    .line 144
    .line 145
    if-eqz v3, :cond_e

    .line 146
    .line 147
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_d

    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 155
    .line 156
    .line 157
    move-object v1, v2

    .line 158
    move v2, v4

    .line 159
    goto :goto_c

    .line 160
    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    .line 161
    .line 162
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :cond_f
    move-object v1, v2

    .line 166
    :goto_a
    and-int/lit8 v2, p7, 0x2

    .line 167
    .line 168
    if-eqz v2, :cond_10

    .line 169
    .line 170
    sget v2, Landroidx/compose/material/TabRowDefaults;->IndicatorHeight:F

    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_10
    move v2, v4

    .line 174
    :goto_b
    and-int/lit8 v3, p7, 0x4

    .line 175
    .line 176
    if-eqz v3, :cond_11

    .line 177
    .line 178
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    move-wide v7, v3

    .line 193
    :cond_11
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 194
    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x1

    .line 199
    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    const/4 v14, 0x2

    .line 208
    const/4 v15, 0x0

    .line 209
    const/4 v13, 0x0

    .line 210
    move-wide v11, v7

    .line 211
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    const/4 v4, 0x0

    .line 216
    invoke-static {v3, v0, v4}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 217
    .line 218
    .line 219
    move v3, v2

    .line 220
    move-wide v4, v7

    .line 221
    move-object v2, v1

    .line 222
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    if-nez v8, :cond_12

    .line 227
    .line 228
    goto :goto_e

    .line 229
    :cond_12
    new-instance v10, Landroidx/compose/material/TabRowDefaults$Indicator$1;

    .line 230
    .line 231
    move-object v0, v10

    .line 232
    move-object/from16 v1, p0

    .line 233
    .line 234
    move/from16 v6, p6

    .line 235
    .line 236
    move/from16 v7, p7

    .line 237
    .line 238
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/TabRowDefaults$Indicator$1;-><init>(Landroidx/compose/material/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V

    .line 239
    .line 240
    .line 241
    invoke-interface {v8, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    :goto_e
    return-void
.end method

.method public final getDividerThickness-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowDefaults;->DividerThickness:F

    .line 2
    .line 3
    return v0
.end method

.method public final getIndicatorHeight-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowDefaults;->IndicatorHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollableTabRowPadding-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowDefaults;->ScrollableTabRowPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public final tabIndicatorOffset(Landroidx/compose/ui/Modifier;Landroidx/compose/material/TabPosition;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/TabPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "currentTabPosition"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$$inlined$debugInspectorInfo$1;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/material/TabPosition;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    new-instance v1, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;-><init>(Landroidx/compose/material/TabPosition;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
