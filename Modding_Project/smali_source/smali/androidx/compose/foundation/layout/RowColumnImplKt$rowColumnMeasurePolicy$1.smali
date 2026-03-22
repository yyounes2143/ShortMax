.class public final Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/RowColumnImplKt;->rowColumnMeasurePolicy-TDGSqEk(Landroidx/compose/foundation/layout/LayoutOrientation;Lat/p;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $arrangement:Lat/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/p<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $arrangementSpacing:F

.field final synthetic $crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field final synthetic $crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field final synthetic $orientation:Landroidx/compose/foundation/layout/LayoutOrientation;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;FLandroidx/compose/foundation/layout/SizeMode;Lat/p;Landroidx/compose/foundation/layout/CrossAxisAlignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Lat/p<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangement:Lat/p;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MaxIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lat/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, p2, p3, p1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MaxIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lat/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, p2, p3, p1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 30
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v1, "$this$measure"

    .line 8
    .line 9
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "measurables"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    move-wide/from16 v4, p3

    .line 23
    .line 24
    invoke-direct {v1, v4, v5, v3, v10}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iget v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 28
    .line 29
    invoke-interface {v13, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    new-array v14, v12, [Landroidx/compose/ui/layout/Placeable;

    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v15

    .line 43
    new-array v9, v15, [Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    move v3, v8

    .line 47
    :goto_0
    if-ge v3, v15, :cond_0

    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 54
    .line 55
    invoke-static {v4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$getData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aput-object v4, v9, v3

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    move v3, v8

    .line 71
    move v5, v3

    .line 72
    move v6, v5

    .line 73
    move/from16 v17, v6

    .line 74
    .line 75
    move/from16 v19, v17

    .line 76
    .line 77
    move/from16 v20, v19

    .line 78
    .line 79
    move/from16 v18, v16

    .line 80
    .line 81
    :goto_1
    const v4, 0x7fffffff

    .line 82
    .line 83
    .line 84
    const/16 v21, 0x1

    .line 85
    .line 86
    if-ge v6, v7, :cond_5

    .line 87
    .line 88
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v22

    .line 92
    move-object/from16 v10, v22

    .line 93
    .line 94
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 95
    .line 96
    aget-object v22, v9, v6

    .line 97
    .line 98
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 99
    .line 100
    .line 101
    move-result v23

    .line 102
    cmpl-float v24, v23, v16

    .line 103
    .line 104
    if-lez v24, :cond_1

    .line 105
    .line 106
    add-float v18, v18, v23

    .line 107
    .line 108
    add-int/lit8 v17, v17, 0x1

    .line 109
    .line 110
    move/from16 v23, v6

    .line 111
    .line 112
    move/from16 v26, v7

    .line 113
    .line 114
    move-object/from16 v24, v9

    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getMainAxisMax()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-ne v3, v4, :cond_2

    .line 123
    .line 124
    :goto_2
    move/from16 v23, v4

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    sub-int v4, v3, v19

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_3
    const/16 v24, 0x8

    .line 131
    .line 132
    const/16 v25, 0x0

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    move/from16 v28, v3

    .line 140
    .line 141
    move-object v3, v1

    .line 142
    move/from16 v29, v5

    .line 143
    .line 144
    move/from16 v5, v23

    .line 145
    .line 146
    move/from16 v23, v6

    .line 147
    .line 148
    move/from16 v6, v26

    .line 149
    .line 150
    move/from16 v26, v7

    .line 151
    .line 152
    move/from16 v7, v27

    .line 153
    .line 154
    move/from16 v8, v24

    .line 155
    .line 156
    move-object/from16 v24, v9

    .line 157
    .line 158
    move-object/from16 v9, v25

    .line 159
    .line 160
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy$default(Landroidx/compose/foundation/layout/OrientationIndependentConstraints;IIIIILjava/lang/Object;)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iget-object v4, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(Landroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    invoke-interface {v10, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sub-int v4, v28, v19

    .line 175
    .line 176
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 177
    .line 178
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    sub-int/2addr v4, v5

    .line 183
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 188
    .line 189
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    add-int/2addr v5, v4

    .line 194
    add-int v19, v19, v5

    .line 195
    .line 196
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 197
    .line 198
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    move/from16 v8, v29

    .line 203
    .line 204
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-nez v20, :cond_4

    .line 209
    .line 210
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_3

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_3
    const/4 v8, 0x0

    .line 218
    goto :goto_5

    .line 219
    :cond_4
    :goto_4
    move/from16 v8, v21

    .line 220
    .line 221
    :goto_5
    aput-object v3, v14, v23

    .line 222
    .line 223
    move v3, v4

    .line 224
    move/from16 v20, v8

    .line 225
    .line 226
    :goto_6
    add-int/lit8 v6, v23, 0x1

    .line 227
    .line 228
    move-object/from16 v9, v24

    .line 229
    .line 230
    move/from16 v7, v26

    .line 231
    .line 232
    const/4 v8, 0x0

    .line 233
    const/4 v10, 0x0

    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_5
    move v8, v5

    .line 237
    move-object/from16 v24, v9

    .line 238
    .line 239
    if-nez v17, :cond_6

    .line 240
    .line 241
    sub-int v19, v19, v3

    .line 242
    .line 243
    move v5, v8

    .line 244
    const/4 v8, 0x0

    .line 245
    goto/16 :goto_f

    .line 246
    .line 247
    :cond_6
    cmpl-float v3, v18, v16

    .line 248
    .line 249
    if-lez v3, :cond_7

    .line 250
    .line 251
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getMainAxisMax()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eq v5, v4, :cond_7

    .line 256
    .line 257
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getMainAxisMax()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    goto :goto_7

    .line 262
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getMainAxisMin()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    :goto_7
    sub-int v5, v5, v19

    .line 267
    .line 268
    add-int/lit8 v17, v17, -0x1

    .line 269
    .line 270
    mul-int v11, v11, v17

    .line 271
    .line 272
    sub-int/2addr v5, v11

    .line 273
    if-lez v3, :cond_8

    .line 274
    .line 275
    int-to-float v3, v5

    .line 276
    div-float v3, v3, v18

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_8
    move/from16 v3, v16

    .line 280
    .line 281
    :goto_8
    const/4 v6, 0x0

    .line 282
    const/4 v7, 0x0

    .line 283
    :goto_9
    if-ge v6, v15, :cond_9

    .line 284
    .line 285
    aget-object v9, v24, v6

    .line 286
    .line 287
    invoke-static {v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    mul-float/2addr v9, v3

    .line 292
    invoke-static {v9}, Lbt/a;->c(F)I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    add-int/2addr v7, v9

    .line 297
    add-int/lit8 v6, v6, 0x1

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_9
    sub-int/2addr v5, v7

    .line 301
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    move v7, v5

    .line 306
    move v5, v8

    .line 307
    const/4 v8, 0x0

    .line 308
    const/4 v9, 0x0

    .line 309
    :goto_a
    if-ge v8, v6, :cond_f

    .line 310
    .line 311
    aget-object v10, v14, v8

    .line 312
    .line 313
    if-nez v10, :cond_e

    .line 314
    .line 315
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 320
    .line 321
    aget-object v15, v24, v8

    .line 322
    .line 323
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 324
    .line 325
    .line 326
    move-result v17

    .line 327
    cmpl-float v18, v17, v16

    .line 328
    .line 329
    if-lez v18, :cond_d

    .line 330
    .line 331
    invoke-static {v7}, Lbt/a;->a(I)I

    .line 332
    .line 333
    .line 334
    move-result v18

    .line 335
    sub-int v7, v7, v18

    .line 336
    .line 337
    mul-float v17, v17, v3

    .line 338
    .line 339
    invoke-static/range {v17 .. v17}, Lbt/a;->c(F)I

    .line 340
    .line 341
    .line 342
    move-result v17

    .line 343
    add-int v4, v17, v18

    .line 344
    .line 345
    const/4 v2, 0x0

    .line 346
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    new-instance v2, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 351
    .line 352
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 353
    .line 354
    .line 355
    move-result v17

    .line 356
    move/from16 p4, v3

    .line 357
    .line 358
    if-eqz v17, :cond_a

    .line 359
    .line 360
    const v3, 0x7fffffff

    .line 361
    .line 362
    .line 363
    if-eq v4, v3, :cond_a

    .line 364
    .line 365
    move v3, v4

    .line 366
    move/from16 v17, v6

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_a
    move/from16 v17, v6

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    :goto_b
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getCrossAxisMax()I

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    move/from16 v18, v7

    .line 377
    .line 378
    const/4 v7, 0x0

    .line 379
    invoke-direct {v2, v3, v4, v7, v6}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(IIII)V

    .line 380
    .line 381
    .line 382
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(Landroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 393
    .line 394
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    add-int/2addr v9, v3

    .line 399
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 400
    .line 401
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v20, :cond_c

    .line 410
    .line 411
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-eqz v4, :cond_b

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_b
    const/4 v4, 0x0

    .line 419
    goto :goto_d

    .line 420
    :cond_c
    :goto_c
    move/from16 v4, v21

    .line 421
    .line 422
    :goto_d
    aput-object v2, v14, v8

    .line 423
    .line 424
    move v5, v3

    .line 425
    move/from16 v20, v4

    .line 426
    .line 427
    move/from16 v7, v18

    .line 428
    .line 429
    goto :goto_e

    .line 430
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 431
    .line 432
    const-string v2, "All weights <= 0 should have placeables"

    .line 433
    .line 434
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw v1

    .line 438
    :cond_e
    move/from16 p4, v3

    .line 439
    .line 440
    move/from16 v17, v6

    .line 441
    .line 442
    :goto_e
    add-int/lit8 v8, v8, 0x1

    .line 443
    .line 444
    move-object/from16 v2, p2

    .line 445
    .line 446
    move/from16 v3, p4

    .line 447
    .line 448
    move/from16 v6, v17

    .line 449
    .line 450
    const v4, 0x7fffffff

    .line 451
    .line 452
    .line 453
    goto/16 :goto_a

    .line 454
    .line 455
    :cond_f
    add-int/2addr v9, v11

    .line 456
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getMainAxisMax()I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    sub-int v2, v2, v19

    .line 461
    .line 462
    invoke-static {v9, v2}, Lkotlin/ranges/e;->j(II)I

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    :goto_f
    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 467
    .line 468
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 469
    .line 470
    .line 471
    if-eqz v20, :cond_14

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    const/4 v3, 0x0

    .line 475
    :goto_10
    if-ge v2, v12, :cond_15

    .line 476
    .line 477
    aget-object v4, v14, v2

    .line 478
    .line 479
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    aget-object v6, v24, v2

    .line 483
    .line 484
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 485
    .line 486
    .line 487
    move-result-object v6

    .line 488
    if-eqz v6, :cond_10

    .line 489
    .line 490
    invoke-virtual {v6, v4}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    goto :goto_11

    .line 495
    :cond_10
    const/4 v6, 0x0

    .line 496
    :goto_11
    if-eqz v6, :cond_13

    .line 497
    .line 498
    iget v7, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 499
    .line 500
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 501
    .line 502
    .line 503
    move-result v9

    .line 504
    const/high16 v10, -0x80000000

    .line 505
    .line 506
    if-eq v9, v10, :cond_11

    .line 507
    .line 508
    goto :goto_12

    .line 509
    :cond_11
    const/4 v9, 0x0

    .line 510
    :goto_12
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    iput v7, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 515
    .line 516
    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 517
    .line 518
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 519
    .line 520
    .line 521
    move-result v7

    .line 522
    iget-object v9, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 523
    .line 524
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    if-eq v6, v10, :cond_12

    .line 529
    .line 530
    goto :goto_13

    .line 531
    :cond_12
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    :goto_13
    sub-int/2addr v7, v6

    .line 536
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 541
    .line 542
    goto :goto_10

    .line 543
    :cond_14
    const/4 v3, 0x0

    .line 544
    :cond_15
    add-int v2, v19, v8

    .line 545
    .line 546
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getMainAxisMin()I

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getCrossAxisMax()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    const v4, 0x7fffffff

    .line 559
    .line 560
    .line 561
    if-eq v2, v4, :cond_16

    .line 562
    .line 563
    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 564
    .line 565
    sget-object v4, Landroidx/compose/foundation/layout/SizeMode;->Expand:Landroidx/compose/foundation/layout/SizeMode;

    .line 566
    .line 567
    if-ne v2, v4, :cond_16

    .line 568
    .line 569
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getCrossAxisMax()I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    :goto_14
    move v11, v1

    .line 574
    goto :goto_15

    .line 575
    :cond_16
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->getCrossAxisMin()I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    iget v2, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 580
    .line 581
    add-int/2addr v2, v3

    .line 582
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    goto :goto_14

    .line 591
    :goto_15
    iget-object v1, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 592
    .line 593
    sget-object v2, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 594
    .line 595
    if-ne v1, v2, :cond_17

    .line 596
    .line 597
    move/from16 v16, v6

    .line 598
    .line 599
    goto :goto_16

    .line 600
    :cond_17
    move/from16 v16, v11

    .line 601
    .line 602
    :goto_16
    if-ne v1, v2, :cond_18

    .line 603
    .line 604
    move/from16 v17, v11

    .line 605
    .line 606
    goto :goto_17

    .line 607
    :cond_18
    move/from16 v17, v6

    .line 608
    .line 609
    :goto_17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    new-array v7, v1, [I

    .line 614
    .line 615
    const/4 v8, 0x0

    .line 616
    :goto_18
    if-ge v8, v1, :cond_19

    .line 617
    .line 618
    const/4 v2, 0x0

    .line 619
    aput v2, v7, v8

    .line 620
    .line 621
    add-int/lit8 v8, v8, 0x1

    .line 622
    .line 623
    goto :goto_18

    .line 624
    :cond_19
    new-instance v18, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;

    .line 625
    .line 626
    iget-object v4, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangement:Lat/p;

    .line 627
    .line 628
    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 629
    .line 630
    iget-object v10, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 631
    .line 632
    move-object/from16 v1, v18

    .line 633
    .line 634
    move-object/from16 v2, p2

    .line 635
    .line 636
    move-object v3, v14

    .line 637
    move v5, v6

    .line 638
    move-object/from16 v6, p1

    .line 639
    .line 640
    move-object/from16 v9, v24

    .line 641
    .line 642
    move-object v12, v15

    .line 643
    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;-><init>(Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lat/p;ILandroidx/compose/ui/layout/MeasureScope;[ILandroidx/compose/foundation/layout/LayoutOrientation;[Landroidx/compose/foundation/layout/RowColumnParentData;Landroidx/compose/foundation/layout/CrossAxisAlignment;ILkotlin/jvm/internal/Ref$IntRef;)V

    .line 644
    .line 645
    .line 646
    const/4 v6, 0x4

    .line 647
    const/4 v7, 0x0

    .line 648
    const/4 v4, 0x0

    .line 649
    move-object/from16 v1, p1

    .line 650
    .line 651
    move/from16 v2, v16

    .line 652
    .line 653
    move/from16 v3, v17

    .line 654
    .line 655
    move-object/from16 v5, v18

    .line 656
    .line 657
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    return-object v1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MinIntrinsicHeightMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lat/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, p2, p3, p1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$MinIntrinsicWidthMeasureBlock(Landroidx/compose/foundation/layout/LayoutOrientation;)Lat/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, p2, p3, p1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method
