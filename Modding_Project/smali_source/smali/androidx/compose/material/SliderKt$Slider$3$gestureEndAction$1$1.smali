.class final Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1;->invoke(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
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
    c = "androidx.compose.material.SliderKt$Slider$3$gestureEndAction$1$1"
    f = "Slider.kt"
    l = {
        0xcc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $current:F

.field final synthetic $draggableState:Landroidx/compose/material/SliderDraggableState;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:F

.field final synthetic $velocity:F

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material/SliderDraggableState;FFFLkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SliderDraggableState;",
            "FFF",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$draggableState:Landroidx/compose/material/SliderDraggableState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$current:F

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$target:F

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$velocity:F

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
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
    new-instance p1, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$draggableState:Landroidx/compose/material/SliderDraggableState;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$current:F

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$target:F

    .line 8
    .line 9
    iget v4, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$velocity:F

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;-><init>(Landroidx/compose/material/SliderDraggableState;FFFLkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    iget v1, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->label:I

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
    iget-object p1, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$draggableState:Landroidx/compose/material/SliderDraggableState;

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$current:F

    .line 30
    .line 31
    iget v3, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$target:F

    .line 32
    .line 33
    iget v4, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$velocity:F

    .line 34
    .line 35
    iput v2, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->label:I

    .line 36
    .line 37
    invoke-static {p1, v1, v3, v4, p0}, Landroidx/compose/material/SliderKt;->access$animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1
.end method
