.class final Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectionContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $children:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/compose/foundation/text/selection/SelectionManager;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$children:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$$dirty:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    and-int/lit8 v1, p2, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 4
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$children:Lkotlin/jvm/functions/Function2;

    iget v2, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$$dirty:I

    shr-int/lit8 v2, v2, 0x9

    and-int/lit8 v2, v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v11

    if-nez v11, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v12, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1, v2}, [Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    move v15, v1

    :goto_1
    if-ge v15, v14, :cond_8

    .line 9
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const v2, 0x44faf204

    .line 11
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 13
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    .line 14
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_4

    .line 15
    :cond_3
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->handleDragObserver(Z)Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v2

    .line 16
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 18
    check-cast v2, Landroidx/compose/foundation/text/TextDragObserver;

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/SelectionManager;->getStartHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/SelectionManager;->getEndHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    :goto_2
    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v4

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v4

    :goto_3
    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v5

    .line 24
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v7

    .line 25
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v8, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$1;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lrs/c;)V

    invoke-static {v1, v2, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/high16 v16, 0x30000

    move-wide v1, v5

    move v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object/from16 v8, p1

    move/from16 v9, v16

    .line 26
    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle-8fL75-g(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    return-void
.end method
