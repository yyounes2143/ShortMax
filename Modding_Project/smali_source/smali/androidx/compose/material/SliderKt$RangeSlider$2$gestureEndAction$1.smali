.class final Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $minPx:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lgt/g0;

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Ldt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function0;Lgt/g0;Landroidx/compose/runtime/State;Ldt/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lgt/g0;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$rawOffsetStart:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$rawOffsetEnd:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$tickFractions:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$minPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$scope:Lgt/g0;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$valueRange:Ldt/b;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 14

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$rawOffsetStart:Landroidx/compose/runtime/MutableState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$rawOffsetEnd:Landroidx/compose/runtime/MutableState;

    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 3
    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$tickFractions:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$minPx:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v2, v0, v1, v3}, Landroidx/compose/material/SliderKt;->access$snapValueToTick(FLjava/util/List;FF)F

    move-result v3

    cmpg-float v0, v2, v3

    if-nez v0, :cond_2

    .line 4
    iget-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$scope:Lgt/g0;

    new-instance v13, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1;

    iget-object v4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$rawOffsetStart:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$rawOffsetEnd:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$onValueChangeState:Landroidx/compose/runtime/State;

    iget-object v9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$minPx:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v10, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v11, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;->$valueRange:Ldt/b;

    const/4 v12, 0x0

    move-object v1, v13

    move v5, p1

    invoke-direct/range {v1 .. v12}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1;-><init>(FFLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ldt/b;Lrs/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v13

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method
