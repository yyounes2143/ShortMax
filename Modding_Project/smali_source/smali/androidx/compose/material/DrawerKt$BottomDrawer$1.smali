.class final Landroidx/compose/material/DrawerKt$BottomDrawer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Drawer.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt;->BottomDrawer-Gs3lGvM(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $drawerBackgroundColor:J

.field final synthetic $drawerContent:Lat/n;
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

.field final synthetic $drawerContentColor:J

.field final synthetic $drawerElevation:F

.field final synthetic $drawerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $drawerState:Landroidx/compose/material/BottomDrawerState;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $scope:Lgt/g0;

.field final synthetic $scrimColor:J


# direct methods
.method constructor <init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlin/jvm/functions/Function2;IJLandroidx/compose/ui/graphics/Shape;JJFLgt/g0;Lat/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material/BottomDrawerState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;IJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
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
    iput-boolean p1, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$content:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$$dirty:I

    .line 8
    .line 9
    iput-wide p5, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scrimColor:J

    .line 10
    .line 11
    iput-object p7, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    .line 12
    .line 13
    iput-wide p8, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerBackgroundColor:J

    .line 14
    .line 15
    iput-wide p10, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContentColor:J

    .line 16
    .line 17
    iput p12, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerElevation:F

    .line 18
    .line 19
    iput-object p13, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scope:Lgt/g0;

    .line 20
    .line 21
    iput-object p14, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContent:Lat/n;

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic access$invoke$lambda-2(Landroidx/compose/runtime/MutableState;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->invoke$lambda-2(Landroidx/compose/runtime/MutableState;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invoke$lambda-1(Landroidx/compose/runtime/MutableState;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final invoke$lambda-2(Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
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

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 27
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

    move-object/from16 v13, p2

    const-string v2, "$this$BoxWithConstraints"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v2, v2, 0x5b

    const/16 v4, 0x12

    if-ne v2, v4, :cond_3

    .line 2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_a

    .line 4
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v7, 0x44faf204

    .line 5
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 6
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x0

    if-nez v4, :cond_4

    .line 8
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_5

    .line 9
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4, v8, v3, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 10
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 11
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 12
    move-object v9, v5

    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 13
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    if-le v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v2

    .line 14
    invoke-static {v9}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->invoke$lambda-1(Landroidx/compose/runtime/MutableState;)F

    move-result v6

    sub-float v6, v2, v6

    const/4 v12, 0x0

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 15
    invoke-static {v9}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->invoke$lambda-1(Landroidx/compose/runtime/MutableState;)F

    move-result v12

    cmpg-float v12, v12, v5

    if-ltz v12, :cond_8

    if-eqz v4, :cond_7

    goto :goto_5

    .line 16
    :cond_7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v4, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    invoke-static {v2, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 17
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Landroidx/compose/material/BottomDrawerValue;->Open:Landroidx/compose/material/BottomDrawerValue;

    invoke-static {v4, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 18
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sget-object v6, Landroidx/compose/material/BottomDrawerValue;->Expanded:Landroidx/compose/material/BottomDrawerValue;

    invoke-static {v5, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Lkotlin/Pair;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    :goto_4
    move-object/from16 v16, v2

    goto :goto_6

    .line 20
    :cond_8
    :goto_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v4, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    invoke-static {v2, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 21
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Landroidx/compose/material/BottomDrawerValue;->Expanded:Landroidx/compose/material/BottomDrawerValue;

    invoke-static {v4, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    filled-new-array {v2, v4}, [Lkotlin/Pair;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    .line 23
    :goto_6
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 24
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 25
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 26
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 27
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v20

    .line 28
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v21

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    .line 29
    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 30
    iget-boolean v1, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    invoke-virtual {v1}, Landroidx/compose/material/BottomDrawerState;->getNestedScrollConnection$material_release()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v1

    invoke-static {v4, v1, v8, v3, v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_7

    :cond_9
    move-object v1, v4

    .line 32
    :goto_7
    invoke-virtual {v4, v1}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 33
    iget-object v15, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 34
    sget-object v17, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 35
    iget-boolean v1, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    const/16 v24, 0x170

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v18, v1

    .line 36
    invoke-static/range {v14 .. v25}, Landroidx/compose/material/SwipeableKt;->swipeable-pPrIpRY$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 37
    iget-object v2, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$content:Lkotlin/jvm/functions/Function2;

    iget v14, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$$dirty:I

    iget-wide v3, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scrimColor:J

    iget-object v15, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    iget-object v6, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v16, v9

    iget-wide v8, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerBackgroundColor:J

    move-wide/from16 v18, v8

    iget-wide v7, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContentColor:J

    iget v9, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerElevation:F

    iget-boolean v5, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    iget-object v10, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scope:Lgt/g0;

    iget-object v11, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContent:Lat/n;

    const v0, 0x2bb5b5d7

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 38
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    move-object/from16 v22, v6

    const/4 v6, 0x0

    .line 39
    invoke-static {v0, v6, v13, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    const v6, -0x4ee9b9da

    .line 40
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 41
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    .line 42
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 43
    check-cast v6, Landroidx/compose/ui/unit/Density;

    move/from16 v23, v9

    .line 44
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 45
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 46
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    move-wide/from16 v24, v7

    .line 47
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 48
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 50
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p1, v11

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 51
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v1

    .line 52
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v26

    if-nez v26, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 53
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 54
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 55
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 56
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 57
    :goto_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 58
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v11

    move-object/from16 v26, v12

    .line 59
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v11, v0, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 60
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v11, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 61
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 62
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v11, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 63
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 64
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v0, v13, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 65
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x7f65a980

    .line 66
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v0, -0x62f26656

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 v0, v14, 0x1b

    and-int/lit8 v0, v0, 0xe

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v13, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$1;

    invoke-direct {v0, v5, v15, v10}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$1;-><init>(ZLandroidx/compose/material/BottomDrawerState;Lgt/g0;)V

    .line 70
    invoke-virtual {v15}, Landroidx/compose/material/SwipeableState;->getTargetValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    if-eq v1, v2, :cond_c

    const/4 v5, 0x1

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    shr-int/lit8 v1, v14, 0x18

    and-int/lit8 v6, v1, 0xe

    move-wide v1, v3

    move-object v3, v0

    move v4, v5

    move-object/from16 v5, p2

    move-object/from16 v0, v22

    .line 71
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DrawerKt;->access$BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 72
    sget-object v1, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->getNavigationMenu-UdPEhr4()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v13, v2}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x44faf204

    .line 73
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 74
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 75
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_d

    .line 76
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_e

    .line 77
    :cond_d
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$2$1;

    invoke-direct {v3, v15}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$2$1;-><init>(Landroidx/compose/material/BottomDrawerState;)V

    .line 78
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object/from16 v2, v26

    .line 80
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x44faf204

    .line 81
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v5, v16

    .line 82
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 83
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_f

    .line 84
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_10

    .line 85
    :cond_f
    new-instance v4, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$3$1;

    invoke-direct {v4, v5}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 86
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 87
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 88
    invoke-static {v2, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 89
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4;

    invoke-direct {v3, v1, v15, v10}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4;-><init>(Ljava/lang/String;Landroidx/compose/material/BottomDrawerState;Lgt/g0;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 90
    new-instance v2, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$5;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v14}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$5;-><init>(Lat/n;I)V

    const v3, 0x1b48b6ee

    invoke-static {v13, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    shr-int/lit8 v2, v14, 0x9

    and-int/lit8 v2, v2, 0x70

    const/high16 v3, 0x180000

    or-int/2addr v2, v3

    shr-int/lit8 v3, v14, 0xc

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v14

    or-int v11, v2, v3

    const/16 v12, 0x10

    const/4 v7, 0x0

    move-object v2, v0

    move-wide/from16 v3, v18

    move-wide/from16 v5, v24

    move/from16 v8, v23

    move-object/from16 v10, p2

    .line 91
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 92
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 93
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 94
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 95
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 96
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 97
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_a
    return-void
.end method
