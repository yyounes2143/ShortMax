.class public final Landroidx/compose/material/icons/outlined/NotificationsKt;
.super Ljava/lang/Object;
.source "Notifications.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _notifications:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getNotifications(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
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
    sget-object v0, Landroidx/compose/material/icons/outlined/NotificationsKt;->_notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Notifications"

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
    const/high16 v0, 0x41400000    # 12.0f

    .line 80
    .line 81
    const/high16 v1, 0x41b00000    # 22.0f

    .line 82
    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    .line 85
    .line 86
    const/high16 v5, 0x40000000    # 2.0f

    .line 87
    .line 88
    const/high16 v6, -0x40000000    # -2.0f

    .line 89
    .line 90
    const v1, 0x3f8ccccd    # 1.1f

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/high16 v3, 0x40000000    # 2.0f

    .line 95
    .line 96
    const v4, -0x4099999a    # -0.9f

    .line 97
    .line 98
    .line 99
    move-object v0, v7

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    .line 102
    .line 103
    const/high16 v0, -0x3f800000    # -4.0f

    .line 104
    .line 105
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    .line 107
    .line 108
    const/high16 v6, 0x40000000    # 2.0f

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    const v2, 0x3f8ccccd    # 1.1f

    .line 112
    .line 113
    .line 114
    const v3, 0x3f666666    # 0.9f

    .line 115
    .line 116
    .line 117
    const/high16 v4, 0x40000000    # 2.0f

    .line 118
    .line 119
    move-object v0, v7

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    .line 125
    .line 126
    const/high16 v0, 0x41900000    # 18.0f

    .line 127
    .line 128
    const/high16 v8, 0x41800000    # 16.0f

    .line 129
    .line 130
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    .line 132
    .line 133
    const/high16 v0, -0x3f600000    # -5.0f

    .line 134
    .line 135
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    .line 137
    .line 138
    const/high16 v5, -0x3f700000    # -4.5f

    .line 139
    .line 140
    const v6, -0x3f35c28f    # -6.32f

    .line 141
    .line 142
    .line 143
    const v2, -0x3fbb851f    # -3.07f

    .line 144
    .line 145
    .line 146
    const v3, -0x402f5c29    # -1.63f

    .line 147
    .line 148
    .line 149
    const v4, -0x3f4b851f    # -5.64f

    .line 150
    .line 151
    .line 152
    move-object v0, v7

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    .line 155
    .line 156
    const/high16 v0, 0x41580000    # 13.5f

    .line 157
    .line 158
    const/high16 v9, 0x40800000    # 4.0f

    .line 159
    .line 160
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 161
    .line 162
    .line 163
    const/high16 v5, -0x40400000    # -1.5f

    .line 164
    .line 165
    const/high16 v6, -0x40400000    # -1.5f

    .line 166
    .line 167
    const v2, -0x40ab851f    # -0.83f

    .line 168
    .line 169
    .line 170
    const v3, -0x40d47ae1    # -0.67f

    .line 171
    .line 172
    .line 173
    const/high16 v4, -0x40400000    # -1.5f

    .line 174
    .line 175
    move-object v0, v7

    .line 176
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 177
    .line 178
    .line 179
    const v0, 0x3f2b851f    # 0.67f

    .line 180
    .line 181
    .line 182
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 183
    .line 184
    const/high16 v2, -0x40400000    # -1.5f

    .line 185
    .line 186
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    .line 188
    .line 189
    const v0, 0x3f2e147b    # 0.68f

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 193
    .line 194
    .line 195
    const/high16 v5, 0x40c00000    # 6.0f

    .line 196
    .line 197
    const/high16 v6, 0x41300000    # 11.0f

    .line 198
    .line 199
    const v1, 0x40f47ae1    # 7.64f

    .line 200
    .line 201
    .line 202
    const v2, 0x40ab851f    # 5.36f

    .line 203
    .line 204
    .line 205
    const/high16 v3, 0x40c00000    # 6.0f

    .line 206
    .line 207
    const v4, 0x40fd70a4    # 7.92f

    .line 208
    .line 209
    .line 210
    move-object v0, v7

    .line 211
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 212
    .line 213
    .line 214
    const/high16 v0, 0x40a00000    # 5.0f

    .line 215
    .line 216
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 217
    .line 218
    .line 219
    const/high16 v0, 0x40000000    # 2.0f

    .line 220
    .line 221
    const/high16 v1, -0x40000000    # -2.0f

    .line 222
    .line 223
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 224
    .line 225
    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    .line 228
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 232
    .line 233
    .line 234
    const/high16 v0, -0x40800000    # -1.0f

    .line 235
    .line 236
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 243
    .line 244
    .line 245
    const/high16 v0, 0x41880000    # 17.0f

    .line 246
    .line 247
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    .line 249
    .line 250
    const/high16 v1, 0x41000000    # 8.0f

    .line 251
    .line 252
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 253
    .line 254
    .line 255
    const/high16 v0, -0x3f400000    # -6.0f

    .line 256
    .line 257
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 258
    .line 259
    .line 260
    const/high16 v5, 0x40800000    # 4.0f

    .line 261
    .line 262
    const/high16 v6, -0x3f700000    # -4.5f

    .line 263
    .line 264
    const/4 v1, 0x0

    .line 265
    const v2, -0x3fe147ae    # -2.48f

    .line 266
    .line 267
    .line 268
    const v3, 0x3fc147ae    # 1.51f

    .line 269
    .line 270
    .line 271
    const/high16 v4, -0x3f700000    # -4.5f

    .line 272
    .line 273
    move-object v0, v7

    .line 274
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 275
    .line 276
    .line 277
    const v0, 0x400147ae    # 2.02f

    .line 278
    .line 279
    .line 280
    const/high16 v1, 0x40900000    # 4.5f

    .line 281
    .line 282
    invoke-virtual {v7, v9, v0, v9, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 283
    .line 284
    .line 285
    const/high16 v0, 0x40c00000    # 6.0f

    .line 286
    .line 287
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v13

    .line 297
    const/16 v27, 0x3800

    .line 298
    .line 299
    const/16 v28, 0x0

    .line 300
    .line 301
    const-string v15, ""

    .line 302
    .line 303
    const/high16 v17, 0x3f800000    # 1.0f

    .line 304
    .line 305
    const/16 v18, 0x0

    .line 306
    .line 307
    const/high16 v19, 0x3f800000    # 1.0f

    .line 308
    .line 309
    const/high16 v20, 0x3f800000    # 1.0f

    .line 310
    .line 311
    const/high16 v23, 0x3f800000    # 1.0f

    .line 312
    .line 313
    const/16 v24, 0x0

    .line 314
    .line 315
    const/16 v25, 0x0

    .line 316
    .line 317
    const/16 v26, 0x0

    .line 318
    .line 319
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sput-object v0, Landroidx/compose/material/icons/outlined/NotificationsKt;->_notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 328
    .line 329
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    return-object v0
.end method
