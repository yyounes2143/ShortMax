.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->draggable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lat/n;Lat/n;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onDragStarted:Lat/n;
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
.end field

.field final synthetic $onDragStopped:Lat/n;
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
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $reverseDirection:Z

.field final synthetic $startDragImmediately:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stateFactory:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;Landroidx/compose/foundation/gestures/Orientation;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
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
            "Landroidx/compose/foundation/gestures/Orientation;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$stateFactory:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$canDrag:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStarted:Lat/n;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStopped:Lat/n;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 14
    .line 15
    iput-boolean p8, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$enabled:Z

    .line 16
    .line 17
    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$reverseDirection:Z

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic access$invoke$lambda-2(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->invoke$lambda-2(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invoke$lambda-2(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/DragLogic;",
            ">;)",
            "Landroidx/compose/foundation/gestures/DragLogic;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/foundation/gestures/DragLogic;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 17
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$this$composed"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x58a5c92e

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 2
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$stateFactory:Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    const v4, -0x1d58f75c

    .line 3
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 5
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-ne v5, v7, :cond_0

    const/4 v5, 0x2

    .line 6
    invoke-static {v8, v8, v5, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 7
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 9
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 10
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    new-instance v9, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1;

    invoke-direct {v9, v5, v7}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    invoke-static {v7, v9, v1, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 11
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    const v4, 0x7fffffff

    const/4 v6, 0x6

    .line 14
    invoke-static {v4, v8, v8, v6, v8}, Ljt/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljt/d;

    move-result-object v4

    .line 15
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 17
    move-object v14, v4

    check-cast v14, Ljt/d;

    .line 18
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$startDragImmediately:Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v12

    .line 19
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$canDrag:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 20
    new-instance v4, Landroidx/compose/foundation/gestures/DragLogic;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStarted:Lat/n;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$onDragStopped:Lat/n;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {v4, v6, v7, v5, v9}, Landroidx/compose/foundation/gestures/DragLogic;-><init>(Lat/n;Lat/n;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 21
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 22
    new-instance v5, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;

    invoke-direct {v5, v14, v2, v4, v8}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;-><init>(Ljt/d;Landroidx/compose/foundation/gestures/PointerAwareDraggableState;Landroidx/compose/runtime/State;Lrs/c;)V

    invoke-static {v2, v5, v1, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 23
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$reverseDirection:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3;

    iget-boolean v10, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$enabled:Z

    iget-object v13, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v15, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->$reverseDirection:Z

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3;-><init>(ZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Ljt/d;ZLrs/c;)V

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
