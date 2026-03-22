.class public final Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt;->scrollableNestedScrollConnection(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $scrollLogic:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPostFling-RZ2iAVY(JJLrs/c;)Ljava/lang/Object;
    .locals 2
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
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
    instance-of p1, p5, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move-object p1, p5

    .line 6
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;

    .line 7
    .line 8
    iget p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    and-int v1, p2, v0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sub-int/2addr p2, v0

    .line 17
    iput p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;

    .line 21
    .line 22
    invoke-direct {p1, p0, p5}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    iget v0, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    iget-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->J$0:J

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$enabled:Z

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 60
    .line 61
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 66
    .line 67
    iput-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->J$0:J

    .line 68
    .line 69
    iput v1, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    .line 70
    .line 71
    invoke-virtual {p2, p3, p4, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-ne p2, p5, :cond_3

    .line 76
    .line 77
    return-object p5

    .line 78
    :cond_3
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide p1

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    .line 92
    .line 93
    .line 94
    move-result-wide p1

    .line 95
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$enabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 12
    .line 13
    invoke-virtual {p1, p3, p4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performRawScroll-MK-Hz9U(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    :goto_0
    return-wide p1
.end method
