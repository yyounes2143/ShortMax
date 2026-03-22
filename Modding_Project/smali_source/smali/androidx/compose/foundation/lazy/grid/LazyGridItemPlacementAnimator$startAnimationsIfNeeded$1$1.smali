.class final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyGridItemPlacementAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V
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
    c = "androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1"
    f = "LazyGridItemPlacementAnimator.kt"
    l = {
        0x1a4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/grid/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/PlaceableInfo;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

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
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 40
    .line 41
    instance-of v1, p1, Landroidx/compose/animation/core/SpringSpec;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    check-cast p1, Landroidx/compose/animation/core/SpringSpec;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimatorKt;->access$getInterruptionSpec$p()Landroidx/compose/animation/core/SpringSpec;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    move-object v5, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    :try_start_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iput v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->label:I

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    const/16 v9, 0xc

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    move-object v8, p0

    .line 81
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_4

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;->$placeableInfo:Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->setInProgress(Z)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    :catch_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method
