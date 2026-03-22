.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
.super Ljava/lang/Object;
.source "LazyGrid.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;


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
.field final synthetic $isVertical:Z

.field final synthetic $resolvedSlotSizesSums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $spaceBetweenSlots:I

.field final synthetic $this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method constructor <init>(ZLjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$isVertical:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$resolvedSlotSizesSums:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$spaceBetweenSlots:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createLine-H9FfpSk(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;
    .locals 11
    .param p2    # [Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;I)",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "spans"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 12
    .line 13
    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$isVertical:Z

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$resolvedSlotSizesSums:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$this_null:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 22
    .line 23
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    iget v9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->$spaceBetweenSlots:I

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    move-object v1, v0

    .line 31
    move v2, p1

    .line 32
    move-object v3, p2

    .line 33
    move-object v4, p3

    .line 34
    move v8, p4

    .line 35
    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;-><init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
