.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $constraints:J

.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $indicator:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $layoutHeight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $layoutWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $padding:I

.field final synthetic $scrollableTabData:Landroidx/compose/material/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method constructor <init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ScrollableTabData;IJLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lat/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material/ScrollableTabData;",
            "IJ",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lat/n<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$padding:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$tabPlaceables:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$divider:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$selectedTabIndex:I

    .line 12
    .line 13
    iput-wide p7, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$constraints:J

    .line 14
    .line 15
    iput-object p9, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutWidth:Lkotlin/jvm/internal/Ref$IntRef;

    .line 16
    .line 17
    iput-object p10, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutHeight:Lkotlin/jvm/internal/Ref$IntRef;

    .line 18
    .line 19
    iput-object p11, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$indicator:Lat/n;

    .line 20
    .line 21
    iput p12, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$$dirty:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "$this$layout"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$padding:I

    .line 4
    iget-object v3, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$tabPlaceables:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v10, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    move v4, v12

    .line 6
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 7
    new-instance v2, Landroidx/compose/material/TabPosition;

    invoke-interface {v10, v12}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-interface {v10, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/material/TabPosition;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v3, Landroidx/compose/material/TabSlots;->Divider:Landroidx/compose/material/TabSlots;

    iget-object v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$divider:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-wide v7, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$constraints:J

    iget-object v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutHeight:Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 11
    iget v13, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v10, v7

    move v12, v13

    .line 12
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 13
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 14
    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    sub-int v10, v2, v4

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object v14, v5

    move v5, v10

    move-object v10, v6

    move v6, v13

    move-wide v15, v7

    move v7, v11

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move-object v6, v10

    move-object v5, v14

    move-wide v7, v15

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    sget-object v3, Landroidx/compose/material/TabSlots;->Indicator:Landroidx/compose/material/TabSlots;

    new-instance v4, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2$3;

    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$indicator:Lat/n;

    iget v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$$dirty:I

    invoke-direct {v4, v5, v1, v6}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2$3;-><init>(Lat/n;Ljava/util/List;I)V

    const v5, 0xdc14255

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 16
    iget-object v10, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutHeight:Lkotlin/jvm/internal/Ref$IntRef;

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 18
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    iget v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    .line 20
    iget-object v3, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 21
    iget v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$padding:I

    .line 22
    iget v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$selectedTabIndex:I

    .line 23
    invoke-virtual {v2, v3, v4, v1, v5}, Landroidx/compose/material/ScrollableTabData;->onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V

    return-void
.end method
