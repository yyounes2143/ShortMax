.class final Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition$Companion;
.super Ljava/lang/Object;
.source "LazyGridScrollPosition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findLazyGridIndexByKey-Cw5TLFk(Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition$Companion;Ljava/lang/Object;ILandroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition$Companion;->findLazyGridIndexByKey-Cw5TLFk(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final findLazyGridIndexByKey-Cw5TLFk(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return p2

    .line 4
    :cond_0
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p2, v0, :cond_1

    .line 9
    .line 10
    invoke-interface {p3, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return p2

    .line 21
    :cond_1
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/ItemIndex;->constructor-impl(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_2
    return p2
.end method
