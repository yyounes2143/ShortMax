.class final Landroidx/compose/foundation/ClickableKt$combinedClickable$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->combinedClickable-XVZzFYc(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
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
.field final synthetic $enabled:Z

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onClickLabel:Ljava/lang/String;

.field final synthetic $onDoubleClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Ljava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$indication:Landroidx/compose/foundation/Indication;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClickLabel:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClickLabel:Ljava/lang/String;

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


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 26
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

    const v2, 0x6dc662f0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 2
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 3
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    .line 4
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 5
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v3

    .line 6
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const v2, -0x1d58f75c

    .line 7
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 9
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v4, v6, :cond_2

    .line 10
    invoke-static {v11, v11, v10, v11}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 11
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 12
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 13
    move-object v12, v4

    check-cast v12, Landroidx/compose/runtime/MutableState;

    const v4, 0x4ebe7db2

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 14
    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    if-eqz v4, :cond_3

    .line 15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v6, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$1;

    iget-object v14, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-direct {v6, v12, v14}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    invoke-static {v4, v6, v1, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 16
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v6, 0x30

    invoke-static {v4, v12, v1, v6}, Landroidx/compose/foundation/ClickableKt;->PressedInteractionSourceDisposableEffect(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 17
    invoke-static {v1, v3}, Landroidx/compose/foundation/Clickable_androidKt;->isComposeRootInScrollableContainer(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    .line 18
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 19
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 20
    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v6, v14, :cond_4

    .line 21
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v11, v10, v11}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 22
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 23
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    move-object v14, v6

    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 25
    new-instance v6, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$delayPressInteraction$1;

    invoke-direct {v6, v14, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$delayPressInteraction$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 26
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v4, v6, v10, v2}, [Ljava/lang/Object;

    move-result-object v2

    new-instance v10, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;

    iget-boolean v6, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v16, 0x0

    move-object/from16 v17, v4

    move-object v4, v10

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    move-object/from16 v19, v11

    move-object v11, v12

    move-object v12, v3

    move-object v3, v14

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;-><init>(ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    invoke-static {v4, v2, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const v2, -0x1d58f75c

    .line 27
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 28
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_5

    .line 30
    new-instance v2, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;

    invoke-direct {v2, v3}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 31
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 32
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 33
    invoke-virtual {v4, v2}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 34
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 35
    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$indication:Landroidx/compose/foundation/Indication;

    .line 36
    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    .line 37
    iget-object v5, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClickLabel:Ljava/lang/String;

    .line 38
    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    .line 39
    iget-object v7, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClickLabel:Ljava/lang/String;

    .line 40
    iget-object v8, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Lkotlin/jvm/functions/Function0;

    .line 41
    iget-object v9, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    .line 42
    invoke-static/range {v16 .. v25}, Landroidx/compose/foundation/ClickableKt;->genericClickableWithoutGesture-BI-LeDI(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

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

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
