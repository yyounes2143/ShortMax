.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGrid.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt;->rememberLazyGridMeasurePolicy(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

.field final synthetic $overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field final synthetic $placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

.field final synthetic $reverseLayout:Z

.field final synthetic $slotSizesSums:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slotSizesSums:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 40
    .param p1    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    const-string v2, "$this$null"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 20
    .line 21
    :goto_0
    invoke-static {v13, v14, v2}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 44
    .line 45
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 62
    .line 63
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 77
    .line 78
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    :goto_2
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 91
    .line 92
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget-object v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 101
    .line 102
    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    add-int v11, v4, v5

    .line 111
    .line 112
    add-int v15, v2, v3

    .line 113
    .line 114
    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 115
    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    move v7, v11

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v7, v15

    .line 121
    :goto_3
    if-eqz v6, :cond_4

    .line 122
    .line 123
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 124
    .line 125
    if-nez v8, :cond_4

    .line 126
    .line 127
    move/from16 v16, v4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    if-eqz v6, :cond_5

    .line 131
    .line 132
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 133
    .line 134
    if-eqz v8, :cond_5

    .line 135
    .line 136
    move/from16 v16, v5

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    if-nez v6, :cond_6

    .line 140
    .line 141
    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 142
    .line 143
    if-nez v5, :cond_6

    .line 144
    .line 145
    move/from16 v16, v2

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    move/from16 v16, v3

    .line 149
    .line 150
    :goto_4
    sub-int v18, v7, v16

    .line 151
    .line 152
    neg-int v3, v15

    .line 153
    neg-int v5, v11

    .line 154
    invoke-static {v13, v14, v3, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    .line 155
    .line 156
    .line 157
    move-result-wide v27

    .line 158
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 159
    .line 160
    iget-object v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 161
    .line 162
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 166
    .line 167
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getSpanLayoutProvider()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slotSizesSums:Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-interface {v3, v0, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    move-object v9, v3

    .line 182
    check-cast v9, Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->setSlotsPerLine(I)V

    .line 189
    .line 190
    .line 191
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 192
    .line 193
    invoke-virtual {v3, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    .line 194
    .line 195
    .line 196
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 197
    .line 198
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setSlotsPerLine$foundation_release(I)V

    .line 203
    .line 204
    .line 205
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 206
    .line 207
    const-string v5, "Required value was null."

    .line 208
    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 212
    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    goto :goto_5

    .line 220
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_8
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 227
    .line 228
    if-eqz v3, :cond_13

    .line 229
    .line 230
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    :goto_5
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 235
    .line 236
    .line 237
    move-result v34

    .line 238
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 239
    .line 240
    const/4 v10, 0x0

    .line 241
    if-eqz v3, :cond_a

    .line 242
    .line 243
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 244
    .line 245
    if-eqz v3, :cond_9

    .line 246
    .line 247
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    goto :goto_6

    .line 252
    :cond_9
    int-to-float v3, v10

    .line 253
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    goto :goto_6

    .line 258
    :cond_a
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 259
    .line 260
    if-eqz v3, :cond_b

    .line 261
    .line 262
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    goto :goto_6

    .line 267
    :cond_b
    int-to-float v3, v10

    .line 268
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    :goto_6
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 273
    .line 274
    .line 275
    move-result v32

    .line 276
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 277
    .line 278
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 283
    .line 284
    if-eqz v3, :cond_c

    .line 285
    .line 286
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    sub-int/2addr v3, v11

    .line 291
    :goto_7
    move/from16 v19, v3

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_c
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    sub-int/2addr v3, v15

    .line 299
    goto :goto_7

    .line 300
    :goto_8
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 301
    .line 302
    if-eqz v3, :cond_10

    .line 303
    .line 304
    if-lez v19, :cond_d

    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_d
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 308
    .line 309
    if-eqz v3, :cond_e

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_e
    add-int v2, v2, v19

    .line 313
    .line 314
    :goto_9
    if-eqz v3, :cond_f

    .line 315
    .line 316
    add-int v4, v4, v19

    .line 317
    .line 318
    :cond_f
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 319
    .line 320
    .line 321
    move-result-wide v2

    .line 322
    :goto_a
    move-wide/from16 v20, v2

    .line 323
    .line 324
    goto :goto_c

    .line 325
    :cond_10
    :goto_b
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 326
    .line 327
    .line 328
    move-result-wide v2

    .line 329
    goto :goto_a

    .line 330
    :goto_c
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 331
    .line 332
    iget-object v6, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 333
    .line 334
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 335
    .line 336
    iget-boolean v4, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 337
    .line 338
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 339
    .line 340
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 341
    .line 342
    move-object/from16 v17, v2

    .line 343
    .line 344
    move-object v2, v5

    .line 345
    move/from16 v22, v3

    .line 346
    .line 347
    move-object/from16 v3, p1

    .line 348
    .line 349
    move-object v13, v5

    .line 350
    move/from16 v5, v22

    .line 351
    .line 352
    move-object v14, v6

    .line 353
    move/from16 v6, v16

    .line 354
    .line 355
    move/from16 v24, v11

    .line 356
    .line 357
    move-object v11, v7

    .line 358
    move/from16 v7, v18

    .line 359
    .line 360
    move/from16 v39, v8

    .line 361
    .line 362
    move/from16 v38, v15

    .line 363
    .line 364
    move/from16 v15, v32

    .line 365
    .line 366
    move-object/from16 v8, v17

    .line 367
    .line 368
    move-object/from16 v22, v9

    .line 369
    .line 370
    move/from16 v23, v10

    .line 371
    .line 372
    move-object/from16 v17, v12

    .line 373
    .line 374
    move/from16 v12, v34

    .line 375
    .line 376
    move-wide/from16 v9, v20

    .line 377
    .line 378
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ZZIILandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V

    .line 379
    .line 380
    .line 381
    invoke-direct {v11, v14, v0, v12, v13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/lazy/grid/MeasuredItemFactory;)V

    .line 382
    .line 383
    .line 384
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;

    .line 385
    .line 386
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 387
    .line 388
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    .line 389
    .line 390
    move-object/from16 v4, v22

    .line 391
    .line 392
    invoke-direct {v3, v2, v4, v0, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(ZLjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;I)V

    .line 393
    .line 394
    .line 395
    move-object/from16 v29, v9

    .line 396
    .line 397
    move/from16 v30, v2

    .line 398
    .line 399
    move-object/from16 v31, v4

    .line 400
    .line 401
    move/from16 v33, v39

    .line 402
    .line 403
    move-object/from16 v35, v11

    .line 404
    .line 405
    move-object/from16 v36, v17

    .line 406
    .line 407
    move-object/from16 v37, v3

    .line 408
    .line 409
    invoke-direct/range {v29 .. v37}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;-><init>(ZLjava/util/List;IIILandroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 413
    .line 414
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;

    .line 415
    .line 416
    move-object/from16 v5, v17

    .line 417
    .line 418
    invoke-direct {v3, v5, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setPrefetchInfoRetriever$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 422
    .line 423
    .line 424
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 425
    .line 426
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 427
    .line 428
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 433
    .line 434
    .line 435
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    move/from16 v8, v39

    .line 441
    .line 442
    if-lt v7, v8, :cond_12

    .line 443
    .line 444
    if-gtz v8, :cond_11

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_11
    add-int/lit8 v3, v8, -0x1

    .line 448
    .line 449
    invoke-virtual {v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem--_Ze7BM(I)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    move v15, v3

    .line 454
    move/from16 v29, v23

    .line 455
    .line 456
    goto :goto_e

    .line 457
    :catchall_0
    move-exception v0

    .line 458
    goto :goto_f

    .line 459
    :cond_12
    :goto_d
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    invoke-virtual {v5, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem--_Ze7BM(I)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    move/from16 v29, v3

    .line 472
    .line 473
    move v15, v5

    .line 474
    :goto_e
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .line 476
    :try_start_2
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 480
    .line 481
    .line 482
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 483
    .line 484
    .line 485
    move-result v12

    .line 486
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 487
    .line 488
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getScrollToBeConsumed$foundation_release()F

    .line 489
    .line 490
    .line 491
    move-result v17

    .line 492
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 493
    .line 494
    move/from16 v20, v2

    .line 495
    .line 496
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 497
    .line 498
    move-object/from16 v21, v2

    .line 499
    .line 500
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 501
    .line 502
    move-object/from16 v22, v2

    .line 503
    .line 504
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 505
    .line 506
    move/from16 v23, v2

    .line 507
    .line 508
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 509
    .line 510
    move-object/from16 v25, v2

    .line 511
    .line 512
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;

    .line 513
    .line 514
    move-object/from16 v26, v2

    .line 515
    .line 516
    move-object/from16 v3, p1

    .line 517
    .line 518
    move-wide/from16 v4, p2

    .line 519
    .line 520
    move/from16 v6, v38

    .line 521
    .line 522
    move/from16 v7, v24

    .line 523
    .line 524
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    .line 525
    .line 526
    .line 527
    move-object v10, v11

    .line 528
    move/from16 v11, v19

    .line 529
    .line 530
    move/from16 v13, v16

    .line 531
    .line 532
    move/from16 v14, v18

    .line 533
    .line 534
    move/from16 v16, v29

    .line 535
    .line 536
    move-wide/from16 v18, v27

    .line 537
    .line 538
    move-object/from16 v24, p1

    .line 539
    .line 540
    invoke-static/range {v8 .. v26}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid-zIfe3eg(ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Lat/n;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 545
    .line 546
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 547
    .line 548
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 549
    .line 550
    .line 551
    invoke-static {v3, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->access$refreshOverscrollInfo(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 552
    .line 553
    .line 554
    return-object v0

    .line 555
    :catchall_1
    move-exception v0

    .line 556
    goto :goto_10

    .line 557
    :goto_f
    :try_start_3
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 558
    .line 559
    .line 560
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 561
    :goto_10
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 562
    .line 563
    .line 564
    throw v0

    .line 565
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 566
    .line 567
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw v0
.end method
