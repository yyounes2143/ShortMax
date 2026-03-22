.class public final Landroidx/compose/material/ChipDefaults;
.super Ljava/lang/Object;
.source "Chip.kt"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final ContentOpacity:F = 0.87f

.field public static final INSTANCE:Landroidx/compose/material/ChipDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LeadingIconOpacity:F = 0.54f

.field private static final LeadingIconSize:F

.field private static final MinHeight:F

.field public static final OutlinedBorderOpacity:F = 0.12f

.field private static final OutlinedBorderSize:F

.field private static final SelectedIconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ChipDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ChipDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroidx/compose/material/ChipDefaults;->MinHeight:F

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    int-to-float v0, v0

    .line 19
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Landroidx/compose/material/ChipDefaults;->OutlinedBorderSize:F

    .line 24
    .line 25
    const/16 v0, 0x14

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Landroidx/compose/material/ChipDefaults;->LeadingIconSize:F

    .line 33
    .line 34
    const/16 v0, 0x12

    .line 35
    .line 36
    int-to-float v0, v0

    .line 37
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sput v0, Landroidx/compose/material/ChipDefaults;->SelectedIconSize:F

    .line 42
    .line 43
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
.method public final chipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ChipColors;
    .locals 19
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p13

    .line 2
    .line 3
    const v1, 0x6d955ddc

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p15, 0x1

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    const/16 v10, 0xe

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    const v6, 0x3df5c28f    # 0.12f

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    move-wide v6, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-wide/from16 v6, p1

    .line 52
    .line 53
    :goto_0
    and-int/lit8 v1, p15, 0x2

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    const/16 v14, 0xe

    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    const v10, 0x3f5eb852    # 0.87f

    .line 71
    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-wide/from16 v3, p3

    .line 82
    .line 83
    :goto_1
    and-int/lit8 v1, p15, 0x4

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    const/16 v14, 0xe

    .line 88
    .line 89
    const/4 v15, 0x0

    .line 90
    const v10, 0x3f0a3d71    # 0.54f

    .line 91
    .line 92
    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    move-wide v8, v3

    .line 97
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v8

    .line 101
    move-wide v10, v8

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    move-wide/from16 v10, p5

    .line 104
    .line 105
    :goto_2
    and-int/lit8 v1, p15, 0x8

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 116
    .line 117
    .line 118
    move-result-wide v8

    .line 119
    sget-object v5, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 120
    .line 121
    invoke-virtual {v5, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    const v12, 0x3df5c28f    # 0.12f

    .line 126
    .line 127
    .line 128
    mul-float/2addr v5, v12

    .line 129
    const/16 v12, 0xe

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    const/4 v14, 0x0

    .line 133
    const/4 v15, 0x0

    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    move-wide/from16 p1, v8

    .line 137
    .line 138
    move/from16 p3, v5

    .line 139
    .line 140
    move/from16 p4, v14

    .line 141
    .line 142
    move/from16 p5, v15

    .line 143
    .line 144
    move/from16 p6, v16

    .line 145
    .line 146
    move/from16 p7, v12

    .line 147
    .line 148
    move-object/from16 p8, v13

    .line 149
    .line 150
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v8

    .line 154
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 159
    .line 160
    .line 161
    move-result-wide v12

    .line 162
    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v8

    .line 166
    move-wide v12, v8

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    move-wide/from16 v12, p7

    .line 169
    .line 170
    :goto_3
    and-int/lit8 v1, p15, 0x10

    .line 171
    .line 172
    if-eqz v1, :cond_4

    .line 173
    .line 174
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 175
    .line 176
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const v5, 0x3f5eb852    # 0.87f

    .line 181
    .line 182
    .line 183
    mul-float/2addr v1, v5

    .line 184
    const/16 v5, 0xe

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    const/4 v14, 0x0

    .line 189
    const/4 v15, 0x0

    .line 190
    move-wide/from16 p1, v3

    .line 191
    .line 192
    move/from16 p3, v1

    .line 193
    .line 194
    move/from16 p4, v9

    .line 195
    .line 196
    move/from16 p5, v14

    .line 197
    .line 198
    move/from16 p6, v15

    .line 199
    .line 200
    move/from16 p7, v5

    .line 201
    .line 202
    move-object/from16 p8, v8

    .line 203
    .line 204
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v8

    .line 208
    move-wide v14, v8

    .line 209
    goto :goto_4

    .line 210
    :cond_4
    move-wide/from16 v14, p9

    .line 211
    .line 212
    :goto_4
    and-int/lit8 v1, p15, 0x20

    .line 213
    .line 214
    if-eqz v1, :cond_5

    .line 215
    .line 216
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 217
    .line 218
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    const v2, 0x3f0a3d71    # 0.54f

    .line 223
    .line 224
    .line 225
    mul-float/2addr v1, v2

    .line 226
    const/16 v2, 0xe

    .line 227
    .line 228
    const/4 v5, 0x0

    .line 229
    const/4 v8, 0x0

    .line 230
    const/4 v9, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    move-wide/from16 p1, v10

    .line 234
    .line 235
    move/from16 p3, v1

    .line 236
    .line 237
    move/from16 p4, v8

    .line 238
    .line 239
    move/from16 p5, v9

    .line 240
    .line 241
    move/from16 p6, v16

    .line 242
    .line 243
    move/from16 p7, v2

    .line 244
    .line 245
    move-object/from16 p8, v5

    .line 246
    .line 247
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v1

    .line 251
    move-wide/from16 v16, v1

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_5
    move-wide/from16 v16, p11

    .line 255
    .line 256
    :goto_5
    new-instance v1, Landroidx/compose/material/DefaultChipColors;

    .line 257
    .line 258
    const/16 v18, 0x0

    .line 259
    .line 260
    move-object v5, v1

    .line 261
    move-wide v8, v3

    .line 262
    invoke-direct/range {v5 .. v18}, Landroidx/compose/material/DefaultChipColors;-><init>(JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 263
    .line 264
    .line 265
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 266
    .line 267
    .line 268
    return-object v1
.end method

.method public final filterChipColors-J08w3-E(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SelectableChipColors;
    .locals 26
    .param p19    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p19

    .line 2
    .line 3
    move/from16 v1, p21

    .line 4
    .line 5
    const v2, 0x317af0d5

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    const/16 v11, 0xe

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    const v7, 0x3df5c28f    # 0.12f

    .line 30
    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    move-wide v7, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-wide/from16 v7, p1

    .line 54
    .line 55
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 60
    .line 61
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    const/16 v15, 0xe

    .line 70
    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const v11, 0x3f5eb852    # 0.87f

    .line 74
    .line 75
    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-wide/from16 v4, p3

    .line 85
    .line 86
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    const/16 v15, 0xe

    .line 91
    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const v11, 0x3f0a3d71    # 0.54f

    .line 95
    .line 96
    .line 97
    const/4 v12, 0x0

    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    move-wide v9, v4

    .line 101
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    move-wide v11, v9

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move-wide/from16 v11, p5

    .line 108
    .line 109
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 110
    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 114
    .line 115
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 124
    .line 125
    invoke-virtual {v6, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    const v13, 0x3df5c28f    # 0.12f

    .line 130
    .line 131
    .line 132
    mul-float/2addr v6, v13

    .line 133
    const/16 v13, 0xe

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v15, 0x0

    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    const/16 v17, 0x0

    .line 140
    .line 141
    move-wide/from16 p1, v9

    .line 142
    .line 143
    move/from16 p3, v6

    .line 144
    .line 145
    move/from16 p4, v15

    .line 146
    .line 147
    move/from16 p5, v16

    .line 148
    .line 149
    move/from16 p6, v17

    .line 150
    .line 151
    move/from16 p7, v13

    .line 152
    .line 153
    move-object/from16 p8, v14

    .line 154
    .line 155
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v9

    .line 159
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 164
    .line 165
    .line 166
    move-result-wide v13

    .line 167
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    move-wide v13, v9

    .line 172
    goto :goto_3

    .line 173
    :cond_3
    move-wide/from16 v13, p7

    .line 174
    .line 175
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 176
    .line 177
    if-eqz v2, :cond_4

    .line 178
    .line 179
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 180
    .line 181
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    const v6, 0x3f5eb852    # 0.87f

    .line 186
    .line 187
    .line 188
    mul-float/2addr v2, v6

    .line 189
    const/16 v6, 0xe

    .line 190
    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v10, 0x0

    .line 193
    const/4 v15, 0x0

    .line 194
    const/16 v16, 0x0

    .line 195
    .line 196
    move-wide/from16 p1, v4

    .line 197
    .line 198
    move/from16 p3, v2

    .line 199
    .line 200
    move/from16 p4, v10

    .line 201
    .line 202
    move/from16 p5, v15

    .line 203
    .line 204
    move/from16 p6, v16

    .line 205
    .line 206
    move/from16 p7, v6

    .line 207
    .line 208
    move-object/from16 p8, v9

    .line 209
    .line 210
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v9

    .line 214
    move-wide v15, v9

    .line 215
    goto :goto_4

    .line 216
    :cond_4
    move-wide/from16 v15, p9

    .line 217
    .line 218
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 219
    .line 220
    if-eqz v2, :cond_5

    .line 221
    .line 222
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 223
    .line 224
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    const v6, 0x3f0a3d71    # 0.54f

    .line 229
    .line 230
    .line 231
    mul-float/2addr v2, v6

    .line 232
    const/16 v6, 0xe

    .line 233
    .line 234
    const/4 v9, 0x0

    .line 235
    const/4 v10, 0x0

    .line 236
    const/16 v17, 0x0

    .line 237
    .line 238
    const/16 v18, 0x0

    .line 239
    .line 240
    move-wide/from16 p1, v11

    .line 241
    .line 242
    move/from16 p3, v2

    .line 243
    .line 244
    move/from16 p4, v10

    .line 245
    .line 246
    move/from16 p5, v17

    .line 247
    .line 248
    move/from16 p6, v18

    .line 249
    .line 250
    move/from16 p7, v6

    .line 251
    .line 252
    move-object/from16 p8, v9

    .line 253
    .line 254
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v9

    .line 258
    move-wide/from16 v17, v9

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_5
    move-wide/from16 v17, p11

    .line 262
    .line 263
    :goto_5
    and-int/lit8 v2, v1, 0x40

    .line 264
    .line 265
    if-eqz v2, :cond_6

    .line 266
    .line 267
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 268
    .line 269
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 274
    .line 275
    .line 276
    move-result-wide v9

    .line 277
    const/16 v2, 0xe

    .line 278
    .line 279
    const/4 v6, 0x0

    .line 280
    const v19, 0x3df5c28f    # 0.12f

    .line 281
    .line 282
    .line 283
    const/16 v20, 0x0

    .line 284
    .line 285
    const/16 v21, 0x0

    .line 286
    .line 287
    const/16 v22, 0x0

    .line 288
    .line 289
    move-wide/from16 p1, v9

    .line 290
    .line 291
    move/from16 p3, v19

    .line 292
    .line 293
    move/from16 p4, v20

    .line 294
    .line 295
    move/from16 p5, v21

    .line 296
    .line 297
    move/from16 p6, v22

    .line 298
    .line 299
    move/from16 p7, v2

    .line 300
    .line 301
    move-object/from16 p8, v6

    .line 302
    .line 303
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 304
    .line 305
    .line 306
    move-result-wide v9

    .line 307
    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 308
    .line 309
    .line 310
    move-result-wide v9

    .line 311
    move-wide/from16 v19, v9

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_6
    move-wide/from16 v19, p13

    .line 315
    .line 316
    :goto_6
    and-int/lit16 v2, v1, 0x80

    .line 317
    .line 318
    if-eqz v2, :cond_7

    .line 319
    .line 320
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 321
    .line 322
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 327
    .line 328
    .line 329
    move-result-wide v9

    .line 330
    const/16 v2, 0xe

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    const v21, 0x3e23d70a    # 0.16f

    .line 334
    .line 335
    .line 336
    const/16 v22, 0x0

    .line 337
    .line 338
    const/16 v23, 0x0

    .line 339
    .line 340
    const/16 v24, 0x0

    .line 341
    .line 342
    move-wide/from16 p1, v9

    .line 343
    .line 344
    move/from16 p3, v21

    .line 345
    .line 346
    move/from16 p4, v22

    .line 347
    .line 348
    move/from16 p5, v23

    .line 349
    .line 350
    move/from16 p6, v24

    .line 351
    .line 352
    move/from16 p7, v2

    .line 353
    .line 354
    move-object/from16 p8, v6

    .line 355
    .line 356
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 357
    .line 358
    .line 359
    move-result-wide v9

    .line 360
    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 361
    .line 362
    .line 363
    move-result-wide v9

    .line 364
    move-wide/from16 v21, v9

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_7
    move-wide/from16 v21, p15

    .line 368
    .line 369
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 370
    .line 371
    if-eqz v1, :cond_8

    .line 372
    .line 373
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 374
    .line 375
    invoke-virtual {v1, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 380
    .line 381
    .line 382
    move-result-wide v1

    .line 383
    const/16 v3, 0xe

    .line 384
    .line 385
    const/4 v6, 0x0

    .line 386
    const v9, 0x3e23d70a    # 0.16f

    .line 387
    .line 388
    .line 389
    const/4 v10, 0x0

    .line 390
    const/16 v23, 0x0

    .line 391
    .line 392
    const/16 v24, 0x0

    .line 393
    .line 394
    move-wide/from16 p1, v1

    .line 395
    .line 396
    move/from16 p3, v9

    .line 397
    .line 398
    move/from16 p4, v10

    .line 399
    .line 400
    move/from16 p5, v23

    .line 401
    .line 402
    move/from16 p6, v24

    .line 403
    .line 404
    move/from16 p7, v3

    .line 405
    .line 406
    move-object/from16 p8, v6

    .line 407
    .line 408
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 409
    .line 410
    .line 411
    move-result-wide v1

    .line 412
    invoke-static {v1, v2, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 413
    .line 414
    .line 415
    move-result-wide v1

    .line 416
    move-wide/from16 v23, v1

    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_8
    move-wide/from16 v23, p17

    .line 420
    .line 421
    :goto_8
    new-instance v1, Landroidx/compose/material/DefaultSelectableChipColors;

    .line 422
    .line 423
    move-object v6, v1

    .line 424
    const/16 v25, 0x0

    .line 425
    .line 426
    move-wide v9, v4

    .line 427
    invoke-direct/range {v6 .. v25}, Landroidx/compose/material/DefaultSelectableChipColors;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 428
    .line 429
    .line 430
    invoke-interface/range {p19 .. p19}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 431
    .line 432
    .line 433
    return-object v1
.end method

.method public final getLeadingIconSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipDefaults;->LeadingIconSize:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMinHeight-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipDefaults;->MinHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public final getOutlinedBorder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/BorderStroke;
    .locals 9
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p2, -0x625c71bd

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget p2, Landroidx/compose/material/ChipDefaults;->OutlinedBorderSize:F

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, p1, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/16 v7, 0xe

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const v3, 0x3df5c28f    # 0.12f

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public final getOutlinedBorderSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipDefaults;->OutlinedBorderSize:F

    .line 2
    .line 3
    return v0
.end method

.method public final getSelectedIconSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipDefaults;->SelectedIconSize:F

    .line 2
    .line 3
    return v0
.end method

.method public final outlinedChipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ChipColors;
    .locals 17
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v15, p13

    .line 2
    .line 3
    const v0, -0x692352e6

    .line 4
    .line 5
    .line 6
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p15, 0x1

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 15
    .line 16
    invoke-virtual {v0, v15, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-wide/from16 v2, p1

    .line 26
    .line 27
    :goto_0
    and-int/lit8 v0, p15, 0x2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 32
    .line 33
    invoke-virtual {v0, v15, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    const/16 v10, 0xe

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    const v6, 0x3f5eb852    # 0.87f

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-wide/from16 v4, p3

    .line 56
    .line 57
    :goto_1
    and-int/lit8 v0, p15, 0x4

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/16 v12, 0xe

    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    const v8, 0x3f0a3d71    # 0.54f

    .line 65
    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    move-wide v6, v4

    .line 71
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-wide/from16 v6, p5

    .line 77
    .line 78
    :goto_2
    and-int/lit8 v0, p15, 0x8

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    move-wide v8, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-wide/from16 v8, p7

    .line 85
    .line 86
    :goto_3
    and-int/lit8 v0, p15, 0x10

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 91
    .line 92
    invoke-virtual {v0, v15, v1}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const v10, 0x3f5eb852    # 0.87f

    .line 97
    .line 98
    .line 99
    mul-float/2addr v0, v10

    .line 100
    const/16 v10, 0xe

    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v14, 0x0

    .line 106
    move-wide/from16 p1, v4

    .line 107
    .line 108
    move/from16 p3, v0

    .line 109
    .line 110
    move/from16 p4, v12

    .line 111
    .line 112
    move/from16 p5, v13

    .line 113
    .line 114
    move/from16 p6, v14

    .line 115
    .line 116
    move/from16 p7, v10

    .line 117
    .line 118
    move-object/from16 p8, v11

    .line 119
    .line 120
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    goto :goto_4

    .line 125
    :cond_4
    move-wide/from16 v10, p9

    .line 126
    .line 127
    :goto_4
    and-int/lit8 v0, p15, 0x20

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 132
    .line 133
    invoke-virtual {v0, v15, v1}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const v1, 0x3f0a3d71    # 0.54f

    .line 138
    .line 139
    .line 140
    mul-float/2addr v0, v1

    .line 141
    const/16 v1, 0xe

    .line 142
    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    const/16 v16, 0x0

    .line 147
    .line 148
    move-wide/from16 p1, v6

    .line 149
    .line 150
    move/from16 p3, v0

    .line 151
    .line 152
    move/from16 p4, v13

    .line 153
    .line 154
    move/from16 p5, v14

    .line 155
    .line 156
    move/from16 p6, v16

    .line 157
    .line 158
    move/from16 p7, v1

    .line 159
    .line 160
    move-object/from16 p8, v12

    .line 161
    .line 162
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    move-wide v12, v0

    .line 167
    goto :goto_5

    .line 168
    :cond_5
    move-wide/from16 v12, p11

    .line 169
    .line 170
    :goto_5
    const v0, 0x3ffffe

    .line 171
    .line 172
    .line 173
    and-int v14, p14, v0

    .line 174
    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    move-object/from16 v0, p0

    .line 178
    .line 179
    move-wide v1, v2

    .line 180
    move-wide v3, v4

    .line 181
    move-wide v5, v6

    .line 182
    move-wide v7, v8

    .line 183
    move-wide v9, v10

    .line 184
    move-wide v11, v12

    .line 185
    move-object/from16 v13, p13

    .line 186
    .line 187
    move/from16 v15, v16

    .line 188
    .line 189
    invoke-virtual/range {v0 .. v15}, Landroidx/compose/material/ChipDefaults;->chipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ChipColors;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface/range {p13 .. p13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 194
    .line 195
    .line 196
    return-object v0
.end method

.method public final outlinedFilterChipColors-J08w3-E(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SelectableChipColors;
    .locals 26
    .param p19    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p19

    .line 2
    .line 3
    move/from16 v1, p21

    .line 4
    .line 5
    const v2, 0x14acf093

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    move-wide v7, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide/from16 v7, p1

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 35
    .line 36
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    const/16 v15, 0xe

    .line 45
    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    const v11, 0x3f5eb852    # 0.87f

    .line 49
    .line 50
    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-wide/from16 v4, p3

    .line 60
    .line 61
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    const/16 v15, 0xe

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const v11, 0x3f0a3d71    # 0.54f

    .line 70
    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v14, 0x0

    .line 75
    move-wide v9, v4

    .line 76
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    move-wide v11, v9

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move-wide/from16 v11, p5

    .line 83
    .line 84
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    move-wide v13, v7

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-wide/from16 v13, p7

    .line 91
    .line 92
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 97
    .line 98
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const v6, 0x3f5eb852    # 0.87f

    .line 103
    .line 104
    .line 105
    mul-float/2addr v2, v6

    .line 106
    const/16 v6, 0xe

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    move-wide/from16 p1, v4

    .line 114
    .line 115
    move/from16 p3, v2

    .line 116
    .line 117
    move/from16 p4, v10

    .line 118
    .line 119
    move/from16 p5, v15

    .line 120
    .line 121
    move/from16 p6, v16

    .line 122
    .line 123
    move/from16 p7, v6

    .line 124
    .line 125
    move-object/from16 p8, v9

    .line 126
    .line 127
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v9

    .line 131
    move-wide v15, v9

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    move-wide/from16 v15, p9

    .line 134
    .line 135
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 136
    .line 137
    if-eqz v2, :cond_5

    .line 138
    .line 139
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 140
    .line 141
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    const v6, 0x3f0a3d71    # 0.54f

    .line 146
    .line 147
    .line 148
    mul-float/2addr v2, v6

    .line 149
    const/16 v6, 0xe

    .line 150
    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    move-wide/from16 p1, v11

    .line 158
    .line 159
    move/from16 p3, v2

    .line 160
    .line 161
    move/from16 p4, v10

    .line 162
    .line 163
    move/from16 p5, v17

    .line 164
    .line 165
    move/from16 p6, v18

    .line 166
    .line 167
    move/from16 p7, v6

    .line 168
    .line 169
    move-object/from16 p8, v9

    .line 170
    .line 171
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    move-wide/from16 v17, v9

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_5
    move-wide/from16 v17, p11

    .line 179
    .line 180
    :goto_5
    and-int/lit8 v2, v1, 0x40

    .line 181
    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 185
    .line 186
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 191
    .line 192
    .line 193
    move-result-wide v9

    .line 194
    const/16 v2, 0xe

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    const v19, 0x3e23d70a    # 0.16f

    .line 198
    .line 199
    .line 200
    const/16 v20, 0x0

    .line 201
    .line 202
    const/16 v21, 0x0

    .line 203
    .line 204
    const/16 v22, 0x0

    .line 205
    .line 206
    move-wide/from16 p1, v9

    .line 207
    .line 208
    move/from16 p3, v19

    .line 209
    .line 210
    move/from16 p4, v20

    .line 211
    .line 212
    move/from16 p5, v21

    .line 213
    .line 214
    move/from16 p6, v22

    .line 215
    .line 216
    move/from16 p7, v2

    .line 217
    .line 218
    move-object/from16 p8, v6

    .line 219
    .line 220
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 221
    .line 222
    .line 223
    move-result-wide v9

    .line 224
    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 225
    .line 226
    .line 227
    move-result-wide v9

    .line 228
    move-wide/from16 v19, v9

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_6
    move-wide/from16 v19, p13

    .line 232
    .line 233
    :goto_6
    and-int/lit16 v2, v1, 0x80

    .line 234
    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 238
    .line 239
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 244
    .line 245
    .line 246
    move-result-wide v9

    .line 247
    const/16 v2, 0xe

    .line 248
    .line 249
    const/4 v6, 0x0

    .line 250
    const v21, 0x3e23d70a    # 0.16f

    .line 251
    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    const/16 v23, 0x0

    .line 256
    .line 257
    const/16 v24, 0x0

    .line 258
    .line 259
    move-wide/from16 p1, v9

    .line 260
    .line 261
    move/from16 p3, v21

    .line 262
    .line 263
    move/from16 p4, v22

    .line 264
    .line 265
    move/from16 p5, v23

    .line 266
    .line 267
    move/from16 p6, v24

    .line 268
    .line 269
    move/from16 p7, v2

    .line 270
    .line 271
    move-object/from16 p8, v6

    .line 272
    .line 273
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 274
    .line 275
    .line 276
    move-result-wide v9

    .line 277
    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 278
    .line 279
    .line 280
    move-result-wide v9

    .line 281
    move-wide/from16 v21, v9

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_7
    move-wide/from16 v21, p15

    .line 285
    .line 286
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 287
    .line 288
    if-eqz v1, :cond_8

    .line 289
    .line 290
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 291
    .line 292
    invoke-virtual {v1, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 297
    .line 298
    .line 299
    move-result-wide v1

    .line 300
    const/16 v3, 0xe

    .line 301
    .line 302
    const/4 v6, 0x0

    .line 303
    const v9, 0x3e23d70a    # 0.16f

    .line 304
    .line 305
    .line 306
    const/4 v10, 0x0

    .line 307
    const/16 v23, 0x0

    .line 308
    .line 309
    const/16 v24, 0x0

    .line 310
    .line 311
    move-wide/from16 p1, v1

    .line 312
    .line 313
    move/from16 p3, v9

    .line 314
    .line 315
    move/from16 p4, v10

    .line 316
    .line 317
    move/from16 p5, v23

    .line 318
    .line 319
    move/from16 p6, v24

    .line 320
    .line 321
    move/from16 p7, v3

    .line 322
    .line 323
    move-object/from16 p8, v6

    .line 324
    .line 325
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v1

    .line 329
    invoke-static {v1, v2, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    move-wide/from16 v23, v1

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_8
    move-wide/from16 v23, p17

    .line 337
    .line 338
    :goto_8
    new-instance v1, Landroidx/compose/material/DefaultSelectableChipColors;

    .line 339
    .line 340
    move-object v6, v1

    .line 341
    const/16 v25, 0x0

    .line 342
    .line 343
    move-wide v9, v4

    .line 344
    invoke-direct/range {v6 .. v25}, Landroidx/compose/material/DefaultSelectableChipColors;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 345
    .line 346
    .line 347
    invoke-interface/range {p19 .. p19}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 348
    .line 349
    .line 350
    return-object v1
.end method
