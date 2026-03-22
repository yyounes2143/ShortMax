.class public final Landroidx/compose/runtime/snapshots/Snapshot$Companion;
.super Ljava/lang/Object;
.source "Snapshot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,2486:1\n547#1:2492\n547#1:2498\n550#1:2499\n149#2,5:2487\n149#2,5:2493\n1893#3:2500\n1893#3:2502\n1893#3:2504\n1893#3:2506\n1893#3:2508\n33#4:2501\n33#4:2503\n33#4:2505\n33#4:2507\n33#4:2509\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n*L\n493#1:2492\n555#1:2498\n559#1:2499\n456#1:2487,5\n528#1:2493,5\n624#1:2500\n645#1:2502\n679#1:2504\n625#1:2506\n648#1:2508\n624#1:2501\n645#1:2503\n679#1:2505\n625#1:2507\n648#1:2509\n*E\n"
    }
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
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerGlobalWriteObserver$lambda$6(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver$lambda$3(Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getCanBeReused(Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getThreadId$runtime()J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getCanBeReused(Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;)Z
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getThreadId$runtime()J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic getCurrentThreadSnapshot$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPreexistingSnapshotId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic observe$default(Landroidx/compose/runtime/snapshots/Snapshot$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static final registerApplyObserver$lambda$3(Lkotlin/jvm/functions/Function2;)V
    .locals 2

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
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getApplyObservers$p()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setApplyObservers$p(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method

.method private static final registerGlobalWriteObserver$lambda$6(Lkotlin/jvm/functions/Function1;)V
    .locals 2

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
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getGlobalWriteObservers$p()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setGlobalWriteObservers$p(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public static synthetic takeMutableSnapshot$default(Landroidx/compose/runtime/snapshots/Snapshot$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic takeSnapshot$default(Landroidx/compose/runtime/snapshots/Snapshot$Companion;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x6

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v0, v3, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver$default(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 10
    .line 11
    return-object v0
.end method

.method public final global(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->removeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final isApplyObserverNotificationPending()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getPendingApplyObserverCount$p()Landroidx/compose/runtime/internal/AtomicInt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isInSnapshot()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 6
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getThreadId$runtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    move-object v0, p1

    .line 30
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->getThreadId$runtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long v2, v2, v4

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    const/4 v2, 0x6

    .line 50
    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver$default(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 55
    .line 56
    .line 57
    :goto_0
    return-object p1
.end method

.method public final notifyObjectsInitialized()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 19
    .line 20
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getThreadId$runtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getReadObserver$runtime()Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getWriteObserver$runtime()Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :try_start_0
    move-object v5, v0

    .line 49
    check-cast v5, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x4

    .line 53
    invoke-static {p1, v3, v6, v7, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 61
    .line 62
    invoke-static {p2, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    if-eqz v0, :cond_4

    .line 89
    .line 90
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 91
    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    if-nez p1, :cond_3

    .line 96
    .line 97
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    :goto_0
    new-instance v6, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 108
    .line 109
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    move-object v2, v0

    .line 114
    check-cast v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 115
    .line 116
    :cond_5
    move-object v1, v2

    .line 117
    const/4 v4, 0x1

    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v0, v6

    .line 120
    move-object v2, p1

    .line 121
    move-object v3, p2

    .line 122
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 123
    .line 124
    .line 125
    move-object p1, v6

    .line 126
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 127
    .line 128
    .line 129
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 134
    :try_start_3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 138
    .line 139
    .line 140
    return-object p3

    .line 141
    :catchall_1
    move-exception p2

    .line 142
    goto :goto_2

    .line 143
    :catchall_2
    move-exception p3

    .line 144
    :try_start_4
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 145
    .line 146
    .line 147
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 149
    .line 150
    .line 151
    throw p2
.end method

.method public final openSnapshotCount()I
    .locals 1
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;-",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/ObserverHandle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getEmptyLambda$p()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getApplyObservers$p()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->L0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setApplyObservers$p(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    new-instance v0, Landroidx/compose/runtime/snapshots/b;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/b;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0

    .line 37
    throw p1
.end method

.method public final registerGlobalWriteObserver(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/ObserverHandle;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/ObserverHandle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getGlobalWriteObservers$p()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->L0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$setGlobalWriteObservers$p(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroidx/compose/runtime/snapshots/c;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0

    .line 33
    throw p1
.end method

.method public final removeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-ne p1, p2, :cond_2

    .line 2
    .line 3
    instance-of p2, p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of p2, p1, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "Non-transparent snapshot was reused: "

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final sendApplyNotifications()V
    .locals 2

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
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getGlobalSnapshot$p()Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->hasPendingChanges()Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final takeMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string p2, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final takeSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/Snapshot;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final withMutableSnapshot(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p0, v0, v0, v1, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->takeMutableSnapshot$default(Landroidx/compose/runtime/snapshots/Snapshot$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;->check()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    :try_start_3
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 52
    .line 53
    .line 54
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :goto_0
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 56
    :catchall_2
    move-exception p1

    .line 57
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final withoutReadObservation(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
