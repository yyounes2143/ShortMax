.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private index:I

.field private final samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final useImpulse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    new-array v1, v0, [Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->useImpulse:Z

    .line 21
    .line 22
    return-void
.end method

.method private final getImpulseVelocity-9UxMQ8M()J
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    new-instance v2, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;

    .line 16
    .line 17
    invoke-direct {v2}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;

    .line 21
    .line 22
    invoke-direct {v3}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;-><init>()V

    .line 23
    .line 24
    .line 25
    iget v4, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    const/16 v6, 0x14

    .line 31
    .line 32
    rem-int/2addr v4, v6

    .line 33
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 34
    .line 35
    aget-object v7, v7, v4

    .line 36
    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v10

    .line 48
    sub-long/2addr v8, v10

    .line 49
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v10

    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v12

    .line 57
    sub-long/2addr v10, v12

    .line 58
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v10

    .line 62
    const-wide/16 v12, 0x64

    .line 63
    .line 64
    cmp-long v12, v8, v12

    .line 65
    .line 66
    if-lez v12, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-wide/16 v12, 0x28

    .line 70
    .line 71
    cmp-long v10, v10, v12

    .line 72
    .line 73
    if-lez v10, :cond_4

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->reset()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->reset()V

    .line 79
    .line 80
    .line 81
    :cond_4
    neg-long v8, v8

    .line 82
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    invoke-virtual {v2, v8, v9, v10}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->addPosition(JF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v3, v8, v9, v7}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->addPosition(JF)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    :goto_0
    iget v7, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 107
    .line 108
    if-eq v4, v7, :cond_5

    .line 109
    .line 110
    if-lt v5, v6, :cond_1

    .line 111
    .line 112
    :cond_5
    const/4 v0, 0x3

    .line 113
    if-ge v5, v0, :cond_6

    .line 114
    .line 115
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    return-wide v0

    .line 120
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->getVelocity()F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/ImpulseCalculator;->getVelocity()F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    return-wide v0
.end method

.method private final getLsq2VelocityEstimate()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget v4, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 19
    .line 20
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 21
    .line 22
    aget-object v5, v5, v4

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    sget-object v1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;->getNone()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    return-object v1

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 34
    move-object v7, v5

    .line 35
    :goto_0
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 36
    .line 37
    aget-object v8, v8, v4

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    sub-long/2addr v10, v12

    .line 52
    long-to-float v10, v10

    .line 53
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v11

    .line 57
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v13

    .line 61
    sub-long/2addr v11, v13

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v11

    .line 66
    long-to-float v11, v11

    .line 67
    const/high16 v12, 0x42c80000    # 100.0f

    .line 68
    .line 69
    cmpl-float v12, v10, v12

    .line 70
    .line 71
    if-gtz v12, :cond_5

    .line 72
    .line 73
    const/high16 v12, 0x42200000    # 40.0f

    .line 74
    .line 75
    cmpl-float v11, v11, v12

    .line 76
    .line 77
    if-lez v11, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 81
    .line 82
    .line 83
    move-result-wide v11

    .line 84
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    neg-float v7, v10

    .line 107
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    const/16 v7, 0x14

    .line 115
    .line 116
    if-nez v4, :cond_3

    .line 117
    .line 118
    move v4, v7

    .line 119
    :cond_3
    sub-int/2addr v4, v9

    .line 120
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    if-lt v6, v7, :cond_4

    .line 123
    .line 124
    move-object v7, v8

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    move-object v7, v8

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :goto_1
    const/4 v4, 0x3

    .line 129
    if-lt v6, v4, :cond_6

    .line 130
    .line 131
    const/4 v4, 0x2

    .line 132
    :try_start_0
    invoke-static {v3, v1, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v3, v2, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getCoefficients()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getCoefficients()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Ljava/lang/Number;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    new-instance v6, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 169
    .line 170
    const/16 v8, 0x3e8

    .line 171
    .line 172
    int-to-float v8, v8

    .line 173
    mul-float/2addr v3, v8

    .line 174
    mul-float/2addr v4, v8

    .line 175
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 176
    .line 177
    .line 178
    move-result-wide v9

    .line 179
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getConfidence()F

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getConfidence()F

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    mul-float v11, v1, v2

    .line 188
    .line 189
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 194
    .line 195
    .line 196
    move-result-wide v3

    .line 197
    sub-long v12, v1, v3

    .line 198
    .line 199
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 200
    .line 201
    .line 202
    move-result-wide v1

    .line 203
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v14

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    move-object v8, v6

    .line 214
    invoke-direct/range {v8 .. v16}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    return-object v6

    .line 218
    :catch_0
    sget-object v1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;->getNone()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    return-object v1

    .line 225
    :cond_6
    new-instance v1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 226
    .line 227
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 228
    .line 229
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 230
    .line 231
    .line 232
    move-result-wide v3

    .line 233
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 234
    .line 235
    .line 236
    move-result-wide v8

    .line 237
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    .line 238
    .line 239
    .line 240
    move-result-wide v10

    .line 241
    sub-long/2addr v8, v10

    .line 242
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 243
    .line 244
    .line 245
    move-result-wide v5

    .line 246
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    .line 247
    .line 248
    .line 249
    move-result-wide v10

    .line 250
    invoke-static {v5, v6, v10, v11}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 251
    .line 252
    .line 253
    move-result-wide v10

    .line 254
    const/4 v12, 0x0

    .line 255
    const/high16 v5, 0x3f800000    # 1.0f

    .line 256
    .line 257
    move-object v2, v1

    .line 258
    move-wide v6, v8

    .line 259
    move-wide v8, v10

    .line 260
    move-object v10, v12

    .line 261
    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 262
    .line 263
    .line 264
    return-object v1
.end method


# virtual methods
.method public final addPosition-Uv8p0NA(JJ)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    rem-int/lit8 v0, v0, 0x14

    .line 6
    .line 7
    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 10
    .line 11
    new-instance v8, Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v2, v8

    .line 15
    move-wide v3, p3

    .line 16
    move-wide v5, p1

    .line 17
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    aput-object v8, v1, v0

    .line 21
    .line 22
    return-void
.end method

.method public final calculateVelocity-9UxMQ8M()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->useImpulse:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getImpulseVelocity-9UxMQ8M()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getLsq2VelocityEstimate()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->getPixelsPerSecond-F1C5BW0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v2, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    return-wide v0
.end method

.method public final resetTracking()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlin/collections/n;->H([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
