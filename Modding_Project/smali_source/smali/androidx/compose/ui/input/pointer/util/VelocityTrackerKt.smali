.class public final Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final AssumePointerMoveStoppedMilliseconds:I = 0x28

.field private static final DefaultWeight:F = 1.0f

.field private static final HistorySize:I = 0x14

.field private static final HorizonMilliseconds:I = 0x64

.field private static final MinSampleSize:I = 0x3


# direct methods
.method public static final synthetic access$kineticEnergyToVelocity(F)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->kineticEnergyToVelocity(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 8
    .param p0    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    invoke-virtual {p0, v4, v5, v6, v7}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private static final kineticEnergyToVelocity(F)F
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    int-to-float v1, v1

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    mul-float/2addr v1, p0

    .line 12
    float-to-double v1, v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    double-to-float p0, v1

    .line 18
    mul-float/2addr v0, p0

    .line 19
    return v0
.end method

.method public static final polyFitLeastSquares(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    .locals 18
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroidx/compose/ui/input/pointer/util/PolynomialFit;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "x"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "y"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-lt v2, v3, :cond_15

    .line 19
    .line 20
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ne v4, v5, :cond_14

    .line 29
    .line 30
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_13

    .line 35
    .line 36
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-lt v2, v4, :cond_0

    .line 41
    .line 42
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sub-int/2addr v4, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v4, v2

    .line 49
    :goto_0
    add-int/2addr v2, v3

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    move v7, v6

    .line 57
    :goto_1
    const/4 v8, 0x0

    .line 58
    if-ge v7, v2, :cond_1

    .line 59
    .line 60
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/lit8 v7, v4, 0x1

    .line 75
    .line 76
    new-instance v9, Landroidx/compose/ui/input/pointer/util/Matrix;

    .line 77
    .line 78
    invoke-direct {v9, v7, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 79
    .line 80
    .line 81
    move v10, v6

    .line 82
    :goto_2
    const/high16 v11, 0x3f800000    # 1.0f

    .line 83
    .line 84
    if-ge v10, v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v9, v6, v10, v11}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 87
    .line 88
    .line 89
    move v11, v3

    .line 90
    :goto_3
    if-ge v11, v7, :cond_2

    .line 91
    .line 92
    add-int/lit8 v12, v11, -0x1

    .line 93
    .line 94
    invoke-virtual {v9, v12, v10}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    check-cast v13, Ljava/lang/Number;

    .line 103
    .line 104
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    mul-float/2addr v12, v13

    .line 109
    invoke-virtual {v9, v11, v10, v12}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v11, v11, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    new-instance v10, Landroidx/compose/ui/input/pointer/util/Matrix;

    .line 119
    .line 120
    invoke-direct {v10, v7, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 121
    .line 122
    .line 123
    new-instance v12, Landroidx/compose/ui/input/pointer/util/Matrix;

    .line 124
    .line 125
    invoke-direct {v12, v7, v7}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 126
    .line 127
    .line 128
    move v13, v6

    .line 129
    :goto_4
    if-ge v13, v7, :cond_b

    .line 130
    .line 131
    move v14, v6

    .line 132
    :goto_5
    if-ge v14, v2, :cond_4

    .line 133
    .line 134
    invoke-virtual {v9, v13, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    invoke-virtual {v10, v13, v14, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v14, v14, 0x1

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_4
    move v14, v6

    .line 145
    :goto_6
    if-ge v14, v13, :cond_6

    .line 146
    .line 147
    invoke-virtual {v10, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    invoke-virtual {v10, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v15, v3}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    move v15, v6

    .line 160
    :goto_7
    if-ge v15, v2, :cond_5

    .line 161
    .line 162
    invoke-virtual {v10, v13, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 163
    .line 164
    .line 165
    move-result v16

    .line 166
    invoke-virtual {v10, v14, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 167
    .line 168
    .line 169
    move-result v17

    .line 170
    mul-float v17, v17, v3

    .line 171
    .line 172
    sub-float v8, v16, v17

    .line 173
    .line 174
    invoke-virtual {v10, v13, v15, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v15, v15, 0x1

    .line 178
    .line 179
    const/4 v8, 0x0

    .line 180
    goto :goto_7

    .line 181
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    const/4 v8, 0x0

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    invoke-virtual {v10, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/Vector;->norm()F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    float-to-double v14, v3

    .line 195
    const-wide v16, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    cmpg-double v8, v14, v16

    .line 201
    .line 202
    if-ltz v8, :cond_a

    .line 203
    .line 204
    div-float v3, v11, v3

    .line 205
    .line 206
    move v8, v6

    .line 207
    :goto_8
    if-ge v8, v2, :cond_7

    .line 208
    .line 209
    invoke-virtual {v10, v13, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    mul-float/2addr v14, v3

    .line 214
    invoke-virtual {v10, v13, v8, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v8, v8, 0x1

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_7
    move v3, v6

    .line 221
    :goto_9
    if-ge v3, v7, :cond_9

    .line 222
    .line 223
    if-ge v3, v13, :cond_8

    .line 224
    .line 225
    const/4 v8, 0x0

    .line 226
    goto :goto_a

    .line 227
    :cond_8
    invoke-virtual {v10, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-virtual {v9, v3}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    invoke-virtual {v8, v14}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    :goto_a
    invoke-virtual {v12, v13, v3, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 240
    .line 241
    .line 242
    add-int/lit8 v3, v3, 0x1

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    const/4 v8, 0x0

    .line 249
    goto :goto_4

    .line 250
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 251
    .line 252
    const-string v1, "Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means"

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_b
    new-instance v3, Landroidx/compose/ui/input/pointer/util/Vector;

    .line 259
    .line 260
    invoke-direct {v3, v2}, Landroidx/compose/ui/input/pointer/util/Vector;-><init>(I)V

    .line 261
    .line 262
    .line 263
    move v8, v6

    .line 264
    :goto_b
    if-ge v8, v2, :cond_c

    .line 265
    .line 266
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    check-cast v9, Ljava/lang/Number;

    .line 271
    .line 272
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    mul-float/2addr v9, v11

    .line 277
    invoke-virtual {v3, v8, v9}, Landroidx/compose/ui/input/pointer/util/Vector;->set(IF)V

    .line 278
    .line 279
    .line 280
    add-int/lit8 v8, v8, 0x1

    .line 281
    .line 282
    goto :goto_b

    .line 283
    :cond_c
    move v8, v4

    .line 284
    :goto_c
    const/4 v9, -0x1

    .line 285
    if-ge v9, v8, :cond_e

    .line 286
    .line 287
    invoke-virtual {v10, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    invoke-virtual {v9, v3}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-interface {v5, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    add-int/lit8 v9, v8, 0x1

    .line 303
    .line 304
    if-gt v9, v4, :cond_d

    .line 305
    .line 306
    move v13, v4

    .line 307
    :goto_d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    check-cast v14, Ljava/lang/Number;

    .line 312
    .line 313
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    invoke-virtual {v12, v8, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 318
    .line 319
    .line 320
    move-result v15

    .line 321
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v16

    .line 325
    check-cast v16, Ljava/lang/Number;

    .line 326
    .line 327
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    .line 328
    .line 329
    .line 330
    move-result v16

    .line 331
    mul-float v15, v15, v16

    .line 332
    .line 333
    sub-float/2addr v14, v15

    .line 334
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 335
    .line 336
    .line 337
    move-result-object v14

    .line 338
    invoke-interface {v5, v8, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    if-eq v13, v9, :cond_d

    .line 342
    .line 343
    add-int/lit8 v13, v13, -0x1

    .line 344
    .line 345
    goto :goto_d

    .line 346
    :cond_d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    check-cast v9, Ljava/lang/Number;

    .line 351
    .line 352
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    invoke-virtual {v12, v8, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    .line 357
    .line 358
    .line 359
    move-result v13

    .line 360
    div-float/2addr v9, v13

    .line 361
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    invoke-interface {v5, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    add-int/lit8 v8, v8, -0x1

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_e
    move v3, v6

    .line 372
    const/4 v4, 0x0

    .line 373
    :goto_e
    if-ge v3, v2, :cond_f

    .line 374
    .line 375
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    check-cast v8, Ljava/lang/Number;

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    add-float/2addr v4, v8

    .line 386
    add-int/lit8 v3, v3, 0x1

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_f
    int-to-float v3, v2

    .line 390
    div-float/2addr v4, v3

    .line 391
    move v9, v6

    .line 392
    const/4 v3, 0x0

    .line 393
    const/4 v8, 0x0

    .line 394
    :goto_f
    if-ge v9, v2, :cond_11

    .line 395
    .line 396
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    check-cast v10, Ljava/lang/Number;

    .line 401
    .line 402
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 403
    .line 404
    .line 405
    move-result v10

    .line 406
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    check-cast v12, Ljava/lang/Number;

    .line 411
    .line 412
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 413
    .line 414
    .line 415
    move-result v12

    .line 416
    sub-float/2addr v10, v12

    .line 417
    move v13, v11

    .line 418
    const/4 v12, 0x1

    .line 419
    :goto_10
    if-ge v12, v7, :cond_10

    .line 420
    .line 421
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v14

    .line 425
    check-cast v14, Ljava/lang/Number;

    .line 426
    .line 427
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 428
    .line 429
    .line 430
    move-result v14

    .line 431
    mul-float/2addr v13, v14

    .line 432
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v14

    .line 436
    check-cast v14, Ljava/lang/Number;

    .line 437
    .line 438
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 439
    .line 440
    .line 441
    move-result v14

    .line 442
    mul-float/2addr v14, v13

    .line 443
    sub-float/2addr v10, v14

    .line 444
    add-int/lit8 v12, v12, 0x1

    .line 445
    .line 446
    goto :goto_10

    .line 447
    :cond_10
    mul-float v12, v10, v11

    .line 448
    .line 449
    mul-float/2addr v12, v10

    .line 450
    add-float/2addr v3, v12

    .line 451
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    check-cast v10, Ljava/lang/Number;

    .line 456
    .line 457
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    sub-float/2addr v10, v4

    .line 462
    mul-float v12, v10, v11

    .line 463
    .line 464
    mul-float/2addr v12, v10

    .line 465
    add-float/2addr v8, v12

    .line 466
    add-int/lit8 v9, v9, 0x1

    .line 467
    .line 468
    goto :goto_f

    .line 469
    :cond_11
    const v0, 0x358637bd    # 1.0E-6f

    .line 470
    .line 471
    .line 472
    cmpg-float v0, v8, v0

    .line 473
    .line 474
    if-gtz v0, :cond_12

    .line 475
    .line 476
    goto :goto_11

    .line 477
    :cond_12
    div-float/2addr v3, v8

    .line 478
    sub-float/2addr v11, v3

    .line 479
    :goto_11
    new-instance v0, Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    .line 480
    .line 481
    invoke-direct {v0, v5, v11}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;-><init>(Ljava/util/List;F)V

    .line 482
    .line 483
    .line 484
    return-object v0

    .line 485
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 486
    .line 487
    const-string v1, "At least one point must be provided"

    .line 488
    .line 489
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v0

    .line 493
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 494
    .line 495
    const-string v1, "x and y must be the same length"

    .line 496
    .line 497
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v0

    .line 501
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    const-string v1, "The degree must be at positive integer"

    .line 504
    .line 505
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v0
.end method
