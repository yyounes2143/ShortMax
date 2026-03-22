.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffold-bGncdBI(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFLat/n;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLat/n;Landroidx/compose/runtime/Composer;IIII)V
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

.field final synthetic $$dirty1:I

.field final synthetic $$dirty2:I

.field final synthetic $bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $floatingActionButton:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $floatingActionButtonPosition:I

.field final synthetic $peekHeightPx:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

.field final synthetic $semantics:Landroidx/compose/ui/Modifier;

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

.field final synthetic $sheetGesturesEnabled:Z

.field final synthetic $sheetPeekHeight:F

.field final synthetic $sheetShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $snackbarHost:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $topBar:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method constructor <init>(Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;FIIIIFZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Shape;JJFLat/n;Lat/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;FIIIIFZ",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$topBar:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$content:Lat/n;

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    move v1, p5

    .line 15
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetPeekHeight:F

    .line 16
    .line 17
    move v1, p6

    .line 18
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButtonPosition:I

    .line 19
    .line 20
    move v1, p7

    .line 21
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    .line 22
    .line 23
    move v1, p8

    .line 24
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty2:I

    .line 25
    .line 26
    move v1, p9

    .line 27
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty1:I

    .line 28
    .line 29
    move v1, p10

    .line 30
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$peekHeightPx:F

    .line 31
    .line 32
    move v1, p11

    .line 33
    iput-boolean v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetGesturesEnabled:Z

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$semantics:Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    move-object/from16 v1, p13

    .line 39
    .line 40
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    move-object/from16 v1, p14

    .line 43
    .line 44
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    .line 45
    .line 46
    move-wide/from16 v1, p15

    .line 47
    .line 48
    iput-wide v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetBackgroundColor:J

    .line 49
    .line 50
    move-wide/from16 v1, p17

    .line 51
    .line 52
    iput-wide v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContentColor:J

    .line 53
    .line 54
    move/from16 v1, p19

    .line 55
    .line 56
    iput v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetElevation:F

    .line 57
    .line 58
    move-object/from16 v1, p20

    .line 59
    .line 60
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContent:Lat/n;

    .line 61
    .line 62
    move-object/from16 v1, p21

    .line 63
    .line 64
    iput-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$snackbarHost:Lat/n;

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 68
    .line 69
    .line 70
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 30
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

    goto/16 :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldState;->getBottomSheetState()Landroidx/compose/material/BottomSheetState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v8

    .line 5
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldState;->getBottomSheetState()Landroidx/compose/material/BottomSheetState;

    move-result-object v9

    .line 6
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$topBar:Lkotlin/jvm/functions/Function2;

    .line 7
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$content:Lat/n;

    .line 8
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;

    iget v12, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$peekHeightPx:F

    iget-object v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    iget-boolean v14, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetGesturesEnabled:Z

    iget-object v15, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$semantics:Landroidx/compose/ui/Modifier;

    iget v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetPeekHeight:F

    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 p2, v8

    iget-wide v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetBackgroundColor:J

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContentColor:J

    iget v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetElevation:F

    move-object/from16 v29, v9

    iget v9, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    iget v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty1:I

    move/from16 v25, v10

    iget-object v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetContent:Lat/n;

    move/from16 v23, v11

    move-object v11, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    move-wide/from16 v21, v1

    move/from16 v24, v9

    move-object/from16 v26, v10

    invoke-direct/range {v11 .. v26}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;-><init>(FLandroidx/compose/material/BottomSheetScaffoldState;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Shape;JJFIILat/n;)V

    const v1, -0x522ac519

    const/4 v2, 0x1

    move-object/from16 v10, p1

    invoke-static {v10, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    .line 9
    iget-object v4, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButton:Lkotlin/jvm/functions/Function2;

    .line 10
    new-instance v1, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$2;

    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$snackbarHost:Lat/n;

    iget-object v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    iget v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    invoke-direct {v1, v5, v6, v7}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$2;-><init>(Lat/n;Landroidx/compose/material/BottomSheetScaffoldState;I)V

    const v5, -0x1cf9e0d4

    invoke-static {v10, v5, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    .line 11
    iget v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$sheetPeekHeight:F

    .line 12
    iget v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$floatingActionButtonPosition:I

    .line 13
    iget v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty:I

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x6180

    iget v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty2:I

    shr-int/lit8 v8, v8, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v2, v8

    shr-int/lit8 v8, v1, 0x6

    and-int/lit16 v8, v8, 0x1c00

    or-int/2addr v2, v8

    iget v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->$$dirty1:I

    shl-int/lit8 v8, v8, 0x9

    const/high16 v9, 0x70000

    and-int/2addr v8, v9

    or-int/2addr v2, v8

    const/high16 v8, 0x380000

    and-int/2addr v1, v8

    or-int v11, v2, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v8, p2

    move-object/from16 v9, v29

    .line 14
    invoke-static/range {v1 .. v11}, Landroidx/compose/material/BottomSheetScaffoldKt;->access$BottomSheetScaffoldLayout-KCBPh4w(Lkotlin/jvm/functions/Function2;Lat/n;Lat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    return-void
.end method
