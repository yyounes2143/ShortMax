.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;
.super Ljava/lang/Object;
.source "LazyMeasuredLineProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final childConstraints:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gridItemsCount:I

.field private final isVertical:Z

.field private final measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final measuredLineFactory:Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spaceBetweenLines:I

.field private final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;IIILandroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "slotSizesSums"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measuredItemProvider"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "spanLayoutProvider"

    .line 12
    .line 13
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "measuredLineFactory"

    .line 17
    .line 18
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->isVertical:Z

    .line 25
    .line 26
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->gridItemsCount:I

    .line 27
    .line 28
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spaceBetweenLines:I

    .line 29
    .line 30
    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 31
    .line 32
    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 33
    .line 34
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredLineFactory:Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;

    .line 35
    .line 36
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;

    .line 37
    .line 38
    invoke-direct {p1, p2, p3, p0}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;-><init>(Ljava/util/List;ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->childConstraints:Lkotlin/jvm/functions/Function2;

    .line 42
    .line 43
    return-void
.end method

.method public static final synthetic access$isVertical$p(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->isVertical:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getFirstItemIndex()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v3, v1

    .line 23
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->gridItemsCount:I

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spaceBetweenLines:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v3, v2

    .line 32
    :goto_1
    new-array v4, v1, [Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 33
    .line 34
    move v5, v2

    .line 35
    :goto_2
    if-ge v2, v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->unbox-impl()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-static {v6, v7}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->getCurrentLineSpan-impl(J)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->childConstraints:Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-interface {v7, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Landroidx/compose/ui/unit/Constraints;

    .line 70
    .line 71
    invoke-virtual {v7}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    iget-object v9, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getFirstItemIndex()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    add-int/2addr v10, v2

    .line 82
    invoke-static {v10}, Landroidx/compose/foundation/lazy/grid/ItemIndex;->constructor-impl(I)I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    invoke-virtual {v9, v10, v3, v7, v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->getAndMeasure-ednRnyU(IIJ)Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    add-int/2addr v5, v6

    .line 91
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    aput-object v7, v4, v2

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredLineFactory:Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->getSpans()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v1, p1, v4, v0, v3}, Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;->createLine-H9FfpSk(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1
.end method

.method public final getChildConstraints$foundation_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->childConstraints:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyToIndexMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
