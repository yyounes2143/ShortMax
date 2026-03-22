.class final Landroidx/compose/foundation/gestures/DragLogic;
.super Ljava/lang/Object;
.source "Draggable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final dragStartInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onDragStarted:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Lgt/g0;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onDragStopped:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Lgt/g0;",
            "Ljava/lang/Float;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lat/n;Lat/n;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 1
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/MutableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/n<",
            "-",
            "Lgt/g0;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "onDragStarted"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDragStopped"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dragStartInteraction"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragLogic;->onDragStarted:Lat/n;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragLogic;->onDragStopped:Lat/n;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragLogic;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getDragStartInteraction()Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragLogic;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnDragStarted()Lat/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/n<",
            "Lgt/g0;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragLogic;->onDragStarted:Lat/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnDragStopped()Lat/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/n<",
            "Lgt/g0;",
            "Ljava/lang/Float;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragLogic;->onDragStopped:Lat/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final processDragCancel(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
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
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragLogic;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lgt/g0;

    .line 57
    .line 58
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroidx/compose/foundation/gestures/DragLogic;

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragLogic;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 80
    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 84
    .line 85
    invoke-direct {v6, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 86
    .line 87
    .line 88
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput v4, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->label:I

    .line 93
    .line 94
    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p2, v1, :cond_4

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_4
    move-object v2, p0

    .line 102
    :goto_1
    iget-object p2, v2, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 103
    .line 104
    invoke-interface {p2, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    move-object v2, p0

    .line 109
    :goto_2
    iget-object p2, v2, Landroidx/compose/foundation/gestures/DragLogic;->onDragStopped:Lat/n;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput v3, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragCancel$1;->label:I

    .line 121
    .line 122
    invoke-interface {p2, p1, v2, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v1, :cond_6

    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p1
.end method

.method public final processDragStart(Lgt/g0;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/DragEvent$DragStarted;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
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
    instance-of v0, p3, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragLogic;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$3:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 60
    .line 61
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 64
    .line 65
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Lgt/g0;

    .line 68
    .line 69
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Landroidx/compose/foundation/gestures/DragLogic;

    .line 72
    .line 73
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 78
    .line 79
    move-object p2, p1

    .line 80
    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 81
    .line 82
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lgt/g0;

    .line 85
    .line 86
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Landroidx/compose/foundation/gestures/DragLogic;

    .line 89
    .line 90
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 98
    .line 99
    invoke-interface {p3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    check-cast p3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 104
    .line 105
    if-eqz p3, :cond_5

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragLogic;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 112
    .line 113
    invoke-direct {v6, p3}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 114
    .line 115
    .line 116
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 121
    .line 122
    iput v5, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->label:I

    .line 123
    .line 124
    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    if-ne p3, v1, :cond_5

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_5
    move-object v2, p0

    .line 132
    :goto_1
    new-instance p3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 133
    .line 134
    invoke-direct {p3}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragLogic;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 138
    .line 139
    if-eqz v5, :cond_7

    .line 140
    .line 141
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object p3, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$3:Ljava/lang/Object;

    .line 148
    .line 149
    iput v4, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->label:I

    .line 150
    .line 151
    invoke-interface {v5, p3, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    if-ne v4, v1, :cond_6

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_6
    move-object v4, v2

    .line 159
    move-object v2, p1

    .line 160
    move-object p1, p3

    .line 161
    :goto_2
    move-object p3, p1

    .line 162
    move-object p1, v2

    .line 163
    move-object v2, v4

    .line 164
    :cond_7
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    invoke-interface {v4, p3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object p3, v2, Landroidx/compose/foundation/gestures/DragLogic;->onDragStarted:Lat/n;

    .line 170
    .line 171
    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->getStartPoint-F1C5BW0()J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    const/4 v2, 0x0

    .line 180
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->L$3:Ljava/lang/Object;

    .line 187
    .line 188
    iput v3, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStart$1;->label:I

    .line 189
    .line 190
    invoke-interface {p3, p1, p2, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-ne p1, v1, :cond_8

    .line 195
    .line 196
    return-object v1

    .line 197
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p1
.end method

.method public final processDragStop(Lgt/g0;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
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
    instance-of v0, p3, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragLogic;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    move-object p2, p1

    .line 57
    check-cast p2, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 58
    .line 59
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lgt/g0;

    .line 62
    .line 63
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Landroidx/compose/foundation/gestures/DragLogic;

    .line 66
    .line 67
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 75
    .line 76
    invoke-interface {p3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 81
    .line 82
    if-eqz p3, :cond_5

    .line 83
    .line 84
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragLogic;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 89
    .line 90
    invoke-direct {v6, p3}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 91
    .line 92
    .line 93
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$2:Ljava/lang/Object;

    .line 98
    .line 99
    iput v4, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->label:I

    .line 100
    .line 101
    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    if-ne p3, v1, :cond_4

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_4
    move-object v2, p0

    .line 109
    :goto_1
    iget-object p3, v2, Landroidx/compose/foundation/gestures/DragLogic;->dragStartInteraction:Landroidx/compose/runtime/MutableState;

    .line 110
    .line 111
    invoke-interface {p3, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move-object v2, p0

    .line 116
    :goto_2
    iget-object p3, v2, Landroidx/compose/foundation/gestures/DragLogic;->onDragStopped:Lat/n;

    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->getVelocity()F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$1:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->L$2:Ljava/lang/Object;

    .line 131
    .line 132
    iput v3, v0, Landroidx/compose/foundation/gestures/DragLogic$processDragStop$1;->label:I

    .line 133
    .line 134
    invoke-interface {p3, p1, p2, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-ne p1, v1, :cond_6

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    .line 143
    return-object p1
.end method
