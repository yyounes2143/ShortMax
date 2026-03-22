.class public final Landroidx/compose/material/icons/rounded/BuildKt;
.super Ljava/lang/Object;
.source "Build.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _build:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getBuild(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Rounded.Build"

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
    const v0, 0x414170a4    # 12.09f

    .line 80
    .line 81
    .line 82
    const v1, 0x403a3d71    # 2.91f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    .line 87
    .line 88
    const v5, 0x4094cccd    # 4.65f

    .line 89
    .line 90
    .line 91
    const v6, 0x3fd5c28f    # 1.67f

    .line 92
    .line 93
    .line 94
    const v1, 0x412147ae    # 10.08f

    .line 95
    .line 96
    .line 97
    const v2, 0x3f666666    # 0.9f

    .line 98
    .line 99
    .line 100
    const v3, 0x40e23d71    # 7.07f

    .line 101
    .line 102
    .line 103
    const v4, 0x3efae148    # 0.49f

    .line 104
    .line 105
    .line 106
    move-object v0, v7

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    .line 109
    .line 110
    const v0, 0x41047ae1    # 8.28f

    .line 111
    .line 112
    .line 113
    const v1, 0x40a9999a    # 5.3f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    const v6, 0x3fb47ae1    # 1.41f

    .line 121
    .line 122
    .line 123
    const v1, 0x3ec7ae14    # 0.39f

    .line 124
    .line 125
    .line 126
    const v2, 0x3ec7ae14    # 0.39f

    .line 127
    .line 128
    .line 129
    const v3, 0x3ec7ae14    # 0.39f

    .line 130
    .line 131
    .line 132
    const v4, 0x3f828f5c    # 1.02f

    .line 133
    .line 134
    .line 135
    move-object v0, v7

    .line 136
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    .line 138
    .line 139
    const v0, 0x40d6147b    # 6.69f

    .line 140
    .line 141
    .line 142
    const v1, 0x4104cccd    # 8.3f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
    .line 147
    .line 148
    const v5, -0x404b851f    # -1.41f

    .line 149
    .line 150
    .line 151
    const/4 v6, 0x0

    .line 152
    const v1, -0x413851ec    # -0.39f

    .line 153
    .line 154
    .line 155
    const v2, 0x3ecccccd    # 0.4f

    .line 156
    .line 157
    .line 158
    const v3, -0x407d70a4    # -1.02f

    .line 159
    .line 160
    .line 161
    const v4, 0x3ecccccd    # 0.4f

    .line 162
    .line 163
    .line 164
    move-object v0, v7

    .line 165
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    .line 167
    .line 168
    const v0, 0x3fd33333    # 1.65f

    .line 169
    .line 170
    .line 171
    const v1, 0x409570a4    # 4.67f

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    .line 176
    .line 177
    const v5, 0x4039999a    # 2.9f

    .line 178
    .line 179
    .line 180
    const v6, 0x4141999a    # 12.1f

    .line 181
    .line 182
    .line 183
    const v1, 0x3ef5c28f    # 0.48f

    .line 184
    .line 185
    .line 186
    const v2, 0x40e33333    # 7.1f

    .line 187
    .line 188
    .line 189
    const v3, 0x3f63d70a    # 0.89f

    .line 190
    .line 191
    .line 192
    const v4, 0x412170a4    # 10.09f

    .line 193
    .line 194
    .line 195
    move-object v0, v7

    .line 196
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 197
    .line 198
    .line 199
    const v5, 0x40dc7ae1    # 6.89f

    .line 200
    .line 201
    .line 202
    const v6, 0x3fbd70a4    # 1.48f

    .line 203
    .line 204
    .line 205
    const v1, 0x3fee147b    # 1.86f

    .line 206
    .line 207
    .line 208
    const v2, 0x3fee147b    # 1.86f

    .line 209
    .line 210
    .line 211
    const v3, 0x40928f5c    # 4.58f

    .line 212
    .line 213
    .line 214
    const v4, 0x40166666    # 2.35f

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 218
    .line 219
    .line 220
    const v0, 0x40feb852    # 7.96f

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 224
    .line 225
    .line 226
    const v5, 0x406d70a4    # 3.71f

    .line 227
    .line 228
    .line 229
    const/4 v6, 0x0

    .line 230
    const v1, 0x3f83d70a    # 1.03f

    .line 231
    .line 232
    .line 233
    const v2, 0x3f83d70a    # 1.03f

    .line 234
    .line 235
    .line 236
    const v3, 0x402c28f6    # 2.69f

    .line 237
    .line 238
    .line 239
    const v4, 0x3f83d70a    # 1.03f

    .line 240
    .line 241
    .line 242
    move-object v0, v7

    .line 243
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 244
    .line 245
    .line 246
    const/4 v5, 0x0

    .line 247
    const v6, -0x3f928f5c    # -3.71f

    .line 248
    .line 249
    .line 250
    const v2, -0x407c28f6    # -1.03f

    .line 251
    .line 252
    .line 253
    const v3, 0x3f83d70a    # 1.03f

    .line 254
    .line 255
    .line 256
    const v4, -0x3fd3d70a    # -2.69f

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 260
    .line 261
    .line 262
    const v0, 0x4158a3d7    # 13.54f

    .line 263
    .line 264
    .line 265
    const v1, 0x411e6666    # 9.9f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 269
    .line 270
    .line 271
    const v5, -0x40466666    # -1.45f

    .line 272
    .line 273
    .line 274
    const v6, -0x3f2051ec    # -6.99f

    .line 275
    .line 276
    .line 277
    const v1, 0x3f6b851f    # 0.92f

    .line 278
    .line 279
    .line 280
    const v2, -0x3fea3d71    # -2.34f

    .line 281
    .line 282
    .line 283
    const v3, 0x3ee147ae    # 0.44f

    .line 284
    .line 285
    .line 286
    const v4, -0x3f5ccccd    # -5.1f

    .line 287
    .line 288
    .line 289
    move-object v0, v7

    .line 290
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    const/16 v27, 0x3800

    .line 301
    .line 302
    const/16 v28, 0x0

    .line 303
    .line 304
    const-string v15, ""

    .line 305
    .line 306
    const/high16 v17, 0x3f800000    # 1.0f

    .line 307
    .line 308
    const/16 v18, 0x0

    .line 309
    .line 310
    const/high16 v19, 0x3f800000    # 1.0f

    .line 311
    .line 312
    const/high16 v20, 0x3f800000    # 1.0f

    .line 313
    .line 314
    const/high16 v23, 0x3f800000    # 1.0f

    .line 315
    .line 316
    const/16 v24, 0x0

    .line 317
    .line 318
    const/16 v25, 0x0

    .line 319
    .line 320
    const/16 v26, 0x0

    .line 321
    .line 322
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    sput-object v0, Landroidx/compose/material/icons/rounded/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 331
    .line 332
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    return-object v0
.end method
