.class public final Landroidx/compose/material/icons/rounded/CheckCircleKt;
.super Ljava/lang/Object;
.source "CheckCircle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _checkCircle:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getCheckCircle(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Rounded;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/CheckCircleKt;->_checkCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.CheckCircle"

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
    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    .line 83
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v5, 0x40000000    # 2.0f

    .line 87
    .line 88
    const/high16 v6, 0x41400000    # 12.0f

    .line 89
    .line 90
    const v1, 0x40cf5c29    # 6.48f

    .line 91
    .line 92
    .line 93
    const/high16 v2, 0x40000000    # 2.0f

    .line 94
    .line 95
    const/high16 v3, 0x40000000    # 2.0f

    .line 96
    .line 97
    const v4, 0x40cf5c29    # 6.48f

    .line 98
    .line 99
    .line 100
    move-object v0, v7

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    .line 103
    .line 104
    const v0, 0x408f5c29    # 4.48f

    .line 105
    .line 106
    .line 107
    const/high16 v10, 0x41200000    # 10.0f

    .line 108
    .line 109
    invoke-virtual {v7, v0, v10, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    .line 111
    .line 112
    const v0, -0x3f70a3d7    # -4.48f

    .line 113
    .line 114
    .line 115
    const/high16 v1, -0x3ee00000    # -10.0f

    .line 116
    .line 117
    invoke-virtual {v7, v10, v0, v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    .line 119
    .line 120
    const v0, 0x418c28f6    # 17.52f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v0, v9, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    .line 128
    .line 129
    const v0, 0x4114a3d7    # 9.29f

    .line 130
    .line 131
    .line 132
    const v1, 0x418251ec    # 16.29f

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    .line 137
    .line 138
    const v0, 0x40b66666    # 5.7f

    .line 139
    .line 140
    .line 141
    const v1, 0x414b3333    # 12.7f

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 145
    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    const v6, -0x404b851f    # -1.41f

    .line 149
    .line 150
    .line 151
    const v1, -0x413851ec    # -0.39f

    .line 152
    .line 153
    .line 154
    const v2, -0x413851ec    # -0.39f

    .line 155
    .line 156
    .line 157
    const v3, -0x413851ec    # -0.39f

    .line 158
    .line 159
    .line 160
    const v4, -0x407d70a4    # -1.02f

    .line 161
    .line 162
    .line 163
    move-object v0, v7

    .line 164
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 165
    .line 166
    .line 167
    const v5, 0x3fb47ae1    # 1.41f

    .line 168
    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    const v1, 0x3ec7ae14    # 0.39f

    .line 172
    .line 173
    .line 174
    const v3, 0x3f828f5c    # 1.02f

    .line 175
    .line 176
    .line 177
    const v4, -0x413851ec    # -0.39f

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    .line 182
    .line 183
    const v0, 0x4162b852    # 14.17f

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    .line 188
    .line 189
    const v0, 0x40dc28f6    # 6.88f

    .line 190
    .line 191
    .line 192
    const v1, -0x3f23d70a    # -6.88f

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    .line 197
    .line 198
    const v1, 0x3ec7ae14    # 0.39f

    .line 199
    .line 200
    .line 201
    move-object v0, v7

    .line 202
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 203
    .line 204
    .line 205
    const/4 v5, 0x0

    .line 206
    const v6, 0x3fb47ae1    # 1.41f

    .line 207
    .line 208
    .line 209
    const v2, 0x3ec7ae14    # 0.39f

    .line 210
    .line 211
    .line 212
    const v3, 0x3ec7ae14    # 0.39f

    .line 213
    .line 214
    .line 215
    const v4, 0x3f828f5c    # 1.02f

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 219
    .line 220
    .line 221
    const v0, -0x3f0d1eb8    # -7.59f

    .line 222
    .line 223
    .line 224
    const v1, 0x40f2e148    # 7.59f

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 228
    .line 229
    .line 230
    const v5, -0x404b851f    # -1.41f

    .line 231
    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    const v1, -0x413d70a4    # -0.38f

    .line 235
    .line 236
    .line 237
    const v3, -0x407d70a4    # -1.02f

    .line 238
    .line 239
    .line 240
    const v4, 0x3ec7ae14    # 0.39f

    .line 241
    .line 242
    .line 243
    move-object v0, v7

    .line 244
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    const/16 v27, 0x3800

    .line 255
    .line 256
    const/16 v28, 0x0

    .line 257
    .line 258
    const-string v15, ""

    .line 259
    .line 260
    const/high16 v17, 0x3f800000    # 1.0f

    .line 261
    .line 262
    const/16 v18, 0x0

    .line 263
    .line 264
    const/high16 v19, 0x3f800000    # 1.0f

    .line 265
    .line 266
    const/high16 v20, 0x3f800000    # 1.0f

    .line 267
    .line 268
    const/high16 v23, 0x3f800000    # 1.0f

    .line 269
    .line 270
    const/16 v24, 0x0

    .line 271
    .line 272
    const/16 v25, 0x0

    .line 273
    .line 274
    const/16 v26, 0x0

    .line 275
    .line 276
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sput-object v0, Landroidx/compose/material/icons/rounded/CheckCircleKt;->_checkCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 285
    .line 286
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    return-object v0
.end method
