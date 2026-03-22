.class final Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Clickable.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "Landroidx/compose/ui/geometry/Offset;",
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
    c = "androidx.compose.foundation.ClickableKt$clickable$4$gesture$1$1"
    f = "Clickable.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $delayPressInteraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $pressedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field synthetic J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    check-cast p3, Lrs/c;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1, p3}, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->invoke-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final invoke-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroidx/compose/foundation/gestures/PressGestureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "J",
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
    new-instance v6, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$enabled:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    iput-wide p2, v6, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->J$0:J

    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-virtual {v6, p1}, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Landroidx/compose/foundation/gestures/PressGestureScope;

    .line 31
    .line 32
    iget-wide v4, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->J$0:J

    .line 33
    .line 34
    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$enabled:Z

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 39
    .line 40
    iget-object v7, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    iget-object v8, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 43
    .line 44
    iput v2, p0, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1$1;->label:I

    .line 45
    .line 46
    move-object v9, p0

    .line 47
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/ClickableKt;->handlePressInteraction-EPk0efs(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p1
.end method
