.class public final Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;
.super Ljava/lang/Object;
.source "SnapshotObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1893#2:243\n1893#2:265\n33#3:244\n33#3:266\n34#4,5:245\n34#4,5:250\n34#4,5:255\n34#4,5:260\n1#5:267\n*S KotlinDebug\n*F\n+ 1 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n*L\n147#1:243\n149#1:265\n147#1:244\n149#1:266\n192#1:245,5\n223#1:250,5\n231#1:255,5\n239#1:260,5\n*E\n"
    }
.end annotation


# static fields
.field private static observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers$lambda$6(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observeSnapshots$lambda$3(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final creatingSnapshot(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ">(",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;+TR;>;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p0, p3, p1, p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/util/Map;

    .line 30
    .line 31
    move-object v1, p3

    .line 32
    move-object p3, p1

    .line 33
    move-object p1, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p3, 0x0

    .line 36
    :goto_0
    invoke-interface {p4, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {v0, p0, p1, p3}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-object p1
.end method

.method public static final dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V
    .locals 4
    .param p0    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_1
    invoke-interface {v2, p2, p1, v3}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;->onCreated(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public static final dispatchObserverOnApplied(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/collection/ScatterSet;)V
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/collection/ScatterSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v1, :cond_3

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;

    .line 36
    .line 37
    invoke-interface {v3, p0, p1}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;->onApplied(Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Set;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    return-void
.end method

.method public static final dispatchObserverOnPreDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;

    .line 17
    .line 18
    invoke-interface {v3, p0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;->onPreDispose(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private static synthetic getObservers$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static final mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 6
    .param p0    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;",
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;",
            "Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;

    .line 5
    invoke-interface {v3, p1, p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;->onPreCreate(Landroidx/compose/runtime/snapshots/Snapshot;Z)Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-static {v5, p3}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p3

    .line 7
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-static {v5, p4}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object p4

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    :cond_0
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    invoke-direct {p0, p3, p4}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final mergeObservers(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ln/a;

    invoke-direct {v0, p0, p1}, Ln/a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static final mergeObservers$lambda$6(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final observeSnapshots(Landroidx/compose/runtime/snapshots/Snapshot$Companion;Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)Landroidx/compose/runtime/snapshots/ObserverHandle;
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/Snapshot$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ExperimentalComposeRuntimeApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentListOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 22
    .line 23
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    new-instance p0, Ln/b;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ln/b;-><init>(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw p1
.end method

.method private static final observeSnapshots$lambda$3(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move-object p0, v2

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move-object v2, p0

    .line 28
    :cond_1
    sput-object v2, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observers:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0

    .line 35
    throw p0
.end method
