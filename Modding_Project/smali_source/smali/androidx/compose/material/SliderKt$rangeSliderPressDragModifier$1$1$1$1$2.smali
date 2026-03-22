.class final Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1$2"
    f = "Slider.kt"
    l = {
        0x3ec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $draggingStart:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

.field final synthetic $rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/foundation/interaction/DragInteraction;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroidx/compose/foundation/interaction/DragInteraction;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$draggingStart:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$draggingStart:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;-><init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/foundation/interaction/DragInteraction;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->label:I

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
    iget-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$draggingStart:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 30
    .line 31
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroidx/compose/material/RangeSliderLogic;->activeInteraction(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

    .line 38
    .line 39
    iput v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->label:I

    .line 40
    .line 41
    invoke-interface {p1, v1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method
