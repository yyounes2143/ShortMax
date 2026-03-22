.class final Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;
.super Ljava/lang/Object;
.source "AlertDialog.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->AlertDialogFlowRow-ixp7dh8(FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $crossAxisSpacing:F

.field final synthetic $mainAxisSpacing:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$crossAxisSpacing:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final measure_3p2s80s$canAddToCurrentSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FJLandroidx/compose/ui/layout/Placeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FJ",
            "Landroidx/compose/ui/layout/Placeable;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    .line 9
    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr p0, p1

    .line 14
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/2addr p0, p1

    .line 19
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-gt p0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method private static final measure_3p2s80s$startNewSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "F",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    add-int/2addr v0, p2

    .line 16
    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 17
    .line 18
    :cond_0
    move-object p2, p4

    .line 19
    check-cast p2, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    check-cast p5, Ljava/util/Collection;

    .line 29
    .line 30
    iget p0, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p5, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    check-cast p7, Ljava/util/Collection;

    .line 40
    .line 41
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 42
    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p7, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 51
    .line 52
    iget p2, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 53
    .line 54
    add-int/2addr p0, p2

    .line 55
    iput p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 56
    .line 57
    iget p0, p8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 58
    .line 59
    iget p1, p9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 60
    .line 61
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    iput p0, p8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 66
    .line 67
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    iput p0, p9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 72
    .line 73
    iput p0, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23
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
    move-object/from16 v11, p1

    .line 4
    .line 5
    const-string v1, "$this$Layout"

    .line 6
    .line 7
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "measurables"

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v12, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v13, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v14, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 33
    .line 34
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 38
    .line 39
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v9, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 48
    .line 49
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 53
    .line 54
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 58
    .line 59
    .line 60
    move-result v17

    .line 61
    const/16 v20, 0xd

    .line 62
    .line 63
    const/16 v21, 0x0

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v18, 0x0

    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 90
    .line 91
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iget v3, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 96
    .line 97
    move-object v1, v9

    .line 98
    move-object v2, v8

    .line 99
    move/from16 v17, v3

    .line 100
    .line 101
    move-object/from16 v3, p1

    .line 102
    .line 103
    move-object/from16 p2, v4

    .line 104
    .line 105
    move/from16 v4, v17

    .line 106
    .line 107
    move-wide/from16 v17, v5

    .line 108
    .line 109
    move-wide/from16 v5, p3

    .line 110
    .line 111
    move-object/from16 v19, v7

    .line 112
    .line 113
    move-object/from16 v7, p2

    .line 114
    .line 115
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->measure_3p2s80s$canAddToCurrentSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FJLandroidx/compose/ui/layout/Placeable;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    .line 121
    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$crossAxisSpacing:F

    .line 122
    .line 123
    move-object v1, v12

    .line 124
    move-object v2, v10

    .line 125
    move-object/from16 v3, p1

    .line 126
    .line 127
    move-object v5, v9

    .line 128
    move-object v6, v13

    .line 129
    move-object/from16 v7, v19

    .line 130
    .line 131
    move-object/from16 v20, v8

    .line 132
    .line 133
    move-object v8, v14

    .line 134
    move-object/from16 v21, v9

    .line 135
    .line 136
    move-object v9, v15

    .line 137
    move-object/from16 v22, v10

    .line 138
    .line 139
    move-object/from16 v10, v20

    .line 140
    .line 141
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->measure_3p2s80s$startNewSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_0
    move-object/from16 v20, v8

    .line 146
    .line 147
    move-object/from16 v21, v9

    .line 148
    .line 149
    move-object/from16 v22, v10

    .line 150
    .line 151
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    move-object/from16 v10, v20

    .line 156
    .line 157
    if-nez v1, :cond_1

    .line 158
    .line 159
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 160
    .line 161
    iget v2, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 162
    .line 163
    invoke-interface {v11, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    add-int/2addr v1, v2

    .line 168
    iput v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 169
    .line 170
    :cond_1
    move-object/from16 v1, p2

    .line 171
    .line 172
    move-object/from16 v5, v21

    .line 173
    .line 174
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 178
    .line 179
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    add-int/2addr v2, v3

    .line 184
    iput v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 185
    .line 186
    move-object/from16 v7, v19

    .line 187
    .line 188
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 189
    .line 190
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    iput v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 199
    .line 200
    move-object v9, v5

    .line 201
    move-object v8, v10

    .line 202
    move-wide/from16 v5, v17

    .line 203
    .line 204
    move-object/from16 v10, v22

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_2
    move-object v5, v9

    .line 208
    move-object/from16 v22, v10

    .line 209
    .line 210
    move-object v10, v8

    .line 211
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_3

    .line 216
    .line 217
    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$crossAxisSpacing:F

    .line 218
    .line 219
    move-object v1, v12

    .line 220
    move-object/from16 v2, v22

    .line 221
    .line 222
    move-object/from16 v3, p1

    .line 223
    .line 224
    move-object v6, v13

    .line 225
    move-object v8, v14

    .line 226
    move-object v9, v15

    .line 227
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->measure_3p2s80s$startNewSequence(Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    const v2, 0x7fffffff

    .line 235
    .line 236
    .line 237
    if-eq v1, v2, :cond_4

    .line 238
    .line 239
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    :goto_2
    move v7, v1

    .line 244
    move-object/from16 v1, v22

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_4
    iget v1, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 248
    .line 249
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    goto :goto_2

    .line 258
    :goto_3
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 259
    .line 260
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    new-instance v9, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;

    .line 269
    .line 270
    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 271
    .line 272
    move-object v1, v9

    .line 273
    move-object v2, v12

    .line 274
    move-object/from16 v3, p1

    .line 275
    .line 276
    move v5, v7

    .line 277
    move-object v6, v14

    .line 278
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V

    .line 279
    .line 280
    .line 281
    const/4 v6, 0x4

    .line 282
    const/4 v10, 0x0

    .line 283
    const/4 v4, 0x0

    .line 284
    move-object/from16 v1, p1

    .line 285
    .line 286
    move v2, v7

    .line 287
    move v3, v8

    .line 288
    move-object v5, v9

    .line 289
    move-object v7, v10

    .line 290
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    return-object v1
.end method
