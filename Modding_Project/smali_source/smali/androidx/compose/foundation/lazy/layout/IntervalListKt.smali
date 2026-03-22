.class public final Landroidx/compose/foundation/lazy/layout/IntervalListKt;
.super Ljava/lang/Object;
.source "IntervalList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I
    .locals 4
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;>;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    div-int/lit8 v2, v2, 0x2

    .line 13
    .line 14
    add-int/2addr v2, v1

    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    aget-object v3, v3, v2

    .line 20
    .line 21
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v3, p1, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    if-ge v3, p1, :cond_2

    .line 31
    .line 32
    add-int/lit8 v1, v2, 0x1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aget-object v3, v3, v1

    .line 39
    .line 40
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ge p1, v3, :cond_0

    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    add-int/lit8 v0, v2, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return v1
.end method
