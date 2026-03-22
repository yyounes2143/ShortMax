.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n*L\n1#1,601:1\n183#1:611\n184#1:621\n187#1:652\n188#1:669\n187#1:670\n188#1:687\n183#1:688\n184#1:698\n1107#2:602\n1085#2,2:603\n25#3,5:605\n33#3:610\n33#3:612\n33#3:622\n33#3:631\n33#3:647\n33#3:653\n33#3:671\n33#3:689\n33#3:708\n33#3:717\n424#4,8:613\n424#4,8:623\n742#4,15:632\n742#4,15:654\n742#4,15:672\n424#4,8:690\n348#4,7:699\n643#4,2:706\n424#4,8:709\n34#5,4:648\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n*L\n71#1:611\n71#1:621\n282#1:652\n282#1:669\n293#1:670\n293#1:687\n320#1:688\n320#1:698\n174#1:602\n174#1:603,2\n175#1:605,5\n65#1:610\n71#1:612\n183#1:622\n187#1:631\n226#1:647\n282#1:653\n293#1:671\n320#1:689\n85#1:708\n165#1:717\n71#1:613,8\n183#1:623,8\n187#1:632,15\n282#1:654,15\n293#1:672,15\n320#1:690,8\n331#1:699,7\n334#1:706,2\n89#1:709,8\n233#1:648,4\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final applyObserver:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentMapThreadId:J

.field private isPaused:Z

.field private final observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observedScopeMapsLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onChangedExecutor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sendingNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/runtime/snapshots/l;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/l;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    new-instance p1, Landroidx/compose/runtime/snapshots/m;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/m;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 29
    .line 30
    const/16 v0, 0x10

    .line 31
    .line 32
    new-array v0, v0, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 46
    .line 47
    const-wide/16 v0, -0x1

    .line 48
    .line 49
    iput-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver$lambda$0(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final addChanges(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Ljava/util/Collection;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    instance-of v1, v0, Ljava/util/Set;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Ljava/util/Set;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v0, v1, v2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object p1, v1, v2

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Collection;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Collection;

    .line 51
    .line 52
    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 65
    .line 66
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private static final applyObserver$lambda$0(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->addChanges(Ljava/util/Set;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendNotifications()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendNotifications$lambda$5(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver$lambda$7(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final drainChanges()Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    monitor-exit v1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->removeChanges()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v4

    .line 23
    :try_start_1
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    iget-object v6, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    move v7, v1

    .line 32
    :goto_1
    if-ge v7, v5, :cond_4

    .line 33
    .line 34
    aget-object v8, v6, v7

    .line 35
    .line 36
    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 37
    .line 38
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordInvalidation(Ljava/util/Set;)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v2, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    :goto_2
    move v2, v0

    .line 50
    :goto_3
    add-int/2addr v7, v0

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    monitor-exit v4

    .line 57
    goto :goto_0

    .line 58
    :goto_4
    monitor-exit v4

    .line 59
    throw v0

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    monitor-exit v1

    .line 62
    throw v0
.end method

.method private final ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    move-object v4, v3

    .line 15
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->getOnChanged()Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-ne v4, p1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_1
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 33
    .line 34
    const-string v1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>"

    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    return-object v3
.end method

.method private final forEachScopeMap(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    add-int/2addr v4, v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method private static final readObserver$lambda$7(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    .line 22
    throw p0

    .line 23
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private final removeChanges()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_1
    instance-of v2, v0, Ljava/util/Set;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Ljava/util/Set;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    instance-of v2, v0, Ljava/util/List;

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Ljava/util/List;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x2

    .line 39
    if-ne v4, v6, :cond_3

    .line 40
    .line 41
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-le v4, v6, :cond_4

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-interface {v2, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_4
    :goto_0
    move-object v2, v3

    .line 61
    :goto_1
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    .line 63
    invoke-static {v3, v0, v1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_5
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 74
    .line 75
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method private final removeScopeMapIf(Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v4, v3, :cond_2

    .line 14
    .line 15
    iget-object v6, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 16
    .line 17
    aget-object v6, v6, v4

    .line 18
    .line 19
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    add-int/2addr v5, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    if-lez v5, :cond_1

    .line 34
    .line 35
    iget-object v6, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 36
    .line 37
    sub-int v7, v4, v5

    .line 38
    .line 39
    aget-object v8, v6, v4

    .line 40
    .line 41
    aput-object v8, v6, v7

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_1
    add-int/2addr v4, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 49
    .line 50
    sub-int v4, v3, v5

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static {p1, v5, v4, v3}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method private final report()Ljava/lang/Void;
    .locals 1

    .line 1
    const-string v0, "Unexpected notification"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method private final sendNotifications()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/snapshots/k;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/compose/runtime/snapshots/k;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final sendNotifications$lambda$5(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Lkotlin/Unit;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 6
    .line 7
    if-nez v2, :cond_2

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_1
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    move v5, v2

    .line 21
    :goto_0
    if-ge v5, v3, :cond_1

    .line 22
    .line 23
    aget-object v6, v4, v5

    .line 24
    .line 25
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 26
    .line 27
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->notifyInvalidatedScopes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    add-int/2addr v5, v0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :goto_1
    iput-boolean v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    :goto_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    monitor-exit v1

    .line 45
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :goto_3
    monitor-exit v1

    .line 55
    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    aget-object v4, v2, v3

    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 19
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 20
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final clear(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 5
    iget-object v5, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v5, v5, v3

    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 6
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clearScopeObservations(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lez v4, :cond_1

    .line 8
    iget-object v5, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v6, v3, v4

    aget-object v7, v5, v3

    aput-object v7, v5, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v3, v2, v4

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v2}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 10
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final clearIf(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v3, v2, :cond_2

    .line 13
    .line 14
    iget-object v5, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v5, v5, v3

    .line 17
    .line 18
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 19
    .line 20
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeScopeIf(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-lez v4, :cond_1

    .line 33
    .line 34
    iget-object v5, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 35
    .line 36
    sub-int v6, v3, v4

    .line 37
    .line 38
    aget-object v7, v5, v3

    .line 39
    .line 40
    aput-object v7, v5, v6

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 49
    .line 50
    sub-int v3, v2, v4

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {p1, v4, v3, v2}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit v0

    .line 64
    throw p1
.end method

.method public final notifyChanges(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 5
    .line 6
    .line 7
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-exit v0

    .line 9
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 12
    .line 13
    iget-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v4, v2, v4

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    cmp-long v4, v2, v6

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v5

    .line 33
    :goto_0
    if-nez v4, :cond_1

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v6, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, "), currentThread={id="

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, ", name="

    .line 61
    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v6, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 73
    .line 74
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    :try_start_1
    iput-boolean v5, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 85
    .line 86
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 87
    .line 88
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    iput-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 93
    .line 94
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    invoke-virtual {p2, p1, v4, p3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->observe(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 100
    .line 101
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 102
    .line 103
    iput-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 108
    .line 109
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 110
    .line 111
    iput-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 112
    .line 113
    throw p1

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    monitor-exit v0

    .line 116
    throw p1
.end method

.method public final start()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 10
    .line 11
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final withNoObservations(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 14
    .line 15
    throw p1
.end method
