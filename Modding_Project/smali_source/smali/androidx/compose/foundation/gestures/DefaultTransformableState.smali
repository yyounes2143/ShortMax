.class final Landroidx/compose/foundation/gestures/DefaultTransformableState;
.super Ljava/lang/Object;
.source "TransformableState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/TransformableState;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final isTransformingState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onTransformation:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transformMutex:Landroidx/compose/foundation/MutatorMutex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transformScope:Landroidx/compose/foundation/gestures/TransformScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lat/n;)V
    .locals 2
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onTransformation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->onTransformation:Lat/n;

    .line 10
    .line 11
    new-instance p1, Landroidx/compose/foundation/gestures/DefaultTransformableState$transformScope$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DefaultTransformableState$transformScope$1;-><init>(Landroidx/compose/foundation/gestures/DefaultTransformableState;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformScope:Landroidx/compose/foundation/gestures/TransformScope;

    .line 17
    .line 18
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformMutex:Landroidx/compose/foundation/MutatorMutex;

    .line 24
    .line 25
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->isTransformingState:Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic access$getTransformMutex$p(Landroidx/compose/foundation/gestures/DefaultTransformableState;)Landroidx/compose/foundation/MutatorMutex;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformMutex:Landroidx/compose/foundation/MutatorMutex;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTransformScope$p(Landroidx/compose/foundation/gestures/DefaultTransformableState;)Landroidx/compose/foundation/gestures/TransformScope;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformScope:Landroidx/compose/foundation/gestures/TransformScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isTransformingState$p(Landroidx/compose/foundation/gestures/DefaultTransformableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->isTransformingState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getOnTransformation()Lat/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lat/n<",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->onTransformation:Lat/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTransformInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->isTransformingState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public transform(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/foundation/MutatePriority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
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
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
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
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultTransformableState$transform$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DefaultTransformableState$transform$2;-><init>(Landroidx/compose/foundation/gestures/DefaultTransformableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p3}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method
