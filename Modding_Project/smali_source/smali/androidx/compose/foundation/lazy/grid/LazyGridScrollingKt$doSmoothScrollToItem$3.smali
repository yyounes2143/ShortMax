.class final Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyGridScrolling.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->doSmoothScrollToItem(Landroidx/compose/foundation/lazy/grid/LazyGridState;IIILrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.compose.foundation.lazy.grid.LazyGridScrollingKt$doSmoothScrollToItem$3"
    f = "LazyGridScrolling.kt"
    l = {
        0x80,
        0xdf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $scrollOffset:I

.field final synthetic $slotsPerLine:I

.field final synthetic $this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field F$0:F

.field F$1:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;IIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "III",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$slotsPerLine:I

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/grid/LazyGridState;II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/grid/LazyGridState;II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/grid/LazyGridState;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-le p0, p2, :cond_0

    .line 10
    .line 11
    :goto_0
    move v0, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ne p0, p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-le p0, p3, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ge p0, p2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, p2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-ge p0, p3, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$slotsPerLine:I

    .line 8
    .line 9
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;IIILrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    iget v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->label:I

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    const/4 v12, 0x2

    .line 11
    const/4 v14, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v14, :cond_1

    .line 15
    .line 16
    if-ne v0, v12, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_c

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    iget v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->I$0:I

    .line 32
    .line 33
    iget v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->F$1:F

    .line 34
    .line 35
    iget v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->F$0:F

    .line 36
    .line 37
    iget-object v3, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 40
    .line 41
    iget-object v4, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    .line 45
    iget-object v5, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 48
    .line 49
    iget-object v6, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 52
    .line 53
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    move v8, v1

    .line 57
    move v7, v2

    .line 58
    move-object/from16 v28, v6

    .line 59
    .line 60
    move-object v6, v3

    .line 61
    move-object/from16 v3, v28

    .line 62
    .line 63
    move-object/from16 v29, v5

    .line 64
    .line 65
    move-object v5, v4

    .line 66
    move-object/from16 v4, v29

    .line 67
    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v6, v0

    .line 79
    check-cast v6, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 80
    .line 81
    :try_start_1
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->access$getTargetDistance$p()F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->access$getBoundDistance$p()F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 110
    .line 111
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-boolean v14, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 115
    .line 116
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 117
    .line 118
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 119
    .line 120
    .line 121
    const/16 v22, 0x1e

    .line 122
    .line 123
    const/16 v23, 0x0

    .line 124
    .line 125
    const/4 v15, 0x0

    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const-wide/16 v17, 0x0

    .line 129
    .line 130
    const-wide/16 v19, 0x0

    .line 131
    .line 132
    const/16 v21, 0x0

    .line 133
    .line 134
    invoke-static/range {v15 .. v23}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v4, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 141
    .line 142
    iget v5, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 143
    .line 144
    invoke-static {v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->access$doSmoothScrollToItem$getTargetItem(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-nez v4, :cond_b

    .line 149
    .line 150
    iget v4, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 151
    .line 152
    iget-object v5, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-le v4, v5, :cond_3

    .line 159
    .line 160
    move v4, v14

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    const/4 v4, 0x0

    .line 163
    :goto_0
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 164
    .line 165
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 166
    .line 167
    .line 168
    iput v14, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_1
    .catch Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    .line 170
    move v7, v0

    .line 171
    move v8, v1

    .line 172
    move v0, v4

    .line 173
    move-object v4, v2

    .line 174
    move-object/from16 v28, v5

    .line 175
    .line 176
    move-object v5, v3

    .line 177
    move-object v3, v6

    .line 178
    move-object/from16 v6, v28

    .line 179
    .line 180
    :goto_1
    :try_start_2
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 181
    .line 182
    if-eqz v1, :cond_e

    .line 183
    .line 184
    iget-object v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getTotalItemsCount()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-lez v1, :cond_e

    .line 195
    .line 196
    iget-object v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->access$calculateLineAverageMainAxisSize(Ljava/util/List;Z)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iget v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 211
    .line 212
    iget-object v15, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 213
    .line 214
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    if-ge v2, v15, :cond_4

    .line 219
    .line 220
    move v2, v14

    .line 221
    goto :goto_2

    .line 222
    :cond_4
    const/4 v2, 0x0

    .line 223
    :goto_2
    iget v15, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 224
    .line 225
    iget-object v13, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 226
    .line 227
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    sub-int/2addr v15, v13

    .line 232
    iget v13, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$slotsPerLine:I

    .line 233
    .line 234
    add-int/lit8 v16, v13, -0x1

    .line 235
    .line 236
    if-eqz v2, :cond_5

    .line 237
    .line 238
    const/4 v2, -0x1

    .line 239
    goto :goto_3

    .line 240
    :cond_5
    move v2, v14

    .line 241
    :goto_3
    mul-int v16, v16, v2

    .line 242
    .line 243
    add-int v15, v15, v16

    .line 244
    .line 245
    div-int/2addr v15, v13

    .line 246
    mul-int/2addr v1, v15

    .line 247
    int-to-float v1, v1

    .line 248
    iget v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 249
    .line 250
    int-to-float v2, v2

    .line 251
    add-float/2addr v1, v2

    .line 252
    iget-object v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 253
    .line 254
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    int-to-float v2, v2

    .line 259
    sub-float/2addr v1, v2

    .line 260
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    cmpg-float v2, v2, v7

    .line 265
    .line 266
    if-gez v2, :cond_6

    .line 267
    .line 268
    :goto_4
    move/from16 v16, v1

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_6
    if-eqz v0, :cond_7

    .line 272
    .line 273
    move/from16 v16, v7

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_7
    neg-float v1, v7

    .line 277
    goto :goto_4

    .line 278
    :goto_5
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 279
    .line 280
    move-object/from16 v17, v1

    .line 281
    .line 282
    check-cast v17, Landroidx/compose/animation/core/AnimationState;

    .line 283
    .line 284
    const/16 v25, 0x1e

    .line 285
    .line 286
    const/16 v26, 0x0

    .line 287
    .line 288
    const/16 v18, 0x0

    .line 289
    .line 290
    const/16 v19, 0x0

    .line 291
    .line 292
    const-wide/16 v20, 0x0

    .line 293
    .line 294
    const-wide/16 v22, 0x0

    .line 295
    .line 296
    const/16 v24, 0x0

    .line 297
    .line 298
    invoke-static/range {v17 .. v26}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 303
    .line 304
    new-instance v17, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 305
    .line 306
    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 307
    .line 308
    .line 309
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 312
    .line 313
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iget-object v13, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v13, Landroidx/compose/animation/core/AnimationState;

    .line 320
    .line 321
    invoke-virtual {v13}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    check-cast v13, Ljava/lang/Number;

    .line 326
    .line 327
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    cmpg-float v13, v13, v11

    .line 332
    .line 333
    if-nez v13, :cond_8

    .line 334
    .line 335
    const/4 v13, 0x0

    .line 336
    goto :goto_6

    .line 337
    :cond_8
    move v13, v14

    .line 338
    :goto_6
    new-instance v27, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;

    .line 339
    .line 340
    if-eqz v0, :cond_9

    .line 341
    .line 342
    move/from16 v20, v14

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_9
    const/16 v20, 0x0

    .line 346
    .line 347
    :goto_7
    iget v15, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 348
    .line 349
    iget-object v12, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 350
    .line 351
    iget v11, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 352
    .line 353
    move/from16 v23, v15

    .line 354
    .line 355
    move-object/from16 v15, v27

    .line 356
    .line 357
    move-object/from16 v18, v3

    .line 358
    .line 359
    move-object/from16 v19, v4

    .line 360
    .line 361
    move/from16 v21, v8

    .line 362
    .line 363
    move-object/from16 v22, v6

    .line 364
    .line 365
    move-object/from16 v24, v12

    .line 366
    .line 367
    move/from16 v25, v11

    .line 368
    .line 369
    move-object/from16 v26, v5

    .line 370
    .line 371
    invoke-direct/range {v15 .. v26}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;ILandroidx/compose/foundation/lazy/grid/LazyGridState;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 372
    .line 373
    .line 374
    iput-object v3, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v4, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v5, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 379
    .line 380
    iput-object v6, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 381
    .line 382
    iput v7, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->F$0:F

    .line 383
    .line 384
    iput v8, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->F$1:F

    .line 385
    .line 386
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->I$0:I

    .line 387
    .line 388
    iput v14, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->label:I
    :try_end_2
    .catch Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll; {:try_start_2 .. :try_end_2} :catch_3

    .line 389
    .line 390
    const/4 v11, 0x0

    .line 391
    const/4 v12, 0x2

    .line 392
    const/4 v15, 0x0

    .line 393
    move-object/from16 v16, v3

    .line 394
    .line 395
    move-object v3, v11

    .line 396
    move-object v11, v4

    .line 397
    move v4, v13

    .line 398
    move-object v13, v5

    .line 399
    move-object/from16 v5, v27

    .line 400
    .line 401
    move-object/from16 v17, v6

    .line 402
    .line 403
    move-object/from16 v6, p0

    .line 404
    .line 405
    move/from16 v18, v7

    .line 406
    .line 407
    move v7, v12

    .line 408
    move v12, v8

    .line 409
    move-object v8, v15

    .line 410
    :try_start_3
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v1
    :try_end_3
    .catch Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll; {:try_start_3 .. :try_end_3} :catch_2

    .line 414
    if-ne v1, v10, :cond_a

    .line 415
    .line 416
    return-object v10

    .line 417
    :cond_a
    move-object v4, v11

    .line 418
    move v8, v12

    .line 419
    move-object v5, v13

    .line 420
    move-object/from16 v3, v16

    .line 421
    .line 422
    move-object/from16 v6, v17

    .line 423
    .line 424
    move/from16 v7, v18

    .line 425
    .line 426
    :goto_8
    :try_start_4
    iget v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 427
    .line 428
    add-int/2addr v1, v14

    .line 429
    iput v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catch Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll; {:try_start_4 .. :try_end_4} :catch_1

    .line 430
    .line 431
    const/4 v11, 0x0

    .line 432
    const/4 v12, 0x2

    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :catch_1
    move-exception v0

    .line 436
    move-object v6, v3

    .line 437
    goto :goto_a

    .line 438
    :catch_2
    move-exception v0

    .line 439
    :goto_9
    move-object/from16 v6, v16

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :catch_3
    move-exception v0

    .line 443
    move-object/from16 v16, v3

    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_b
    :try_start_5
    new-instance v0, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;

    .line 447
    .line 448
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 451
    .line 452
    invoke-direct {v0, v4, v1}, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/animation/core/AnimationState;)V

    .line 453
    .line 454
    .line 455
    throw v0
    :try_end_5
    .catch Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll; {:try_start_5 .. :try_end_5} :catch_0

    .line 456
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;->getPreviousAnimation()Landroidx/compose/animation/core/AnimationState;

    .line 457
    .line 458
    .line 459
    move-result-object v15

    .line 460
    const/16 v23, 0x1e

    .line 461
    .line 462
    const/16 v24, 0x0

    .line 463
    .line 464
    const/16 v16, 0x0

    .line 465
    .line 466
    const/16 v17, 0x0

    .line 467
    .line 468
    const-wide/16 v18, 0x0

    .line 469
    .line 470
    const-wide/16 v20, 0x0

    .line 471
    .line 472
    const/16 v22, 0x0

    .line 473
    .line 474
    invoke-static/range {v15 .. v24}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;->getItem()Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getOffset-nOcc-ac()J

    .line 483
    .line 484
    .line 485
    move-result-wide v2

    .line 486
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    iget v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 491
    .line 492
    add-int/2addr v0, v2

    .line 493
    int-to-float v0, v0

    .line 494
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 495
    .line 496
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    check-cast v4, Ljava/lang/Number;

    .line 508
    .line 509
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    const/4 v5, 0x0

    .line 514
    cmpg-float v4, v4, v5

    .line 515
    .line 516
    if-nez v4, :cond_c

    .line 517
    .line 518
    move v13, v14

    .line 519
    goto :goto_b

    .line 520
    :cond_c
    const/4 v13, 0x0

    .line 521
    :goto_b
    xor-int/lit8 v4, v13, 0x1

    .line 522
    .line 523
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$4;

    .line 524
    .line 525
    invoke-direct {v5, v0, v2, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$4;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x0

    .line 529
    iput-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 530
    .line 531
    iput-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 536
    .line 537
    const/4 v2, 0x2

    .line 538
    iput v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->label:I

    .line 539
    .line 540
    const/4 v7, 0x2

    .line 541
    const/4 v8, 0x0

    .line 542
    move-object v2, v3

    .line 543
    move-object v3, v0

    .line 544
    move-object/from16 v6, p0

    .line 545
    .line 546
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    if-ne v0, v10, :cond_d

    .line 551
    .line 552
    return-object v10

    .line 553
    :cond_d
    :goto_c
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 554
    .line 555
    iget v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 556
    .line 557
    iget v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 558
    .line 559
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->snapToItemIndexInternal$foundation_release(II)V

    .line 560
    .line 561
    .line 562
    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 563
    .line 564
    return-object v0
.end method
