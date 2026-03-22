.class final Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyListScrolling.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListScrollingKt;->doSmoothScrollToItem(Landroidx/compose/foundation/lazy/LazyListState;IILrs/c;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3"
    f = "LazyListScrolling.kt"
    l = {
        0x72,
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $scrollOffset:I

.field final synthetic $this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

.field F$0:F

.field F$1:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;IILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "II",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/LazyListState;II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/LazyListState;II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final invokeSuspend$isOvershot(ZLandroidx/compose/foundation/lazy/LazyListState;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

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
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ne p0, p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

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
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

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
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, p2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

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
    .locals 4
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
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->invoke(Landroidx/compose/foundation/gestures/ScrollScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
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
    iget v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->label:I

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
    goto/16 :goto_b

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
    iget v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->I$0:I

    .line 32
    .line 33
    iget v1, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$1:F

    .line 34
    .line 35
    iget v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$0:F

    .line 36
    .line 37
    iget-object v3, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 40
    .line 41
    iget-object v4, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    .line 45
    iget-object v5, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 48
    .line 49
    iget-object v6, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 52
    .line 53
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    move v8, v1

    .line 57
    move v7, v2

    .line 58
    move-object/from16 v29, v6

    .line 59
    .line 60
    move-object v6, v3

    .line 61
    move-object/from16 v3, v29

    .line 62
    .line 63
    move-object/from16 v30, v5

    .line 64
    .line 65
    move-object v5, v4

    .line 66
    move-object/from16 v4, v30

    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v6, v0

    .line 79
    check-cast v6, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 80
    .line 81
    :try_start_1
    iget-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->access$getTargetDistance$p()F

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
    iget-object v1, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getDensity$foundation_release()Landroidx/compose/ui/unit/Density;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->access$getBoundDistance$p()F

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
    iget-object v4, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 141
    .line 142
    iget v5, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 143
    .line 144
    invoke-static {v4, v5}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->access$doSmoothScrollToItem$getTargetItem(Landroidx/compose/foundation/lazy/LazyListState;I)Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-nez v4, :cond_a

    .line 149
    .line 150
    iget v4, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 151
    .line 152
    iget-object v5, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

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
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_1 .. :try_end_1} :catch_0

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
    move-object/from16 v29, v5

    .line 175
    .line 176
    move-object v5, v3

    .line 177
    move-object v3, v6

    .line 178
    move-object/from16 v6, v29

    .line 179
    .line 180
    :goto_1
    :try_start_2
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 181
    .line 182
    if-eqz v1, :cond_d

    .line 183
    .line 184
    iget-object v1, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-lez v1, :cond_d

    .line 195
    .line 196
    iget-object v1, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v2
    :try_end_2
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_2 .. :try_end_2} :catch_3

    .line 210
    const/4 v15, 0x0

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    :goto_2
    if-ge v15, v2, :cond_4

    .line 214
    .line 215
    :try_start_3
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v17

    .line 219
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 220
    .line 221
    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    .line 222
    .line 223
    .line 224
    move-result v17
    :try_end_3
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_3 .. :try_end_3} :catch_1

    .line 225
    add-int v16, v16, v17

    .line 226
    .line 227
    add-int/lit8 v15, v15, 0x1

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    move-object v6, v3

    .line 232
    goto/16 :goto_9

    .line 233
    .line 234
    :cond_4
    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    div-int v16, v16, v1

    .line 239
    .line 240
    iget v1, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 241
    .line 242
    iget-object v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    sub-int/2addr v1, v2

    .line 249
    mul-int v1, v1, v16

    .line 250
    .line 251
    int-to-float v1, v1

    .line 252
    iget v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 253
    .line 254
    int-to-float v2, v2

    .line 255
    add-float/2addr v1, v2

    .line 256
    iget-object v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 257
    .line 258
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    int-to-float v2, v2

    .line 263
    sub-float/2addr v1, v2

    .line 264
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    cmpg-float v2, v2, v7

    .line 269
    .line 270
    if-gez v2, :cond_5

    .line 271
    .line 272
    :goto_3
    move/from16 v16, v1

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_5
    if-eqz v0, :cond_6

    .line 276
    .line 277
    move/from16 v16, v7

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_6
    neg-float v1, v7

    .line 281
    goto :goto_3

    .line 282
    :goto_4
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 283
    .line 284
    move-object/from16 v17, v1

    .line 285
    .line 286
    check-cast v17, Landroidx/compose/animation/core/AnimationState;

    .line 287
    .line 288
    const/16 v25, 0x1e

    .line 289
    .line 290
    const/16 v26, 0x0

    .line 291
    .line 292
    const/16 v18, 0x0

    .line 293
    .line 294
    const/16 v19, 0x0

    .line 295
    .line 296
    const-wide/16 v20, 0x0

    .line 297
    .line 298
    const-wide/16 v22, 0x0

    .line 299
    .line 300
    const/16 v24, 0x0

    .line 301
    .line 302
    invoke-static/range {v17 .. v26}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 307
    .line 308
    new-instance v17, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 309
    .line 310
    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 316
    .line 317
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    iget-object v15, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v15, Landroidx/compose/animation/core/AnimationState;

    .line 324
    .line 325
    invoke-virtual {v15}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v15

    .line 329
    check-cast v15, Ljava/lang/Number;

    .line 330
    .line 331
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    .line 332
    .line 333
    .line 334
    move-result v15

    .line 335
    cmpg-float v15, v15, v11

    .line 336
    .line 337
    if-nez v15, :cond_7

    .line 338
    .line 339
    const/16 v27, 0x0

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_7
    move/from16 v27, v14

    .line 343
    .line 344
    :goto_5
    new-instance v28, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$2;

    .line 345
    .line 346
    if-eqz v0, :cond_8

    .line 347
    .line 348
    move/from16 v20, v14

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_8
    const/16 v20, 0x0

    .line 352
    .line 353
    :goto_6
    iget v15, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 354
    .line 355
    iget-object v13, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 356
    .line 357
    iget v12, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 358
    .line 359
    move/from16 v23, v15

    .line 360
    .line 361
    move-object/from16 v15, v28

    .line 362
    .line 363
    move-object/from16 v18, v3

    .line 364
    .line 365
    move-object/from16 v19, v4

    .line 366
    .line 367
    move/from16 v21, v8

    .line 368
    .line 369
    move-object/from16 v22, v6

    .line 370
    .line 371
    move-object/from16 v24, v13

    .line 372
    .line 373
    move/from16 v25, v12

    .line 374
    .line 375
    move-object/from16 v26, v5

    .line 376
    .line 377
    invoke-direct/range {v15 .. v26}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$2;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;ILandroidx/compose/foundation/lazy/LazyListState;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 378
    .line 379
    .line 380
    iput-object v3, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v4, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v5, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v6, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 387
    .line 388
    iput v7, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$0:F

    .line 389
    .line 390
    iput v8, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$1:F

    .line 391
    .line 392
    iput v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->I$0:I

    .line 393
    .line 394
    iput v14, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->label:I
    :try_end_4
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_4 .. :try_end_4} :catch_3

    .line 395
    .line 396
    const/4 v12, 0x0

    .line 397
    const/4 v13, 0x2

    .line 398
    const/4 v15, 0x0

    .line 399
    move-object/from16 v16, v3

    .line 400
    .line 401
    move-object v3, v12

    .line 402
    move-object v12, v4

    .line 403
    move/from16 v4, v27

    .line 404
    .line 405
    move-object/from16 v17, v5

    .line 406
    .line 407
    move-object/from16 v5, v28

    .line 408
    .line 409
    move-object/from16 v18, v6

    .line 410
    .line 411
    move-object/from16 v6, p0

    .line 412
    .line 413
    move/from16 v19, v7

    .line 414
    .line 415
    move v7, v13

    .line 416
    move v13, v8

    .line 417
    move-object v8, v15

    .line 418
    :try_start_5
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v1
    :try_end_5
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_5 .. :try_end_5} :catch_2

    .line 422
    if-ne v1, v10, :cond_9

    .line 423
    .line 424
    return-object v10

    .line 425
    :cond_9
    move-object v4, v12

    .line 426
    move v8, v13

    .line 427
    move-object/from16 v3, v16

    .line 428
    .line 429
    move-object/from16 v5, v17

    .line 430
    .line 431
    move-object/from16 v6, v18

    .line 432
    .line 433
    move/from16 v7, v19

    .line 434
    .line 435
    :goto_7
    :try_start_6
    iget v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 436
    .line 437
    add-int/2addr v1, v14

    .line 438
    iput v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_6
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_6 .. :try_end_6} :catch_1

    .line 439
    .line 440
    const/4 v12, 0x2

    .line 441
    goto/16 :goto_1

    .line 442
    .line 443
    :catch_2
    move-exception v0

    .line 444
    :goto_8
    move-object/from16 v6, v16

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :catch_3
    move-exception v0

    .line 448
    move-object/from16 v16, v3

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_a
    :try_start_7
    new-instance v0, Landroidx/compose/foundation/lazy/ItemFoundInScroll;

    .line 452
    .line 453
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 456
    .line 457
    invoke-direct {v0, v4, v1}, Landroidx/compose/foundation/lazy/ItemFoundInScroll;-><init>(Landroidx/compose/foundation/lazy/LazyListItemInfo;Landroidx/compose/animation/core/AnimationState;)V

    .line 458
    .line 459
    .line 460
    throw v0
    :try_end_7
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_7 .. :try_end_7} :catch_0

    .line 461
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->getPreviousAnimation()Landroidx/compose/animation/core/AnimationState;

    .line 462
    .line 463
    .line 464
    move-result-object v15

    .line 465
    const/16 v23, 0x1e

    .line 466
    .line 467
    const/16 v24, 0x0

    .line 468
    .line 469
    const/16 v16, 0x0

    .line 470
    .line 471
    const/16 v17, 0x0

    .line 472
    .line 473
    const-wide/16 v18, 0x0

    .line 474
    .line 475
    const-wide/16 v20, 0x0

    .line 476
    .line 477
    const/16 v22, 0x0

    .line 478
    .line 479
    invoke-static/range {v15 .. v24}, Landroidx/compose/animation/core/AnimationStateKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->getItem()Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    iget v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 492
    .line 493
    add-int/2addr v0, v2

    .line 494
    int-to-float v0, v0

    .line 495
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 496
    .line 497
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    check-cast v4, Ljava/lang/Number;

    .line 509
    .line 510
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 511
    .line 512
    .line 513
    move-result v4

    .line 514
    cmpg-float v4, v4, v11

    .line 515
    .line 516
    if-nez v4, :cond_b

    .line 517
    .line 518
    move v13, v14

    .line 519
    goto :goto_a

    .line 520
    :cond_b
    const/4 v13, 0x0

    .line 521
    :goto_a
    xor-int/lit8 v4, v13, 0x1

    .line 522
    .line 523
    new-instance v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$4;

    .line 524
    .line 525
    invoke-direct {v5, v0, v2, v6}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$4;-><init>(FLkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollScope;)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x0

    .line 529
    iput-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 530
    .line 531
    iput-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 536
    .line 537
    const/4 v2, 0x2

    .line 538
    iput v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->label:I

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
    if-ne v0, v10, :cond_c

    .line 551
    .line 552
    return-object v10

    .line 553
    :cond_c
    :goto_b
    iget-object v0, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 554
    .line 555
    iget v1, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 556
    .line 557
    iget v2, v9, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 558
    .line 559
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListState;->snapToItemIndexInternal$foundation_release(II)V

    .line 560
    .line 561
    .line 562
    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 563
    .line 564
    return-object v0
.end method
