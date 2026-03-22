.class public final Landroidx/compose/ui/graphics/vector/PathParser;
.super Ljava/lang/Object;
.source "PathParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;,
        Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 22
    .line 23
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 27
    .line 28
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 29
    .line 30
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 36
    .line 37
    invoke-direct {v0, v1, v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 41
    .line 42
    return-void
.end method

.method private final addNode(C[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/vector/PathNodeKt;->toPathNodes(C[F)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final arcTo(Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 18

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    iget-object v2, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    float-to-double v2, v2

    .line 14
    iget-object v4, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-double v4, v4

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartX()F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    float-to-double v6, v6

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartY()F

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    float-to-double v8, v8

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getHorizontalEllipseRadius()F

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    float-to-double v10, v10

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getVerticalEllipseRadius()F

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    float-to-double v12, v12

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getTheta()F

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    float-to-double v14, v15

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isMoreThanHalf()Z

    .line 47
    .line 48
    .line 49
    move-result v16

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isPositiveArc()Z

    .line 51
    .line 52
    .line 53
    move-result v17

    .line 54
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/PathParser;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartX()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartY()F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 87
    .line 88
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private final arcToBezier(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V
    .locals 48

    .line 1
    move-wide/from16 v0, p6

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    int-to-double v2, v2

    .line 5
    mul-double v4, p18, v2

    .line 6
    .line 7
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    div-double/2addr v4, v6

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    double-to-int v4, v4

    .line 22
    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->cos(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    invoke-static/range {p14 .. p15}, Ljava/lang/Math;->sin(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->cos(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    invoke-static/range {p16 .. p17}, Ljava/lang/Math;->sin(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v11

    .line 38
    neg-double v13, v0

    .line 39
    mul-double v15, v13, v5

    .line 40
    .line 41
    mul-double v17, v15, v11

    .line 42
    .line 43
    mul-double v19, p8, v7

    .line 44
    .line 45
    mul-double v21, v19, v9

    .line 46
    .line 47
    sub-double v17, v17, v21

    .line 48
    .line 49
    mul-double/2addr v13, v7

    .line 50
    mul-double/2addr v11, v13

    .line 51
    mul-double v21, p8, v5

    .line 52
    .line 53
    mul-double v9, v9, v21

    .line 54
    .line 55
    add-double/2addr v11, v9

    .line 56
    int-to-double v9, v4

    .line 57
    div-double v9, p18, v9

    .line 58
    .line 59
    const/16 v23, 0x0

    .line 60
    .line 61
    move-wide/from16 p8, p10

    .line 62
    .line 63
    move-wide/from16 v25, v11

    .line 64
    .line 65
    move-wide/from16 v27, v17

    .line 66
    .line 67
    move/from16 v11, v23

    .line 68
    .line 69
    move-wide/from16 v17, p12

    .line 70
    .line 71
    move-wide/from16 v23, p16

    .line 72
    .line 73
    :goto_0
    if-ge v11, v4, :cond_0

    .line 74
    .line 75
    add-double v29, v23, v9

    .line 76
    .line 77
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v31

    .line 81
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v33

    .line 85
    mul-double v35, v0, v5

    .line 86
    .line 87
    mul-double v35, v35, v33

    .line 88
    .line 89
    add-double v35, p2, v35

    .line 90
    .line 91
    mul-double v37, v19, v31

    .line 92
    .line 93
    move v12, v4

    .line 94
    move-wide/from16 v39, v5

    .line 95
    .line 96
    sub-double v4, v35, v37

    .line 97
    .line 98
    mul-double v35, v0, v7

    .line 99
    .line 100
    mul-double v35, v35, v33

    .line 101
    .line 102
    add-double v35, p4, v35

    .line 103
    .line 104
    mul-double v37, v21, v31

    .line 105
    .line 106
    add-double v0, v35, v37

    .line 107
    .line 108
    mul-double v35, v15, v31

    .line 109
    .line 110
    mul-double v37, v19, v33

    .line 111
    .line 112
    sub-double v35, v35, v37

    .line 113
    .line 114
    mul-double v31, v31, v13

    .line 115
    .line 116
    mul-double v33, v33, v21

    .line 117
    .line 118
    add-double v31, v31, v33

    .line 119
    .line 120
    sub-double v23, v29, v23

    .line 121
    .line 122
    const/4 v6, 0x2

    .line 123
    move-wide/from16 p14, v7

    .line 124
    .line 125
    int-to-double v6, v6

    .line 126
    div-double v6, v23, v6

    .line 127
    .line 128
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v23

    .line 136
    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    .line 137
    .line 138
    mul-double v33, v33, v6

    .line 139
    .line 140
    mul-double v33, v33, v6

    .line 141
    .line 142
    add-double v33, v2, v33

    .line 143
    .line 144
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    const/4 v8, 0x1

    .line 149
    move-wide/from16 v33, v2

    .line 150
    .line 151
    int-to-double v2, v8

    .line 152
    sub-double/2addr v6, v2

    .line 153
    mul-double v23, v23, v6

    .line 154
    .line 155
    const/4 v2, 0x3

    .line 156
    int-to-double v2, v2

    .line 157
    div-double v23, v23, v2

    .line 158
    .line 159
    mul-double v27, v27, v23

    .line 160
    .line 161
    move-wide/from16 v2, p8

    .line 162
    .line 163
    add-double v2, v2, v27

    .line 164
    .line 165
    mul-double v25, v25, v23

    .line 166
    .line 167
    add-double v6, v17, v25

    .line 168
    .line 169
    mul-double v17, v23, v35

    .line 170
    .line 171
    move-wide/from16 p8, v9

    .line 172
    .line 173
    sub-double v8, v4, v17

    .line 174
    .line 175
    mul-double v23, v23, v31

    .line 176
    .line 177
    move/from16 p10, v12

    .line 178
    .line 179
    move-wide/from16 v17, v13

    .line 180
    .line 181
    sub-double v12, v0, v23

    .line 182
    .line 183
    double-to-float v2, v2

    .line 184
    double-to-float v3, v6

    .line 185
    double-to-float v6, v8

    .line 186
    double-to-float v7, v12

    .line 187
    double-to-float v8, v4

    .line 188
    double-to-float v9, v0

    .line 189
    move-object/from16 v41, p1

    .line 190
    .line 191
    move/from16 v42, v2

    .line 192
    .line 193
    move/from16 v43, v3

    .line 194
    .line 195
    move/from16 v44, v6

    .line 196
    .line 197
    move/from16 v45, v7

    .line 198
    .line 199
    move/from16 v46, v8

    .line 200
    .line 201
    move/from16 v47, v9

    .line 202
    .line 203
    invoke-interface/range {v41 .. v47}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 204
    .line 205
    .line 206
    add-int/lit8 v11, v11, 0x1

    .line 207
    .line 208
    move-wide/from16 v9, p8

    .line 209
    .line 210
    move-wide/from16 v7, p14

    .line 211
    .line 212
    move-wide/from16 p8, v4

    .line 213
    .line 214
    move-wide/from16 v13, v17

    .line 215
    .line 216
    move-wide/from16 v23, v29

    .line 217
    .line 218
    move-wide/from16 v25, v31

    .line 219
    .line 220
    move-wide/from16 v2, v33

    .line 221
    .line 222
    move-wide/from16 v27, v35

    .line 223
    .line 224
    move-wide/from16 v5, v39

    .line 225
    .line 226
    move/from16 v4, p10

    .line 227
    .line 228
    move-wide/from16 v17, v0

    .line 229
    .line 230
    move-wide/from16 v0, p6

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_0
    return-void
.end method

.method private final close(Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final copyOfRange([FII)[F
    .locals 2

    .line 1
    if-gt p2, p3, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-ltz p2, :cond_0

    .line 5
    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    sub-int/2addr p3, p2

    .line 9
    sub-int/2addr v0, p2

    .line 10
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-array p3, p3, [F

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    add-int/2addr v0, p2

    .line 18
    invoke-static {p1, p3, v1, p2, v0}, Lkotlin/collections/n;->k([F[FIII)[F

    .line 19
    .line 20
    .line 21
    return-object p3

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method private final curveTo(Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX1()F

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY1()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    move-object v0, p2

    .line 26
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 34

    .line 1
    move-wide/from16 v14, p2

    .line 2
    .line 3
    move-wide/from16 v6, p6

    .line 4
    .line 5
    move-object/from16 v8, p0

    .line 6
    .line 7
    move-wide/from16 v4, p14

    .line 8
    .line 9
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/vector/PathParser;->toRadians(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v16

    .line 13
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    mul-double v2, v14, v0

    .line 22
    .line 23
    mul-double v11, p4, v9

    .line 24
    .line 25
    add-double/2addr v2, v11

    .line 26
    div-double v2, v2, p10

    .line 27
    .line 28
    neg-double v11, v14

    .line 29
    mul-double/2addr v11, v9

    .line 30
    mul-double v18, p4, v0

    .line 31
    .line 32
    add-double v11, v11, v18

    .line 33
    .line 34
    div-double v11, v11, p12

    .line 35
    .line 36
    mul-double v18, v6, v0

    .line 37
    .line 38
    mul-double v20, p8, v9

    .line 39
    .line 40
    add-double v18, v18, v20

    .line 41
    .line 42
    div-double v18, v18, p10

    .line 43
    .line 44
    neg-double v4, v6

    .line 45
    mul-double/2addr v4, v9

    .line 46
    mul-double v20, p8, v0

    .line 47
    .line 48
    add-double v4, v4, v20

    .line 49
    .line 50
    div-double v4, v4, p12

    .line 51
    .line 52
    sub-double v20, v2, v18

    .line 53
    .line 54
    sub-double v22, v11, v4

    .line 55
    .line 56
    add-double v24, v2, v18

    .line 57
    .line 58
    const/4 v13, 0x2

    .line 59
    int-to-double v6, v13

    .line 60
    div-double v24, v24, v6

    .line 61
    .line 62
    add-double v26, v11, v4

    .line 63
    .line 64
    div-double v26, v26, v6

    .line 65
    .line 66
    mul-double v6, v20, v20

    .line 67
    .line 68
    mul-double v28, v22, v22

    .line 69
    .line 70
    add-double v6, v6, v28

    .line 71
    .line 72
    const-wide/16 v28, 0x0

    .line 73
    .line 74
    cmpg-double v13, v6, v28

    .line 75
    .line 76
    if-nez v13, :cond_0

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 80
    .line 81
    div-double v30, v30, v6

    .line 82
    .line 83
    const-wide/high16 v32, 0x3fd0000000000000L    # 0.25

    .line 84
    .line 85
    sub-double v30, v30, v32

    .line 86
    .line 87
    cmpg-double v13, v30, v28

    .line 88
    .line 89
    if-gez v13, :cond_1

    .line 90
    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    div-double/2addr v0, v2

    .line 101
    double-to-float v0, v0

    .line 102
    float-to-double v0, v0

    .line 103
    mul-double v10, p10, v0

    .line 104
    .line 105
    mul-double v12, p12, v0

    .line 106
    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    move-wide/from16 v2, p2

    .line 112
    .line 113
    move-wide/from16 v4, p4

    .line 114
    .line 115
    move-wide/from16 v6, p6

    .line 116
    .line 117
    move-wide/from16 v8, p8

    .line 118
    .line 119
    move-wide/from16 v14, p14

    .line 120
    .line 121
    move/from16 v16, p16

    .line 122
    .line 123
    move/from16 v17, p17

    .line 124
    .line 125
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/PathParser;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    mul-double v20, v20, v6

    .line 134
    .line 135
    mul-double v6, v6, v22

    .line 136
    .line 137
    move/from16 v8, p16

    .line 138
    .line 139
    move/from16 v13, p17

    .line 140
    .line 141
    if-ne v8, v13, :cond_2

    .line 142
    .line 143
    sub-double v24, v24, v6

    .line 144
    .line 145
    add-double v26, v26, v20

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    add-double v24, v24, v6

    .line 149
    .line 150
    sub-double v26, v26, v20

    .line 151
    .line 152
    :goto_0
    sub-double v11, v11, v26

    .line 153
    .line 154
    sub-double v2, v2, v24

    .line 155
    .line 156
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 157
    .line 158
    .line 159
    move-result-wide v20

    .line 160
    sub-double v4, v4, v26

    .line 161
    .line 162
    sub-double v2, v18, v24

    .line 163
    .line 164
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    sub-double v2, v2, v20

    .line 169
    .line 170
    cmpl-double v4, v2, v28

    .line 171
    .line 172
    if-ltz v4, :cond_3

    .line 173
    .line 174
    const/4 v5, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_3
    const/4 v5, 0x0

    .line 177
    :goto_1
    if-eq v13, v5, :cond_4

    .line 178
    .line 179
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    if-lez v4, :cond_5

    .line 185
    .line 186
    sub-double/2addr v2, v5

    .line 187
    :cond_4
    :goto_2
    move-wide/from16 v18, v2

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    add-double/2addr v2, v5

    .line 191
    goto :goto_2

    .line 192
    :goto_3
    mul-double v24, v24, p10

    .line 193
    .line 194
    mul-double v26, v26, p12

    .line 195
    .line 196
    mul-double v2, v24, v0

    .line 197
    .line 198
    mul-double v4, v26, v9

    .line 199
    .line 200
    sub-double/2addr v2, v4

    .line 201
    mul-double v24, v24, v9

    .line 202
    .line 203
    mul-double v26, v26, v0

    .line 204
    .line 205
    add-double v4, v24, v26

    .line 206
    .line 207
    move-object/from16 v0, p0

    .line 208
    .line 209
    move-object/from16 v1, p1

    .line 210
    .line 211
    move-wide/from16 v6, p10

    .line 212
    .line 213
    move-wide/from16 v8, p12

    .line 214
    .line 215
    move-wide/from16 v10, p2

    .line 216
    .line 217
    move-wide/from16 v12, p4

    .line 218
    .line 219
    move-wide/from16 v14, v16

    .line 220
    .line 221
    move-wide/from16 v16, v20

    .line 222
    .line 223
    invoke-direct/range {v0 .. v19}, Landroidx/compose/ui/graphics/vector/PathParser;->arcToBezier(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method private final extract(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->setEndWithNegativeOrDot(Z)V

    .line 3
    .line 4
    .line 5
    move v1, p2

    .line 6
    move v2, v0

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-ge v1, v5, :cond_8

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/16 v6, 0x20

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/16 v6, 0x2c

    .line 26
    .line 27
    if-ne v5, v6, :cond_1

    .line 28
    .line 29
    :goto_1
    move v2, v0

    .line 30
    move v4, v7

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    const/16 v6, 0x2d

    .line 33
    .line 34
    if-ne v5, v6, :cond_2

    .line 35
    .line 36
    if-eq v1, p2, :cond_6

    .line 37
    .line 38
    if-nez v2, :cond_6

    .line 39
    .line 40
    invoke-virtual {p3, v7}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->setEndWithNegativeOrDot(Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/16 v2, 0x2e

    .line 45
    .line 46
    if-ne v5, v2, :cond_4

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    move v2, v0

    .line 51
    move v3, v7

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    invoke-virtual {p3, v7}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->setEndWithNegativeOrDot(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/16 v2, 0x65

    .line 58
    .line 59
    if-ne v5, v2, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    const/16 v2, 0x45

    .line 63
    .line 64
    if-ne v5, v2, :cond_6

    .line 65
    .line 66
    :goto_2
    move v2, v7

    .line 67
    goto :goto_3

    .line 68
    :cond_6
    move v2, v0

    .line 69
    :goto_3
    if-eqz v4, :cond_7

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_8
    :goto_4
    invoke-virtual {p3, v1}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->setEndPosition(I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final getFloats(Ljava/lang/String;)[F
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x7a

    .line 7
    .line 8
    if-eq v1, v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x5a

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-array v1, v1, [F

    .line 24
    .line 25
    new-instance v2, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v2, v0, v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    move v5, v0

    .line 38
    :goto_0
    if-ge v4, v3, :cond_3

    .line 39
    .line 40
    invoke-direct {p0, p1, v4, v2}, Landroidx/compose/ui/graphics/vector/PathParser;->extract(Ljava/lang/String;ILandroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->getEndPosition()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-ge v4, v6, :cond_1

    .line 48
    .line 49
    add-int/lit8 v7, v5, 0x1

    .line 50
    .line 51
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v8, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 56
    .line 57
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    aput v4, v1, v5

    .line 65
    .line 66
    move v5, v7

    .line 67
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$ExtractFloatResult;->getEndWithNegativeOrDot()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    move v4, v6

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0, v1, v0, v5}, Landroidx/compose/ui/graphics/vector/PathParser;->copyOfRange([FII)[F

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_4
    :goto_1
    new-array p1, v0, [F

    .line 84
    .line 85
    return-object p1
.end method

.method private final horizontalTo(Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final lineTo(Landroidx/compose/ui/graphics/vector/PathNode$LineTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final moveTo(Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-interface {p2, v0, p1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 42
    .line 43
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final nextStart(Ljava/lang/String;I)I
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p2, v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v1, v0, -0x41

    .line 12
    .line 13
    add-int/lit8 v2, v0, -0x5a

    .line 14
    .line 15
    mul-int/2addr v1, v2

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v0, -0x61

    .line 19
    .line 20
    add-int/lit8 v2, v0, -0x7a

    .line 21
    .line 22
    mul-int/2addr v1, v2

    .line 23
    if-gtz v1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/16 v1, 0x65

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x45

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    return p2

    .line 34
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return p2
.end method

.method private final quadTo(Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX1()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY1()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX2()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY2()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-interface {p2, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Path;->quadraticBezierTo(FFFF)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX1()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY1()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX2()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY2()F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final reflectiveCurveTo(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    int-to-float v0, v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-float/2addr v1, v0

    .line 14
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-float/2addr v1, v2

    .line 21
    invoke-virtual {p2, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    mul-float/2addr v0, v1

    .line 33
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sub-float/2addr v0, v1

    .line 40
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    move-object v0, p3

    .line 95
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method private final reflectiveQuadTo(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    int-to-float v0, v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-float/2addr v1, v0

    .line 14
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-float/2addr v1, v2

    .line 21
    invoke-virtual {p2, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    mul-float/2addr v0, v1

    .line 33
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sub-float/2addr v0, v1

    .line 40
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getX()F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getY()F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-interface {p3, p2, v0, v1, v2}, Landroidx/compose/ui/graphics/Path;->quadraticBezierTo(FFFF)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 90
    .line 91
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 92
    .line 93
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 101
    .line 102
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 103
    .line 104
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getX()F

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 118
    .line 119
    .line 120
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getY()F

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private final relativeArcTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 20

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getArcStartDx()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-float v15, v2, v3

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getArcStartDy()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-float v12, v2, v3

    .line 30
    .line 31
    iget-object v2, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    float-to-double v2, v2

    .line 38
    iget-object v4, v14, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    float-to-double v4, v4

    .line 45
    float-to-double v6, v15

    .line 46
    float-to-double v8, v12

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getHorizontalEllipseRadius()F

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    float-to-double v10, v10

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getVerticalEllipseRadius()F

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    move/from16 p2, v12

    .line 57
    .line 58
    float-to-double v12, v13

    .line 59
    move/from16 v18, p2

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getTheta()F

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    move/from16 p2, v15

    .line 66
    .line 67
    float-to-double v14, v14

    .line 68
    move/from16 v19, p2

    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isMoreThanHalf()Z

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isPositiveArc()Z

    .line 75
    .line 76
    .line 77
    move-result v17

    .line 78
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/PathParser;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 82
    .line 83
    move/from16 v2, v19

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 89
    .line 90
    move/from16 v2, v18

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 96
    .line 97
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 107
    .line 108
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 109
    .line 110
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private final relativeCurveTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx1()F

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy1()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    move-object v0, p2

    .line 26
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-float/2addr v0, v1

    .line 42
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-float/2addr v0, v1

    .line 58
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-float/2addr v0, v1

    .line 72
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    add-float/2addr v0, p1

    .line 86
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final relativeHorizontalTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    add-float/2addr v0, p1

    .line 20
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final relativeLineTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-float/2addr v0, v1

    .line 23
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    add-float/2addr v0, p1

    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final relativeMoveTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDx()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-float/2addr v1, v2

    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDy()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-float/2addr v1, v2

    .line 26
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDx()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDy()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-interface {p2, v0, p1}, Landroidx/compose/ui/graphics/Path;->relativeMoveTo(FF)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 41
    .line 42
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final relativeQuadTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx1()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy1()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx2()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy2()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-interface {p2, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Path;->relativeQuadraticBezierTo(FFFF)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx1()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-float/2addr v0, v1

    .line 33
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy1()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-float/2addr v0, v1

    .line 49
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx2()F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-float/2addr v0, v1

    .line 63
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy2()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    add-float/2addr v0, p1

    .line 77
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private final relativeReflectiveCurveTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-float/2addr v0, v1

    .line 36
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->reset()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    move-object v0, p3

    .line 74
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 78
    .line 79
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 80
    .line 81
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-float/2addr p3, v0

    .line 90
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 94
    .line 95
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 96
    .line 97
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-float/2addr p3, v0

    .line 106
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 110
    .line 111
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    add-float/2addr p3, v0

    .line 120
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 124
    .line 125
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    add-float/2addr p3, p1

    .line 134
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method private final relativeReflectiveQuadTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-float/2addr v0, v1

    .line 36
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->reset()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDx()F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDy()F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-interface {p3, p2, v0, v1, v2}, Landroidx/compose/ui/graphics/Path;->relativeQuadraticBezierTo(FFFF)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 69
    .line 70
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 71
    .line 72
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    add-float/2addr p3, v0

    .line 83
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 87
    .line 88
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 89
    .line 90
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-float/2addr p3, v0

    .line 101
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 105
    .line 106
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDx()F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    add-float/2addr p3, v0

    .line 115
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setX(F)V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 119
    .line 120
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDy()F

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    add-float/2addr p3, p1

    .line 129
    invoke-virtual {p2, p3}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private final relativeVerticalTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, v1, v0}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    add-float/2addr v0, p1

    .line 20
    invoke-virtual {p2, v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic toPath$default(Landroidx/compose/ui/graphics/vector/PathParser;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private final toRadians(D)D
    .locals 2

    .line 1
    const/16 v0, 0xb4

    int-to-double v0, v0

    div-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method private final toRadians(F)F
    .locals 1

    .line 2
    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    return p1
.end method

.method private final verticalTo(Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->setY(F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final addPathNodes(Ljava/util/List;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/PathParser;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "nodes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final parsePathString(Ljava/lang/String;)Landroidx/compose/ui/graphics/vector/PathParser;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "pathData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    move v3, v0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v2, v4, :cond_7

    .line 20
    .line 21
    invoke-direct {p0, p1, v2}, Landroidx/compose/ui/graphics/vector/PathParser;->nextStart(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v4, v1

    .line 39
    move v5, v0

    .line 40
    move v6, v5

    .line 41
    :goto_1
    if-gt v5, v4, :cond_5

    .line 42
    .line 43
    if-nez v6, :cond_0

    .line 44
    .line 45
    move v7, v5

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    move v7, v4

    .line 48
    :goto_2
    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/16 v8, 0x20

    .line 53
    .line 54
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-gtz v7, :cond_1

    .line 59
    .line 60
    move v7, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    move v7, v0

    .line 63
    :goto_3
    if-nez v6, :cond_3

    .line 64
    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    move v6, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-nez v7, :cond_4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    invoke-interface {v3, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-lez v4, :cond_6

    .line 93
    .line 94
    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/vector/PathParser;->getFloats(Ljava/lang/String;)[F

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-direct {p0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathParser;->addNode(C[F)V

    .line 103
    .line 104
    .line 105
    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 106
    .line 107
    move v9, v3

    .line 108
    move v3, v2

    .line 109
    move v2, v9

    .line 110
    goto :goto_0

    .line 111
    :cond_7
    sub-int/2addr v2, v3

    .line 112
    if-ne v2, v1, :cond_8

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ge v3, v1, :cond_8

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    new-array v0, v0, [F

    .line 125
    .line 126
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/vector/PathParser;->addNode(C[F)V

    .line 127
    .line 128
    .line 129
    :cond_8
    return-object p0
.end method

.method public final toNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toPath(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 6
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->currentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->reset()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->ctrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->reset()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->segmentPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->reset()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCtrlPoint:Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathParser$PathPoint;->reset()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v1, :cond_14

    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    move-object v2, v4

    .line 48
    :cond_0
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->close(Landroidx/compose/ui/graphics/Path;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    move-object v2, v4

    .line 62
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 63
    .line 64
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeMoveTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 70
    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    move-object v2, v4

    .line 74
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 75
    .line 76
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->moveTo(Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_3
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    move-object v2, v4

    .line 86
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 87
    .line 88
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeLineTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;Landroidx/compose/ui/graphics/Path;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_4
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    move-object v2, v4

    .line 98
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 99
    .line 100
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->lineTo(Landroidx/compose/ui/graphics/vector/PathNode$LineTo;Landroidx/compose/ui/graphics/Path;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_5
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    move-object v2, v4

    .line 110
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 111
    .line 112
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeHorizontalTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_6
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    move-object v2, v4

    .line 122
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 123
    .line 124
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->horizontalTo(Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_7
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 130
    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    move-object v2, v4

    .line 134
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 135
    .line 136
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeVerticalTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :cond_8
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 142
    .line 143
    if-eqz v5, :cond_9

    .line 144
    .line 145
    move-object v2, v4

    .line 146
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 147
    .line 148
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->verticalTo(Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;Landroidx/compose/ui/graphics/Path;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_9
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 154
    .line 155
    if-eqz v5, :cond_a

    .line 156
    .line 157
    move-object v2, v4

    .line 158
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 159
    .line 160
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeCurveTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_a
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 166
    .line 167
    if-eqz v5, :cond_b

    .line 168
    .line 169
    move-object v2, v4

    .line 170
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 171
    .line 172
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->curveTo(Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;Landroidx/compose/ui/graphics/Path;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_b
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 178
    .line 179
    if-eqz v5, :cond_c

    .line 180
    .line 181
    move-object v5, v4

    .line 182
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 183
    .line 184
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeReflectiveCurveTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_c
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 196
    .line 197
    if-eqz v5, :cond_d

    .line 198
    .line 199
    move-object v5, v4

    .line 200
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 201
    .line 202
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveCurveTo(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_d
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 214
    .line 215
    if-eqz v5, :cond_e

    .line 216
    .line 217
    move-object v2, v4

    .line 218
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 219
    .line 220
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeQuadTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;Landroidx/compose/ui/graphics/Path;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_e
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 225
    .line 226
    if-eqz v5, :cond_f

    .line 227
    .line 228
    move-object v2, v4

    .line 229
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 230
    .line 231
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->quadTo(Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;Landroidx/compose/ui/graphics/Path;)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_f
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 236
    .line 237
    if-eqz v5, :cond_10

    .line 238
    .line 239
    move-object v5, v4

    .line 240
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 241
    .line 242
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeReflectiveQuadTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_10
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 254
    .line 255
    if-eqz v5, :cond_11

    .line 256
    .line 257
    move-object v5, v4

    .line 258
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 259
    .line 260
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-direct {p0, v5, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->reflectiveQuadTo(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;ZLandroidx/compose/ui/graphics/Path;)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_11
    instance-of v2, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 272
    .line 273
    if-eqz v2, :cond_12

    .line 274
    .line 275
    move-object v2, v4

    .line 276
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 277
    .line 278
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->relativeArcTo(Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;Landroidx/compose/ui/graphics/Path;)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_12
    instance-of v2, v4, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 283
    .line 284
    if-eqz v2, :cond_13

    .line 285
    .line 286
    move-object v2, v4

    .line 287
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 288
    .line 289
    invoke-direct {p0, v2, p1}, Landroidx/compose/ui/graphics/vector/PathParser;->arcTo(Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;Landroidx/compose/ui/graphics/Path;)V

    .line 290
    .line 291
    .line 292
    :cond_13
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 293
    .line 294
    move-object v2, v4

    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_14
    return-object p1
.end method
