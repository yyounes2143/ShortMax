.class final Landroidx/compose/foundation/gestures/ScrollingLogic;
.super Ljava/lang/Object;
.source "Scrollable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nestedScrollDispatcher:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final reverseDirection:Z

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/gestures/ScrollableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/OverscrollEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollableState;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "orientation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nestedScrollDispatcher"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scrollableState"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "flingBehavior"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 25
    .line 26
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 31
    .line 32
    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 33
    .line 34
    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final dispatchScroll-f0eR0lY(Landroidx/compose/foundation/gestures/ScrollScope;JLandroidx/compose/ui/geometry/Offset;I)J
    .locals 13
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-wide v2, p2

    .line 4
    move/from16 v7, p5

    .line 5
    .line 6
    const-string v4, "$this$dispatchScroll"

    .line 7
    .line 8
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-interface {v4}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 22
    .line 23
    move-object/from16 v8, p4

    .line 24
    .line 25
    invoke-interface {v4, v2, v3, v8, v7}, Landroidx/compose/foundation/OverscrollEffect;->consumePreScroll-A0NYTsA(JLandroidx/compose/ui/geometry/Offset;I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object/from16 v8, p4

    .line 31
    .line 32
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    :goto_0
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 43
    .line 44
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 49
    .line 50
    invoke-virtual {v4, v2, v3, v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreScroll-OzD1aCk(JI)J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    invoke-virtual {p0, v9, v10}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {p0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-interface {p1, v2}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-virtual {p0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-static {v9, v10, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v11

    .line 82
    move-object v1, v4

    .line 83
    move-wide v4, v11

    .line 84
    move/from16 v6, p5

    .line 85
    .line 86
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostScroll-DzOQY0M(JJI)J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    invoke-interface {v3}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 101
    .line 102
    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    move-object v1, v3

    .line 107
    move-wide v2, v9

    .line 108
    move-object/from16 v6, p4

    .line 109
    .line 110
    move/from16 v7, p5

    .line 111
    .line 112
    invoke-interface/range {v1 .. v7}, Landroidx/compose/foundation/OverscrollEffect;->consumePostScroll-l7mfB5k(JJLandroidx/compose/ui/geometry/Offset;I)V

    .line 113
    .line 114
    .line 115
    :cond_1
    return-wide v11
.end method

.method public final doFlingAnimation-QWom1Mo(JLrs/c;)Ljava/lang/Object;
    .locals 11
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 60
    .line 61
    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-wide p1, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 67
    .line 68
    new-instance v3, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    move-object v5, v3

    .line 72
    move-object v6, p0

    .line 73
    move-object v7, p3

    .line 74
    move-wide v8, p1

    .line 75
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$LongRef;JLrs/c;)V

    .line 76
    .line 77
    .line 78
    iput-object p3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    iput v2, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v5, 0x1

    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_3

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    move-object p1, p3

    .line 93
    :goto_2
    iget-wide p1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 94
    .line 95
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public final getFlingBehavior()Landroidx/compose/foundation/gestures/FlingBehavior;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNestedScrollDispatcher()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOverscrollEffect()Landroidx/compose/foundation/OverscrollEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReverseDirection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollableState()Landroidx/compose/foundation/gestures/ScrollableState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDragStopped(FLrs/c;)Ljava/lang/Object;
    .locals 12
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
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
    instance-of v0, p2, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x5

    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    if-eq v1, v5, :cond_5

    .line 42
    .line 43
    if-eq v1, v4, :cond_4

    .line 44
    .line 45
    if-eq v1, v3, :cond_3

    .line 46
    .line 47
    if-eq v1, v2, :cond_2

    .line 48
    .line 49
    if-ne v1, v9, :cond_1

    .line 50
    .line 51
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    iget-wide v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 65
    .line 66
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_3
    iget-wide v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 76
    .line 77
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_4
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 87
    .line 88
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 91
    .line 92
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->F$0:F

    .line 97
    .line 98
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 101
    .line 102
    iget-object v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 105
    .line 106
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 114
    .line 115
    if-eqz p2, :cond_8

    .line 116
    .line 117
    invoke-interface {p2}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_8

    .line 122
    .line 123
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toVelocity-adjELrA(F)J

    .line 126
    .line 127
    .line 128
    move-result-wide v10

    .line 129
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$1:Ljava/lang/Object;

    .line 132
    .line 133
    iput p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->F$0:F

    .line 134
    .line 135
    iput v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 136
    .line 137
    invoke-interface {p2, v10, v11, v0}, Landroidx/compose/foundation/OverscrollEffect;->consumePreFling-QWom1Mo(JLrs/c;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    if-ne p2, v7, :cond_7

    .line 142
    .line 143
    return-object v7

    .line 144
    :cond_7
    move-object v1, p0

    .line 145
    move-object v5, v1

    .line 146
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 147
    .line 148
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    .line 149
    .line 150
    .line 151
    move-result-wide v10

    .line 152
    invoke-virtual {v1, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-TH1AsA0(J)F

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    move v1, p2

    .line 157
    move p2, p1

    .line 158
    move-object p1, v5

    .line 159
    goto :goto_2

    .line 160
    :cond_8
    const/4 p2, 0x0

    .line 161
    move v1, p2

    .line 162
    move p2, p1

    .line 163
    move-object p1, p0

    .line 164
    :goto_2
    sub-float/2addr p2, v1

    .line 165
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toVelocity-adjELrA(F)J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 170
    .line 171
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 176
    .line 177
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$1:Ljava/lang/Object;

    .line 180
    .line 181
    iput-wide v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 182
    .line 183
    iput v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 184
    .line 185
    invoke-virtual {p2, v5, v6, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreFling-QWom1Mo(JLrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    if-ne p2, v7, :cond_9

    .line 190
    .line 191
    return-object v7

    .line 192
    :cond_9
    move-wide v4, v5

    .line 193
    :goto_3
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 194
    .line 195
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    .line 196
    .line 197
    .line 198
    move-result-wide v10

    .line 199
    invoke-static {v4, v5, v10, v11}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    .line 200
    .line 201
    .line 202
    move-result-wide v4

    .line 203
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 204
    .line 205
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 206
    .line 207
    iput v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 208
    .line 209
    invoke-virtual {p1, v4, v5, v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLrs/c;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    if-ne p2, v7, :cond_a

    .line 214
    .line 215
    return-object v7

    .line 216
    :cond_a
    move-wide v3, v4

    .line 217
    :goto_4
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 218
    .line 219
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    .line 220
    .line 221
    .line 222
    move-result-wide v10

    .line 223
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 224
    .line 225
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    move-object v1, p2

    .line 230
    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 231
    .line 232
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    .line 233
    .line 234
    .line 235
    move-result-wide v3

    .line 236
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 237
    .line 238
    iput-wide v10, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 239
    .line 240
    iput v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 241
    .line 242
    move-wide v2, v3

    .line 243
    move-wide v4, v10

    .line 244
    move-object v6, v0

    .line 245
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostFling-RZ2iAVY(JJLrs/c;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    if-ne p2, v7, :cond_b

    .line 250
    .line 251
    return-object v7

    .line 252
    :cond_b
    move-wide v1, v10

    .line 253
    :goto_5
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 254
    .line 255
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    .line 260
    .line 261
    .line 262
    move-result-wide v1

    .line 263
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 264
    .line 265
    if-eqz p2, :cond_d

    .line 266
    .line 267
    invoke-interface {p2}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_d

    .line 272
    .line 273
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 274
    .line 275
    invoke-virtual {p1, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-TH1AsA0(J)F

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toVelocity-adjELrA(F)J

    .line 280
    .line 281
    .line 282
    move-result-wide v1

    .line 283
    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 284
    .line 285
    iput v9, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 286
    .line 287
    invoke-interface {p2, v1, v2, v0}, Landroidx/compose/foundation/OverscrollEffect;->consumePostFling-sF-c-tU(JLrs/c;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    if-ne p1, v7, :cond_c

    .line 292
    .line 293
    return-object v7

    .line 294
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 295
    .line 296
    return-object p1

    .line 297
    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    return-object p1
.end method

.method public final performRawScroll-MK-Hz9U(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    :goto_0
    return-wide p1
.end method

.method public final reverseIfNeeded(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    int-to-float v0, v0

    .line 7
    mul-float/2addr p1, v0

    .line 8
    :cond_0
    return p1
.end method

.method public final reverseIfNeeded-MK-Hz9U(J)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    :cond_0
    return-wide p1
.end method

.method public final shouldScrollImmediately()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/compose/foundation/OverscrollEffect;->isInProgress()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 23
    :cond_2
    return v1
.end method

.method public final toFloat-TH1AsA0(J)F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public final toFloat-k-4lQ0M(J)F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public final toOffset-tuRUvjQ(F)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0
.end method

.method public final toVelocity-adjELrA(F)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v2, p1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :goto_0
    return-wide v0
.end method

.method public final update-QWom1Mo(JF)J
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v6, 0x2

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-wide v2, p1

    .line 11
    move v4, p3

    .line 12
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFILjava/lang/Object;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-wide v0, p1

    .line 21
    move v3, p3

    .line 22
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFILjava/lang/Object;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    :goto_0
    return-wide p1
.end method
