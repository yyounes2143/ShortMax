.class final Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ModalBottomSheetKt;->ModalBottomSheetLayout-BzaUkTc(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;Landroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
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

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $scope:Lgt/g0;

.field final synthetic $scrimColor:J

.field final synthetic $sheetBackgroundColor:J

.field final synthetic $sheetContent:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sheetContentColor:J

.field final synthetic $sheetElevation:F

.field final synthetic $sheetShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetState:Landroidx/compose/material/ModalBottomSheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material/ModalBottomSheetState;ILandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;JLgt/g0;Lat/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetState;",
            "I",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;J",
            "Lgt/g0;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    .line 6
    .line 7
    iput-wide p4, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetBackgroundColor:J

    .line 8
    .line 9
    iput-wide p6, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContentColor:J

    .line 10
    .line 11
    iput p8, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetElevation:F

    .line 12
    .line 13
    iput-object p9, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$content:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    iput-wide p10, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scrimColor:J

    .line 16
    .line 17
    iput-object p12, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scope:Lgt/g0;

    .line 18
    .line 19
    iput-object p13, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContent:Lat/n;

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p1    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    const-string v2, "$this$BoxWithConstraints"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0xe

    const/4 v7, 0x2

    if-nez v2, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v2, v2, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    .line 2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 4
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    int-to-float v8, v1

    const v1, -0x1d58f75c

    .line 5
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 7
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    const/4 v11, 0x0

    if-ne v1, v2, :cond_4

    .line 8
    invoke-static {v11, v11, v7, v11}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 9
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 10
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 11
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 12
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v13, v14, v15, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$content:Lkotlin/jvm/functions/Function2;

    iget v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    iget-wide v4, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scrimColor:J

    iget-object v6, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    iget-object v7, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scope:Lgt/g0;

    const v11, 0x2bb5b5d7

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 13
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    const/4 v14, 0x0

    .line 14
    invoke-static {v11, v14, v10, v14}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    const v15, -0x4ee9b9da

    .line 15
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    .line 17
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    .line 18
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 19
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 20
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 21
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v16, v12

    .line 22
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 23
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 24
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 25
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 26
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v1

    .line 27
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v19

    if-nez v19, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 28
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 29
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 30
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 31
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 32
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 33
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    move/from16 v19, v8

    .line 34
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 35
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v15, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 36
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 37
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v9, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 38
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 39
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v8, v10, v11}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 40
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, -0x7f65a980

    .line 41
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 42
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v1, -0x18011430

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 v1, v3, 0x18

    and-int/lit8 v1, v1, 0xe

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v10, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v8, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$1$1;

    invoke-direct {v8, v6, v7}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$1$1;-><init>(Landroidx/compose/material/ModalBottomSheetState;Lgt/g0;)V

    .line 45
    invoke-virtual {v6}, Landroidx/compose/material/SwipeableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    if-eq v1, v2, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    shr-int/lit8 v1, v3, 0x15

    and-int/lit8 v7, v1, 0xe

    move-wide v1, v4

    move-object v3, v8

    move v4, v6

    move-object/from16 v5, p2

    move v6, v7

    .line 46
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/ModalBottomSheetKt;->access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 47
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 49
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 50
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 51
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 52
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    invoke-static {v13, v2, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 54
    iget-object v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-virtual {v3}, Landroidx/compose/material/ModalBottomSheetState;->getNestedScrollConnection$material_release()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 55
    iget-object v1, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    const v5, 0x1e7b2b64

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 56
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 57
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_9

    .line 58
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v1, v19

    goto :goto_6

    .line 59
    :cond_9
    :goto_5
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;

    move/from16 v1, v19

    invoke-direct {v3, v4, v1}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;-><init>(Landroidx/compose/material/ModalBottomSheetState;F)V

    .line 60
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 62
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 63
    iget-object v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    move-object/from16 v4, v16

    invoke-static {v2, v3, v1, v4}, Landroidx/compose/material/ModalBottomSheetKt;->access$bottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x44faf204

    .line 64
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 65
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 66
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_a

    .line 67
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_b

    .line 68
    :cond_a
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1;

    invoke-direct {v3, v4}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 69
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 70
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 71
    invoke-static {v1, v3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 72
    new-instance v2, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$4;

    iget-object v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    iget-object v4, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scope:Lgt/g0;

    invoke-direct {v2, v3, v4}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$4;-><init>(Landroidx/compose/material/ModalBottomSheetState;Lgt/g0;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 73
    iget-object v2, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    .line 74
    iget-wide v5, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetBackgroundColor:J

    .line 75
    iget-wide v7, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContentColor:J

    .line 76
    iget v9, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetElevation:F

    .line 77
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$5;

    iget-object v11, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContent:Lat/n;

    iget v12, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    invoke-direct {v3, v11, v12}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$5;-><init>(Lat/n;I)V

    const v11, -0x6ae6c426

    invoke-static {v10, v11, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    iget v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x70

    const/high16 v12, 0x180000

    or-int/2addr v4, v12

    shr-int/lit8 v12, v3, 0x9

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v4, v12

    shr-int/lit8 v12, v3, 0x9

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v4, v12

    shl-int/lit8 v3, v3, 0x3

    const/high16 v12, 0x70000

    and-int/2addr v3, v12

    or-int v12, v4, v3

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-wide v3, v5

    move-wide v5, v7

    move-object v7, v14

    move v8, v9

    move-object v9, v11

    move-object/from16 v10, p2

    move v11, v12

    move v12, v13

    .line 78
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_7
    return-void
.end method
