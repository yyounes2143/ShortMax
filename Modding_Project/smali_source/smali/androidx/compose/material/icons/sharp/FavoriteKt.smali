.class public final Landroidx/compose/material/icons/sharp/FavoriteKt;
.super Ljava/lang/Object;
.source "Favorite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _favorite:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getFavorite(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Sharp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/compose/material/icons/sharp/FavoriteKt;->_favorite:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 17
    .line 18
    move-object v12, v1

    .line 19
    const/high16 v0, 0x41c00000    # 24.0f

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/16 v10, 0x60

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const-string v2, "Sharp.Favorite"

    .line 33
    .line 34
    const/high16 v5, 0x41c00000    # 24.0f

    .line 35
    .line 36
    const/high16 v6, 0x41c00000    # 24.0f

    .line 37
    .line 38
    const-wide/16 v7, 0x0

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 49
    .line 50
    move-object/from16 v16, v0

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 65
    .line 66
    .line 67
    move-result v21

    .line 68
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 71
    .line 72
    .line 73
    move-result v22

    .line 74
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    .line 76
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const/high16 v8, 0x41400000    # 12.0f

    .line 80
    .line 81
    const v9, 0x41aacccd    # 21.35f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    .line 86
    .line 87
    const v0, -0x40466666    # -1.45f

    .line 88
    .line 89
    .line 90
    const v1, -0x40570a3d    # -1.32f

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    .line 95
    .line 96
    const/high16 v5, 0x40000000    # 2.0f

    .line 97
    .line 98
    const/high16 v6, 0x41080000    # 8.5f

    .line 99
    .line 100
    const v1, 0x40accccd    # 5.4f

    .line 101
    .line 102
    .line 103
    const v2, 0x4175c28f    # 15.36f

    .line 104
    .line 105
    .line 106
    const/high16 v3, 0x40000000    # 2.0f

    .line 107
    .line 108
    const v4, 0x41447ae1    # 12.28f

    .line 109
    .line 110
    .line 111
    move-object v0, v7

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    .line 114
    .line 115
    const/high16 v5, 0x40f00000    # 7.5f

    .line 116
    .line 117
    const/high16 v6, 0x40400000    # 3.0f

    .line 118
    .line 119
    const/high16 v1, 0x40000000    # 2.0f

    .line 120
    .line 121
    const v2, 0x40ad70a4    # 5.42f

    .line 122
    .line 123
    .line 124
    const v3, 0x408d70a4    # 4.42f

    .line 125
    .line 126
    .line 127
    const/high16 v4, 0x40400000    # 3.0f

    .line 128
    .line 129
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    .line 131
    .line 132
    const/high16 v5, 0x40900000    # 4.5f

    .line 133
    .line 134
    const v6, 0x4005c28f    # 2.09f

    .line 135
    .line 136
    .line 137
    const v1, 0x3fdeb852    # 1.74f

    .line 138
    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    const v3, 0x405a3d71    # 3.41f

    .line 142
    .line 143
    .line 144
    const v4, 0x3f4f5c29    # 0.81f

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    .line 149
    .line 150
    const/high16 v5, 0x41840000    # 16.5f

    .line 151
    .line 152
    const/high16 v6, 0x40400000    # 3.0f

    .line 153
    .line 154
    const v1, 0x415170a4    # 13.09f

    .line 155
    .line 156
    .line 157
    const v2, 0x4073d70a    # 3.81f

    .line 158
    .line 159
    .line 160
    const v3, 0x416c28f6    # 14.76f

    .line 161
    .line 162
    .line 163
    const/high16 v4, 0x40400000    # 3.0f

    .line 164
    .line 165
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    .line 167
    .line 168
    const/high16 v5, 0x41b00000    # 22.0f

    .line 169
    .line 170
    const/high16 v6, 0x41080000    # 8.5f

    .line 171
    .line 172
    const v1, 0x419ca3d7    # 19.58f

    .line 173
    .line 174
    .line 175
    const/high16 v2, 0x40400000    # 3.0f

    .line 176
    .line 177
    const/high16 v3, 0x41b00000    # 22.0f

    .line 178
    .line 179
    const v4, 0x40ad70a4    # 5.42f

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 183
    .line 184
    .line 185
    const v5, -0x3ef73333    # -8.55f

    .line 186
    .line 187
    .line 188
    const v6, 0x4138a3d7    # 11.54f

    .line 189
    .line 190
    .line 191
    const/4 v1, 0x0

    .line 192
    const v2, 0x4071eb85    # 3.78f

    .line 193
    .line 194
    .line 195
    const v3, -0x3fa66666    # -3.4f

    .line 196
    .line 197
    .line 198
    const v4, 0x40db851f    # 6.86f

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    const/16 v27, 0x3800

    .line 215
    .line 216
    const/16 v28, 0x0

    .line 217
    .line 218
    const-string v15, ""

    .line 219
    .line 220
    const/high16 v17, 0x3f800000    # 1.0f

    .line 221
    .line 222
    const/16 v18, 0x0

    .line 223
    .line 224
    const/high16 v19, 0x3f800000    # 1.0f

    .line 225
    .line 226
    const/high16 v20, 0x3f800000    # 1.0f

    .line 227
    .line 228
    const/high16 v23, 0x3f800000    # 1.0f

    .line 229
    .line 230
    const/16 v24, 0x0

    .line 231
    .line 232
    const/16 v25, 0x0

    .line 233
    .line 234
    const/16 v26, 0x0

    .line 235
    .line 236
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sput-object v0, Landroidx/compose/material/icons/sharp/FavoriteKt;->_favorite:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 245
    .line 246
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    return-object v0
.end method
