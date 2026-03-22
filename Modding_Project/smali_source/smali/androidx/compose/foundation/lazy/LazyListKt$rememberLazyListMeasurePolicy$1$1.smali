.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Lkotlin/jvm/functions/Function2;
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
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field final synthetic $overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field final synthetic $placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 20
    .line 21
    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 22
    .line 23
    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 27
    .line 28
    .line 29
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
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 32
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
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

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
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    add-int v15, v4, v5

    .line 111
    .line 112
    add-int v12, v2, v3

    .line 113
    .line 114
    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 115
    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    move v7, v15

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v7, v12

    .line 121
    :goto_3
    if-eqz v6, :cond_4

    .line 122
    .line 123
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

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
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

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
    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

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
    sub-int v17, v7, v16

    .line 151
    .line 152
    neg-int v3, v12

    .line 153
    neg-int v5, v15

    .line 154
    invoke-static {v13, v14, v3, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    .line 155
    .line 156
    .line 157
    move-result-wide v27

    .line 158
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 159
    .line 160
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 161
    .line 162
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 166
    .line 167
    invoke-virtual {v3, v0}, Landroidx/compose/foundation/lazy/LazyListState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 171
    .line 172
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    invoke-interface {v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(I)F

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->setMaxWidth-0680j_4(F)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 188
    .line 189
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-interface {v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(I)F

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->setMaxHeight-0680j_4(F)V

    .line 202
    .line 203
    .line 204
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 205
    .line 206
    const-string v5, "Required value was null."

    .line 207
    .line 208
    if-eqz v3, :cond_8

    .line 209
    .line 210
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 211
    .line 212
    if-eqz v3, :cond_7

    .line 213
    .line 214
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    goto :goto_5

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 220
    .line 221
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_8
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 226
    .line 227
    if-eqz v3, :cond_e

    .line 228
    .line 229
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    :goto_5
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 238
    .line 239
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 240
    .line 241
    .line 242
    move-result v23

    .line 243
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 244
    .line 245
    if-eqz v3, :cond_9

    .line 246
    .line 247
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    sub-int/2addr v3, v15

    .line 252
    :goto_6
    move/from16 v29, v3

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_9
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    sub-int/2addr v3, v12

    .line 260
    goto :goto_6

    .line 261
    :goto_7
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 262
    .line 263
    if-eqz v3, :cond_d

    .line 264
    .line 265
    if-lez v29, :cond_a

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_a
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 269
    .line 270
    if-eqz v3, :cond_b

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_b
    add-int v2, v2, v29

    .line 274
    .line 275
    :goto_8
    if-eqz v3, :cond_c

    .line 276
    .line 277
    add-int v4, v4, v29

    .line 278
    .line 279
    :cond_c
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    :goto_9
    move-wide/from16 v18, v2

    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_d
    :goto_a
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 287
    .line 288
    .line 289
    move-result-wide v2

    .line 290
    goto :goto_9

    .line 291
    :goto_b
    new-instance v30, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;

    .line 292
    .line 293
    iget-boolean v11, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 294
    .line 295
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 296
    .line 297
    new-instance v20, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 298
    .line 299
    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 300
    .line 301
    iget-object v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 302
    .line 303
    iget-boolean v9, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 304
    .line 305
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 306
    .line 307
    move-object/from16 v2, v20

    .line 308
    .line 309
    move/from16 v3, v23

    .line 310
    .line 311
    move v4, v5

    .line 312
    move-object/from16 v5, p1

    .line 313
    .line 314
    move-object/from16 v21, v6

    .line 315
    .line 316
    move v6, v11

    .line 317
    move-object/from16 v22, v10

    .line 318
    .line 319
    move/from16 v10, v16

    .line 320
    .line 321
    move/from16 v24, v11

    .line 322
    .line 323
    move/from16 v11, v17

    .line 324
    .line 325
    move/from16 v31, v12

    .line 326
    .line 327
    move-object/from16 v12, v21

    .line 328
    .line 329
    move-wide/from16 v13, v18

    .line 330
    .line 331
    invoke-direct/range {v2 .. v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;J)V

    .line 332
    .line 333
    .line 334
    const/4 v9, 0x0

    .line 335
    move-object/from16 v2, v30

    .line 336
    .line 337
    move-wide/from16 v3, v27

    .line 338
    .line 339
    move/from16 v5, v24

    .line 340
    .line 341
    move-object/from16 v6, v22

    .line 342
    .line 343
    move-object/from16 v7, p1

    .line 344
    .line 345
    move-object/from16 v8, v20

    .line 346
    .line 347
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/MeasuredItemFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    .line 349
    .line 350
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 351
    .line 352
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    .line 353
    .line 354
    .line 355
    move-result-wide v3

    .line 356
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/lazy/LazyListState;->setPremeasureConstraints-BRTryo0$foundation_release(J)V

    .line 357
    .line 358
    .line 359
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 360
    .line 361
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 368
    .line 369
    .line 370
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    .line 380
    .line 381
    .line 382
    move-result v14

    .line 383
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    .line 385
    :try_start_2
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 389
    .line 390
    .line 391
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 392
    .line 393
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollToBeConsumed$foundation_release()F

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    move v7, v15

    .line 398
    move v15, v2

    .line 399
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 400
    .line 401
    move/from16 v18, v2

    .line 402
    .line 403
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 404
    .line 405
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getHeaderIndexes()Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v19

    .line 409
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 410
    .line 411
    move-object/from16 v20, v2

    .line 412
    .line 413
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 414
    .line 415
    move-object/from16 v21, v2

    .line 416
    .line 417
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 418
    .line 419
    move/from16 v22, v2

    .line 420
    .line 421
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 422
    .line 423
    move-object/from16 v24, v2

    .line 424
    .line 425
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 426
    .line 427
    move-object/from16 v25, v2

    .line 428
    .line 429
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;

    .line 430
    .line 431
    move-object/from16 v26, v2

    .line 432
    .line 433
    move-object/from16 v3, p1

    .line 434
    .line 435
    move-wide/from16 v4, p2

    .line 436
    .line 437
    move/from16 v6, v31

    .line 438
    .line 439
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    .line 440
    .line 441
    .line 442
    move/from16 v8, v23

    .line 443
    .line 444
    move-object/from16 v9, v30

    .line 445
    .line 446
    move/from16 v10, v29

    .line 447
    .line 448
    move/from16 v11, v16

    .line 449
    .line 450
    move/from16 v12, v17

    .line 451
    .line 452
    move-wide/from16 v16, v27

    .line 453
    .line 454
    move-object/from16 v23, p1

    .line 455
    .line 456
    invoke-static/range {v8 .. v26}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList-7Xnphek(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Lat/n;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 461
    .line 462
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 463
    .line 464
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 465
    .line 466
    .line 467
    invoke-static {v3, v0}, Landroidx/compose/foundation/lazy/LazyListKt;->access$refreshOverscrollInfo(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 468
    .line 469
    .line 470
    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    .line 472
    goto :goto_c

    .line 473
    :catchall_1
    move-exception v0

    .line 474
    :try_start_3
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 475
    .line 476
    .line 477
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 479
    .line 480
    .line 481
    throw v0

    .line 482
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 483
    .line 484
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw v0
.end method
