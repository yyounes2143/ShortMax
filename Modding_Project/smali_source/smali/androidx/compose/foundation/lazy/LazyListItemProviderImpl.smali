.class public final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
.super Ljava/lang/Object;
.source "LazyListItemProviderImpl.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemProvider;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemsSnapshot:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "itemsSnapshot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    new-instance p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public Item(ILandroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const v0, 0x659c2956

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    and-int/lit8 v0, p3, 0xe

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p3

    .line 24
    :goto_1
    and-int/lit8 v1, p3, 0x70

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    :cond_3
    and-int/lit8 v1, v0, 0x5b

    .line 41
    .line 42
    const/16 v2, 0x12

    .line 43
    .line 44
    if-ne v1, v2, :cond_5

    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_5
    :goto_3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 58
    .line 59
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    shl-int/lit8 v0, v0, 0x3

    .line 70
    .line 71
    and-int/lit8 v0, v0, 0x70

    .line 72
    .line 73
    or-int/lit16 v0, v0, 0x200

    .line 74
    .line 75
    invoke-virtual {v1, v2, p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->Item(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    .line 76
    .line 77
    .line 78
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-nez p2, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;

    .line 86
    .line 87
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;II)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    :goto_5
    return-void
.end method

.method public getContentType(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->getContentType(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getHeaderIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->getHeaderIndexes()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->getItemsCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->getKey(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getKeyToIndexMap()Ljava/util/Map;
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
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->getKeyToIndexMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
