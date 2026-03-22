.class public final Landroidx/compose/material/icons/outlined/RefreshKt;
.super Ljava/lang/Object;
.source "Refresh.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _refresh:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getRefresh(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Outlined;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/RefreshKt;->_refresh:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Refresh"

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
    const v0, 0x418d3333    # 17.65f

    .line 80
    .line 81
    .line 82
    const v1, 0x40cb3333    # 6.35f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const/high16 v5, 0x41400000    # 12.0f

    .line 89
    .line 90
    const/high16 v6, 0x40800000    # 4.0f

    .line 91
    .line 92
    const v1, 0x4181999a    # 16.2f

    .line 93
    .line 94
    .line 95
    const v2, 0x409ccccd    # 4.9f

    .line 96
    .line 97
    .line 98
    const v3, 0x41635c29    # 14.21f

    .line 99
    .line 100
    .line 101
    const/high16 v4, 0x40800000    # 4.0f

    .line 102
    .line 103
    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    .line 106
    .line 107
    const v5, -0x3f0051ec    # -7.99f

    .line 108
    .line 109
    .line 110
    const/high16 v6, 0x41000000    # 8.0f

    .line 111
    .line 112
    const v1, -0x3f728f5c    # -4.42f

    .line 113
    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    const v3, -0x3f0051ec    # -7.99f

    .line 117
    .line 118
    .line 119
    const v4, 0x40651eb8    # 3.58f

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    .line 124
    .line 125
    const v0, 0x40647ae1    # 3.57f

    .line 126
    .line 127
    .line 128
    const v1, 0x40ffae14    # 7.99f

    .line 129
    .line 130
    .line 131
    const/high16 v2, 0x41000000    # 8.0f

    .line 132
    .line 133
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    .line 135
    .line 136
    const v5, 0x40f75c29    # 7.73f

    .line 137
    .line 138
    .line 139
    const/high16 v6, -0x3f400000    # -6.0f

    .line 140
    .line 141
    const v1, 0x406eb852    # 3.73f

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    const v3, 0x40dae148    # 6.84f

    .line 146
    .line 147
    .line 148
    const v4, -0x3fdccccd    # -2.55f

    .line 149
    .line 150
    .line 151
    move-object v0, v7

    .line 152
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    .line 154
    .line 155
    const v0, -0x3ffae148    # -2.08f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    .line 160
    .line 161
    const v5, -0x3f4b3333    # -5.65f

    .line 162
    .line 163
    .line 164
    const/high16 v6, 0x40800000    # 4.0f

    .line 165
    .line 166
    const v1, -0x40ae147b    # -0.82f

    .line 167
    .line 168
    .line 169
    const v2, 0x40151eb8    # 2.33f

    .line 170
    .line 171
    .line 172
    const v3, -0x3fbd70a4    # -3.04f

    .line 173
    .line 174
    .line 175
    const/high16 v4, 0x40800000    # 4.0f

    .line 176
    .line 177
    move-object v0, v7

    .line 178
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 179
    .line 180
    .line 181
    const/high16 v5, -0x3f400000    # -6.0f

    .line 182
    .line 183
    const/high16 v6, -0x3f400000    # -6.0f

    .line 184
    .line 185
    const v1, -0x3fac28f6    # -3.31f

    .line 186
    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    const/high16 v3, -0x3f400000    # -6.0f

    .line 190
    .line 191
    const v4, -0x3fd3d70a    # -2.69f

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 195
    .line 196
    .line 197
    const v0, 0x402c28f6    # 2.69f

    .line 198
    .line 199
    .line 200
    const/high16 v1, 0x40c00000    # 6.0f

    .line 201
    .line 202
    const/high16 v2, -0x3f400000    # -6.0f

    .line 203
    .line 204
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 205
    .line 206
    .line 207
    const v5, 0x40870a3d    # 4.22f

    .line 208
    .line 209
    .line 210
    const v6, 0x3fe3d70a    # 1.78f

    .line 211
    .line 212
    .line 213
    const v1, 0x3fd47ae1    # 1.66f

    .line 214
    .line 215
    .line 216
    const/4 v2, 0x0

    .line 217
    const v3, 0x4048f5c3    # 3.14f

    .line 218
    .line 219
    .line 220
    const v4, 0x3f30a3d7    # 0.69f

    .line 221
    .line 222
    .line 223
    move-object v0, v7

    .line 224
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 225
    .line 226
    .line 227
    const/high16 v0, 0x41500000    # 13.0f

    .line 228
    .line 229
    const/high16 v1, 0x41300000    # 11.0f

    .line 230
    .line 231
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 232
    .line 233
    .line 234
    const/high16 v0, 0x40e00000    # 7.0f

    .line 235
    .line 236
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 237
    .line 238
    .line 239
    const/high16 v0, 0x40800000    # 4.0f

    .line 240
    .line 241
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 242
    .line 243
    .line 244
    const v0, -0x3fe9999a    # -2.35f

    .line 245
    .line 246
    .line 247
    const v1, 0x40166666    # 2.35f

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    const/16 v27, 0x3800

    .line 261
    .line 262
    const/16 v28, 0x0

    .line 263
    .line 264
    const-string v15, ""

    .line 265
    .line 266
    const/high16 v17, 0x3f800000    # 1.0f

    .line 267
    .line 268
    const/16 v18, 0x0

    .line 269
    .line 270
    const/high16 v19, 0x3f800000    # 1.0f

    .line 271
    .line 272
    const/high16 v20, 0x3f800000    # 1.0f

    .line 273
    .line 274
    const/high16 v23, 0x3f800000    # 1.0f

    .line 275
    .line 276
    const/16 v24, 0x0

    .line 277
    .line 278
    const/16 v25, 0x0

    .line 279
    .line 280
    const/16 v26, 0x0

    .line 281
    .line 282
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    sput-object v0, Landroidx/compose/material/icons/outlined/RefreshKt;->_refresh:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 291
    .line 292
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    return-object v0
.end method
