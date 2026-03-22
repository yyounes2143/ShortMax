.class public final Landroidx/compose/foundation/text/TextController$measurePolicy$1;
.super Ljava/lang/Object;
.source "CoreText.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 7
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
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 p2, 0x0

    .line 22
    const v1, 0x7fffffff

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextDelegate;->layout-NN6Ew-U$default(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;ILjava/lang/Object;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
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
    const-string p3, "<this>"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->getMaxIntrinsicWidth()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
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
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "$this$measure"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "measurables"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-wide/from16 v6, p3

    .line 42
    .line 43
    invoke-virtual {v4, v6, v7, v5, v3}, Landroidx/compose/foundation/text/TextDelegate;->layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    iget-object v5, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextState;->getOnTextLayout()Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget-object v5, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_0

    .line 91
    .line 92
    invoke-static {v5}, Landroidx/compose/foundation/text/TextController;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    .line 98
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextState;->getSelectableId()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-interface {v3, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectableChange(J)V

    .line 107
    .line 108
    .line 109
    :cond_0
    iget-object v3, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/TextState;->setLayoutResult(Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 116
    .line 117
    .line 118
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPlaceholderRects()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-lt v3, v5, :cond_4

    .line 131
    .line 132
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPlaceholderRects()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const/4 v7, 0x0

    .line 150
    :goto_0
    if-ge v7, v6, :cond_3

    .line 151
    .line 152
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    .line 157
    .line 158
    if-eqz v8, :cond_1

    .line 159
    .line 160
    new-instance v9, Lkotlin/Pair;

    .line 161
    .line 162
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 167
    .line 168
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    float-to-double v11, v11

    .line 173
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    double-to-float v11, v11

    .line 178
    float-to-int v13, v11

    .line 179
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    float-to-double v11, v11

    .line 184
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide v11

    .line 188
    double-to-float v11, v11

    .line 189
    float-to-int v15, v11

    .line 190
    const/16 v16, 0x5

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    const/4 v12, 0x0

    .line 195
    const/4 v14, 0x0

    .line 196
    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v11

    .line 200
    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    invoke-static {v11}, Lbt/a;->c(F)I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    invoke-static {v8}, Lbt/a;->c(F)I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    invoke-static {v11, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 221
    .line 222
    .line 223
    move-result-wide v11

    .line 224
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_1
    const/4 v9, 0x0

    .line 233
    :goto_1
    if-eqz v9, :cond_2

    .line 234
    .line 235
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    .line 250
    .line 251
    .line 252
    move-result-wide v6

    .line 253
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getFirstBaseline()F

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    invoke-static {v7}, Lbt/a;->c(F)I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-static {v6, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLastBaseline()F

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-static {v4}, Lbt/a;->c(F)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-static {v7, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    filled-new-array {v6, v4}, [Lkotlin/Pair;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-static {v4}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    new-instance v6, Landroidx/compose/foundation/text/TextController$measurePolicy$1$measure$2;

    .line 306
    .line 307
    invoke-direct {v6, v5}, Landroidx/compose/foundation/text/TextController$measurePolicy$1$measure$2;-><init>(Ljava/util/List;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {v1, v2, v3, v4, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    return-object v1

    .line 315
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 316
    .line 317
    const-string v2, "Check failed."

    .line 318
    .line 319
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v1
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 7
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
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 p2, 0x0

    .line 22
    const v1, 0x7fffffff

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextDelegate;->layout-NN6Ew-U$default(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;ILjava/lang/Object;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
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
    const-string p3, "<this>"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->getMinIntrinsicWidth()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method
