.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
.super Ljava/lang/Object;
.source "LazyGrid.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/MeasuredItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $afterContentPadding:I

.field final synthetic $beforeContentPadding:I

.field final synthetic $isVertical:Z

.field final synthetic $placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

.field final synthetic $reverseLayout:Z

.field final synthetic $this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

.field final synthetic $visualItemOffset:J


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ZZIILandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$isVertical:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$reverseLayout:Z

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$beforeContentPadding:I

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$afterContentPadding:I

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 12
    .line 13
    iput-wide p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$visualItemOffset:J

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final createItem-PU_OBEw(ILjava/lang/Object;II[Landroidx/compose/ui/layout/Placeable;)Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
    .locals 17
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "key"

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "placeables"

    .line 11
    .line 12
    move-object/from16 v12, p5

    .line 13
    .line 14
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 18
    .line 19
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 24
    .line 25
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$isVertical:Z

    .line 26
    .line 27
    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$reverseLayout:Z

    .line 28
    .line 29
    iget v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$beforeContentPadding:I

    .line 30
    .line 31
    iget v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$afterContentPadding:I

    .line 32
    .line 33
    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 34
    .line 35
    iget-wide v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->$visualItemOffset:J

    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    move-object v2, v1

    .line 40
    move/from16 v3, p1

    .line 41
    .line 42
    move/from16 v6, p3

    .line 43
    .line 44
    move/from16 v7, p4

    .line 45
    .line 46
    invoke-direct/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;-><init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method
