.class public final Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;
.super Ljava/lang/Object;
.source "LazyListItemProviderImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ExtraItemsNearTheSlidingWindow:I = 0x64

.field private static final VisibleItemsSlidingWindowSize:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final synthetic access$calculateNearestItemsRange(I)Lkotlin/ranges/IntRange;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->calculateNearestItemsRange(I)Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final calculateNearestItemsRange(I)Lkotlin/ranges/IntRange;
    .locals 4

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->VisibleItemsSlidingWindowSize:I

    .line 2
    .line 3
    div-int/2addr p0, v0

    .line 4
    mul-int/2addr p0, v0

    .line 5
    sget v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->ExtraItemsNearTheSlidingWindow:I

    .line 6
    .line 7
    sub-int v2, p0, v1

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/2addr p0, v0

    .line 15
    add-int/2addr p0, v1

    .line 16
    invoke-static {v2, p0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final generateKeyToIndexMap(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;
    .locals 3
    .param p0    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/layout/IntervalList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlin/ranges/d;->c()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlin/ranges/d;->d()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->getSize()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-ge p0, v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;

    .line 44
    .line 45
    invoke-direct {v2, v0, p0, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;-><init>(IILjava/util/HashMap;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0, p0, v2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->forEach(IILkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    move-object p0, v1

    .line 52
    :goto_0
    return-object p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "Check failed."

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static final rememberItemProvider(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListItemProvider;
    .locals 4
    .param p0    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0x24ef8423

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    shr-int/lit8 p3, p3, 0x3

    .line 18
    .line 19
    and-int/lit8 p3, p3, 0xe

    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const p3, 0x44faf204

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-ne v1, v0, :cond_1

    .line 49
    .line 50
    :cond_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v3}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->calculateNearestItemsRange(I)Lkotlin/ranges/IntRange;

    .line 65
    .line 66
    .line 67
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    invoke-static {v3, v2, v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    .line 84
    .line 85
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 86
    .line 87
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$rememberItemProvider$1;

    .line 88
    .line 89
    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$rememberItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;Lrs/c;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    invoke-static {v1, v0, p2, p0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    if-nez p0, :cond_2

    .line 108
    .line 109
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-ne p3, p0, :cond_3

    .line 116
    .line 117
    :cond_2
    new-instance p3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 118
    .line 119
    new-instance p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$rememberItemProvider$2$1;

    .line 120
    .line 121
    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$rememberItemProvider$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {p3, p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/runtime/State;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 135
    .line 136
    .line 137
    check-cast p3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 138
    .line 139
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 140
    .line 141
    .line 142
    return-object p3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_0

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    :try_start_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 147
    .line 148
    .line 149
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 151
    .line 152
    .line 153
    throw p0
.end method
