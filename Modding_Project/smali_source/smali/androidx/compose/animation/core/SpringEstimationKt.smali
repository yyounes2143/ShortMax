.class public final Landroidx/compose/animation/core/SpringEstimationKt;
.super Ljava/lang/Object;
.source "SpringEstimation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final estimateAnimationDurationMillis(DDDDD)J
    .locals 17

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p2

    .line 2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v6, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v8, p0

    .line 3
    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexQuadraticFormula(DDD)Lkotlin/Pair;

    move-result-object v8

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    .line 4
    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(Lkotlin/Pair;DDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(DDDDDD)J
    .locals 11

    mul-double v0, p0, p4

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    div-double v3, p2, v0

    move-wide v5, p4

    move-wide v7, p2

    move-wide v9, p0

    .line 6
    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexQuadraticFormula(DDD)Lkotlin/Pair;

    move-result-object v2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    .line 7
    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(Lkotlin/Pair;DDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(FFFFF)J
    .locals 10

    float-to-double v0, p0

    float-to-double v2, p1

    float-to-double v4, p2

    float-to-double v6, p3

    float-to-double v8, p4

    .line 1
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateAnimationDurationMillis(DDDDD)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final estimateCriticallyDamped(Lkotlin/Pair;DDD)D
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDD)D"
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p5

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    .line 10
    .line 11
    .line 12
    move-result-wide v12

    .line 13
    mul-double v2, v12, p1

    .line 14
    .line 15
    sub-double v14, p3, v2

    .line 16
    .line 17
    div-double v4, v0, p1

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    div-double/2addr v4, v12

    .line 28
    div-double v6, v0, v14

    .line 29
    .line 30
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    invoke-static {v6, v7, v12, v13}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateCriticallyDamped$t2Iterate(DD)D

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    div-double/2addr v6, v12

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    if-nez v8, :cond_0

    .line 51
    .line 52
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-nez v8, :cond_0

    .line 57
    .line 58
    move v8, v9

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move/from16 v8, v16

    .line 61
    .line 62
    :goto_0
    if-nez v8, :cond_1

    .line 63
    .line 64
    move-wide/from16 v17, v6

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_2

    .line 72
    .line 73
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-nez v8, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move/from16 v9, v16

    .line 81
    .line 82
    :goto_1
    if-nez v9, :cond_3

    .line 83
    .line 84
    :goto_2
    move-wide/from16 v17, v4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    goto :goto_2

    .line 92
    :goto_3
    add-double/2addr v2, v14

    .line 93
    neg-double v2, v2

    .line 94
    mul-double v4, v12, v14

    .line 95
    .line 96
    div-double v7, v2, v4

    .line 97
    .line 98
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    const-wide/16 v19, 0x0

    .line 105
    .line 106
    cmpg-double v2, v7, v19

    .line 107
    .line 108
    if-gtz v2, :cond_4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    cmpl-double v2, v7, v19

    .line 112
    .line 113
    if-lez v2, :cond_6

    .line 114
    .line 115
    move-wide/from16 v3, p1

    .line 116
    .line 117
    move-wide v5, v12

    .line 118
    move-wide v9, v14

    .line 119
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateCriticallyDamped$xInflection(DDDD)D

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    neg-double v2, v2

    .line 124
    cmpg-double v2, v2, v0

    .line 125
    .line 126
    if-gez v2, :cond_6

    .line 127
    .line 128
    cmpg-double v2, v14, v19

    .line 129
    .line 130
    if-gez v2, :cond_5

    .line 131
    .line 132
    cmpl-double v2, p1, v19

    .line 133
    .line 134
    if-lez v2, :cond_5

    .line 135
    .line 136
    move-wide/from16 v17, v19

    .line 137
    .line 138
    :cond_5
    :goto_4
    neg-double v0, v0

    .line 139
    :goto_5
    move-wide v10, v0

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 142
    .line 143
    div-double/2addr v2, v12

    .line 144
    neg-double v2, v2

    .line 145
    div-double v4, p1, v14

    .line 146
    .line 147
    sub-double v17, v2, v4

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :goto_6
    new-instance v0, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fn$1;

    .line 151
    .line 152
    move-object v3, v0

    .line 153
    move-wide/from16 v4, p1

    .line 154
    .line 155
    move-wide v6, v14

    .line 156
    move-wide v8, v12

    .line 157
    invoke-direct/range {v3 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fn$1;-><init>(DDDD)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fnPrime$1;

    .line 161
    .line 162
    move-object v3, v1

    .line 163
    move-wide v4, v14

    .line 164
    move-wide v6, v12

    .line 165
    move-wide/from16 v8, p1

    .line 166
    .line 167
    invoke-direct/range {v3 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt$estimateCriticallyDamped$fnPrime$1;-><init>(DDD)V

    .line 168
    .line 169
    .line 170
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    move/from16 v4, v16

    .line 176
    .line 177
    :goto_7
    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    cmpl-double v2, v2, v5

    .line 183
    .line 184
    if-lez v2, :cond_7

    .line 185
    .line 186
    const/16 v2, 0x64

    .line 187
    .line 188
    if-ge v4, v2, :cond_7

    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Ljava/lang/Number;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 203
    .line 204
    .line 205
    move-result-wide v2

    .line 206
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 217
    .line 218
    .line 219
    move-result-wide v5

    .line 220
    div-double/2addr v2, v5

    .line 221
    sub-double v2, v17, v2

    .line 222
    .line 223
    sub-double v17, v17, v2

    .line 224
    .line 225
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    .line 226
    .line 227
    .line 228
    move-result-wide v5

    .line 229
    move-wide/from16 v17, v2

    .line 230
    .line 231
    move-wide v2, v5

    .line 232
    goto :goto_7

    .line 233
    :cond_7
    return-wide v17
.end method

.method private static final estimateCriticallyDamped$t2Iterate(DD)D
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-wide v1, p0

    .line 3
    :goto_0
    const/4 v3, 0x6

    .line 4
    if-ge v0, v3, :cond_0

    .line 5
    .line 6
    div-double/2addr v1, p2

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    sub-double v1, p0, v1

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-wide v1
.end method

.method private static final estimateCriticallyDamped$xInflection(DDDD)D
    .locals 2

    .line 1
    mul-double/2addr p2, p4

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    mul-double/2addr p0, v0

    .line 7
    mul-double/2addr p6, p4

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide p2

    .line 12
    mul-double/2addr p6, p2

    .line 13
    add-double/2addr p0, p6

    .line 14
    return-wide p0
.end method

.method private static final estimateDurationInternal(Lkotlin/Pair;DDDD)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDDD)J"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p5, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    cmpg-double v0, p3, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-wide/16 p0, 0x0

    .line 12
    .line 13
    return-wide p0

    .line 14
    :cond_0
    if-gez v2, :cond_1

    .line 15
    .line 16
    neg-double p3, p3

    .line 17
    :cond_1
    move-wide v3, p3

    .line 18
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    cmpl-double p5, p1, p3

    .line 25
    .line 26
    if-lez p5, :cond_2

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-wide v5, p7

    .line 30
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped(Lkotlin/Pair;DDD)D

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    cmpg-double p1, p1, p3

    .line 36
    .line 37
    if-gez p1, :cond_3

    .line 38
    .line 39
    move-object v0, p0

    .line 40
    move-wide v5, p7

    .line 41
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateUnderDamped(Lkotlin/Pair;DDD)D

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move-object v0, p0

    .line 47
    move-wide v5, p7

    .line 48
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateCriticallyDamped(Lkotlin/Pair;DDD)D

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    :goto_0
    const-wide p2, 0x408f400000000000L    # 1000.0

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double/2addr p0, p2

    .line 58
    double-to-long p0, p0

    .line 59
    return-wide p0
.end method

.method private static final estimateOverDamped(Lkotlin/Pair;DDD)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDD)D"
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p5

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    .line 10
    .line 11
    .line 12
    move-result-wide v14

    .line 13
    invoke-virtual/range {p0 .. p0}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    .line 20
    .line 21
    .line 22
    move-result-wide v16

    .line 23
    mul-double v2, v14, p1

    .line 24
    .line 25
    sub-double v2, v2, p3

    .line 26
    .line 27
    sub-double v18, v14, v16

    .line 28
    .line 29
    div-double v11, v2, v18

    .line 30
    .line 31
    sub-double v20, p1, v11

    .line 32
    .line 33
    div-double v2, v0, v20

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    div-double/2addr v2, v14

    .line 44
    div-double v4, v0, v11

    .line 45
    .line 46
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    div-double v4, v4, v16

    .line 55
    .line 56
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/16 v22, 0x0

    .line 61
    .line 62
    const/4 v7, 0x1

    .line 63
    if-nez v6, :cond_0

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_0

    .line 70
    .line 71
    move v6, v7

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move/from16 v6, v22

    .line 74
    .line 75
    :goto_0
    if-nez v6, :cond_1

    .line 76
    .line 77
    move-wide/from16 v23, v4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move/from16 v7, v22

    .line 94
    .line 95
    :goto_1
    if-nez v7, :cond_3

    .line 96
    .line 97
    :goto_2
    move-wide/from16 v23, v2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    goto :goto_2

    .line 105
    :goto_3
    mul-double v25, v20, v14

    .line 106
    .line 107
    neg-double v2, v11

    .line 108
    mul-double v2, v2, v16

    .line 109
    .line 110
    div-double v2, v25, v2

    .line 111
    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    sub-double v4, v16, v14

    .line 117
    .line 118
    div-double v7, v2, v4

    .line 119
    .line 120
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_4

    .line 125
    .line 126
    const-wide/16 v27, 0x0

    .line 127
    .line 128
    cmpg-double v2, v7, v27

    .line 129
    .line 130
    if-gtz v2, :cond_5

    .line 131
    .line 132
    :cond_4
    move-wide/from16 v29, v11

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    cmpl-double v2, v7, v27

    .line 136
    .line 137
    if-lez v2, :cond_7

    .line 138
    .line 139
    move-wide/from16 v3, v20

    .line 140
    .line 141
    move-wide v5, v14

    .line 142
    move-wide v9, v11

    .line 143
    move-wide/from16 v29, v11

    .line 144
    .line 145
    move-wide/from16 v11, v16

    .line 146
    .line 147
    invoke-static/range {v3 .. v12}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped$xInflection-0(DDDDD)D

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    neg-double v2, v2

    .line 152
    cmpg-double v2, v2, v0

    .line 153
    .line 154
    if-gez v2, :cond_8

    .line 155
    .line 156
    cmpl-double v2, v29, v27

    .line 157
    .line 158
    if-lez v2, :cond_6

    .line 159
    .line 160
    cmpg-double v2, v20, v27

    .line 161
    .line 162
    if-gez v2, :cond_6

    .line 163
    .line 164
    move-wide/from16 v23, v27

    .line 165
    .line 166
    :cond_6
    :goto_4
    neg-double v0, v0

    .line 167
    :goto_5
    move-wide v12, v0

    .line 168
    goto :goto_6

    .line 169
    :cond_7
    move-wide/from16 v29, v11

    .line 170
    .line 171
    :cond_8
    mul-double v11, v29, v16

    .line 172
    .line 173
    mul-double v11, v11, v16

    .line 174
    .line 175
    neg-double v2, v11

    .line 176
    mul-double v25, v25, v14

    .line 177
    .line 178
    div-double v2, v2, v25

    .line 179
    .line 180
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 181
    .line 182
    .line 183
    move-result-wide v2

    .line 184
    div-double v23, v2, v18

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :goto_6
    new-instance v0, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;

    .line 188
    .line 189
    move-object v3, v0

    .line 190
    move-wide/from16 v4, v20

    .line 191
    .line 192
    move-wide v6, v14

    .line 193
    move-wide/from16 v8, v29

    .line 194
    .line 195
    move-wide/from16 v10, v16

    .line 196
    .line 197
    invoke-direct/range {v3 .. v13}, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fn$1;-><init>(DDDDD)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;

    .line 201
    .line 202
    move-object v3, v1

    .line 203
    invoke-direct/range {v3 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt$estimateOverDamped$fnPrime$1;-><init>(DDDD)V

    .line 204
    .line 205
    .line 206
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 221
    .line 222
    .line 223
    move-result-wide v2

    .line 224
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    cmpg-double v2, v2, v4

    .line 230
    .line 231
    if-gez v2, :cond_9

    .line 232
    .line 233
    return-wide v23

    .line 234
    :cond_9
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    move/from16 v4, v22

    .line 240
    .line 241
    :goto_7
    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    cmpl-double v2, v2, v5

    .line 247
    .line 248
    if-lez v2, :cond_a

    .line 249
    .line 250
    const/16 v2, 0x64

    .line 251
    .line 252
    if-ge v4, v2, :cond_a

    .line 253
    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Ljava/lang/Number;

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 267
    .line 268
    .line 269
    move-result-wide v2

    .line 270
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Ljava/lang/Number;

    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 281
    .line 282
    .line 283
    move-result-wide v5

    .line 284
    div-double/2addr v2, v5

    .line 285
    sub-double v2, v23, v2

    .line 286
    .line 287
    sub-double v23, v23, v2

    .line 288
    .line 289
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    .line 290
    .line 291
    .line 292
    move-result-wide v5

    .line 293
    move-wide/from16 v23, v2

    .line 294
    .line 295
    move-wide v2, v5

    .line 296
    goto :goto_7

    .line 297
    :cond_a
    return-wide v23
.end method

.method private static final estimateOverDamped$xInflection-0(DDDDD)D
    .locals 0

    .line 1
    mul-double/2addr p2, p4

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p2

    .line 6
    mul-double/2addr p0, p2

    .line 7
    mul-double/2addr p8, p4

    .line 8
    invoke-static {p8, p9}, Ljava/lang/Math;->exp(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide p2

    .line 12
    mul-double/2addr p6, p2

    .line 13
    add-double/2addr p0, p6

    .line 14
    return-wide p0
.end method

.method private static final estimateUnderDamped(Lkotlin/Pair;DDD)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;DDD)D"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/animation/core/ComplexDouble;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    mul-double v2, v0, p1

    .line 12
    .line 13
    sub-double/2addr p3, v2

    .line 14
    invoke-virtual {p0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/compose/animation/core/ComplexDouble;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    div-double/2addr p3, v2

    .line 25
    mul-double/2addr p1, p1

    .line 26
    mul-double/2addr p3, p3

    .line 27
    add-double/2addr p1, p3

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    div-double/2addr p5, p0

    .line 33
    invoke-static {p5, p6}, Ljava/lang/Math;->log(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    div-double/2addr p0, v0

    .line 38
    return-wide p0
.end method

.method private static final isNotFinite(D)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    move p0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    xor-int/2addr p0, v1

    .line 18
    return p0
.end method

.method private static final iterateNewtonsMethod(DLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    div-double/2addr v0, p2

    .line 30
    sub-double/2addr p0, v0

    .line 31
    return-wide p0
.end method
