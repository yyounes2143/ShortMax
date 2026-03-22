.class final Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $draggableState:Landroidx/compose/foundation/gestures/DraggableState;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lgt/g0;


# direct methods
.method constructor <init>(Lgt/g0;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->$scope:Lgt/g0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->$draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->invoke-k-4lQ0M(J)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->$scope:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2$1;

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->$draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p1, p2, v1}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2$1;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    return-void
.end method
