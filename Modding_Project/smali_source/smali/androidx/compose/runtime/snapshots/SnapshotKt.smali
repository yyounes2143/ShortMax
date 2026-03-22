.class public final Landroidx/compose/runtime/snapshots/SnapshotKt;
.super Ljava/lang/Object;
.source "Snapshot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 SnapshotWeakSet.kt\nandroidx/compose/runtime/snapshots/SnapshotWeakSet\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2486:1\n1893#1:2487\n1893#1:2491\n1893#1:2498\n1893#1:2525\n1893#1:2529\n1893#1:2531\n2212#1,4:2537\n2216#1,4:2542\n1893#1:2575\n1893#1:2577\n1893#1:2579\n1893#1:2582\n1893#1:2584\n1893#1:2586\n1893#1:2613\n1893#1:2615\n1893#1:2619\n33#2:2488\n33#2:2489\n33#2:2492\n33#2:2499\n33#2:2526\n33#2:2530\n33#2:2532\n33#2:2576\n33#2:2578\n33#2:2580\n33#2:2583\n33#2:2585\n33#2:2587\n33#2:2614\n33#2:2616\n33#2:2620\n25#2,5:2621\n36#3:2490\n31#3:2527\n31#3:2528\n40#3:2533\n31#3:2534\n31#3:2535\n31#3:2536\n31#3:2541\n31#3:2546\n31#3:2617\n36#3:2618\n36#3:2626\n36#3:2627\n34#4,5:2493\n231#5,3:2500\n200#5,7:2503\n211#5,3:2511\n214#5,9:2515\n234#5:2524\n231#5,3:2588\n200#5,7:2591\n211#5,3:2599\n214#5,9:2603\n234#5:2612\n1399#6:2510\n1270#6:2514\n1399#6:2598\n1270#6:2602\n125#7,28:2547\n1#8:2581\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n*L\n707#1:2487\n1967#1:2491\n1986#1:2498\n2014#1:2525\n2074#1:2529\n2096#1:2531\n2196#1:2537,4\n2196#1:2542,4\n2248#1:2575\n2276#1:2577\n2286#1:2579\n2354#1:2582\n2365#1:2584\n2392#1:2586\n2448#1:2613\n2459#1:2615\n1999#1:2619\n707#1:2488\n1893#1:2489\n1967#1:2492\n1986#1:2499\n2014#1:2526\n2074#1:2530\n2096#1:2532\n2248#1:2576\n2276#1:2578\n2286#1:2580\n2354#1:2583\n2365#1:2585\n2392#1:2587\n2448#1:2614\n2459#1:2616\n1999#1:2620\n1886#1:2621,5\n1944#1:2490\n2038#1:2527\n2055#1:2528\n2121#1:2533\n2136#1:2534\n2175#1:2535\n2184#1:2536\n2196#1:2541\n2216#1:2546\n2480#1:2617\n2482#1:2618\n1904#1:2626\n1928#1:2627\n1980#1:2493,5\n1988#1:2500,3\n1988#1:2503,7\n1988#1:2511,3\n1988#1:2515,9\n1988#1:2524\n2414#1:2588,3\n2414#1:2591,7\n2414#1:2599,3\n2414#1:2603,9\n2414#1:2612\n1988#1:2510\n1988#1:2514\n2414#1:2598\n2414#1:2602\n2223#1:2547,28\n*E\n"
    }
.end annotation


# static fields
.field private static final INVALID_SNAPSHOT:J

.field private static applyObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;-",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final emptyLambda:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotWeakSet<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static globalWriteObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static nextSnapshotId:J

.field private static openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/internal/SnapshotThreadLocal<",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/e;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    int-to-long v4, v1

    .line 36
    add-long/2addr v2, v4

    .line 37
    sput-wide v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 38
    .line 39
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 40
    .line 41
    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 45
    .line 46
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 47
    .line 48
    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 52
    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 64
    .line 65
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 66
    .line 67
    add-long/2addr v4, v1

    .line 68
    sput-wide v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v3, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 75
    .line 76
    invoke-direct {v3, v1, v2, v0}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 90
    .line 91
    sput-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 92
    .line 93
    sput-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 94
    .line 95
    new-instance v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-direct {v0, v1}, Landroidx/compose/runtime/internal/AtomicInt;-><init>(I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    .line 102
    .line 103
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedWriteObserver$lambda$3(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$advanceGlobalSnapshot()V
    .locals 0

    .line 2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot()V

    return-void
.end method

.method public static final synthetic access$checkAndOverwriteUnusedRecordsLocked()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->checkAndOverwriteUnusedRecordsLocked()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getApplyObservers$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEmptyLambda$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getGlobalSnapshot$p()Landroidx/compose/runtime/snapshots/GlobalSnapshot;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getGlobalWriteObservers$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getINVALID_SNAPSHOT$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->INVALID_SNAPSHOT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getNextSnapshotId$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getOpenSnapshots$p()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPendingApplyObserverCount$p()Landroidx/compose/runtime/internal/AtomicInt;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$optimisticMerges(JLandroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->optimisticMerges(JLandroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$readError()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$reportReadonlySnapshotWrite()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->reportReadonlySnapshotWrite()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$resetGlobalSnapshotLocked(Landroidx/compose/runtime/snapshots/GlobalSnapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->resetGlobalSnapshotLocked(Landroidx/compose/runtime/snapshots/GlobalSnapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setApplyObservers$p(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setGlobalWriteObservers$p(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNextSnapshotId$p(J)V
    .locals 0

    .line 1
    sput-wide p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setOpenSnapshots$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final addRange(Landroidx/compose/runtime/snapshots/SnapshotIdSet;JJ)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x1

    .line 12
    int-to-long v0, v0

    .line 13
    add-long/2addr p1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object p0
.end method

.method private static final advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v2

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime()Landroidx/collection/MutableScatterSet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/internal/AtomicInt;->add(I)I

    :cond_0
    move-object/from16 v4, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 6
    :goto_0
    invoke-static {v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->resetGlobalSnapshotLocked(Landroidx/compose/runtime/snapshots/GlobalSnapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v2

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    const/4 v5, -0x1

    .line 8
    :try_start_1
    sget-object v6, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 9
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    .line 10
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 11
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 12
    invoke-static {v3}, Landroidx/compose/runtime/collection/ScatterSetWrapperKt;->wrapIntoSet(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v8, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 13
    :cond_1
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/internal/AtomicInt;->add(I)I

    goto :goto_3

    :goto_2
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pendingApplyObserverCount:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/internal/AtomicInt;->add(I)I

    throw v0

    .line 14
    :cond_2
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 15
    monitor-enter v1

    .line 16
    :try_start_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->checkAndOverwriteUnusedRecordsLocked()V

    if-eqz v3, :cond_7

    .line 17
    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 18
    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 19
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    move v7, v2

    .line 20
    :goto_4
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v2

    :goto_5
    if-ge v12, v10, :cond_4

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 21
    aget-object v13, v5, v13

    check-cast v13, Landroidx/compose/runtime/snapshots/StateObject;

    .line 22
    invoke-static {v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_6
    shr-long/2addr v8, v11

    add-int/2addr v12, v0

    goto :goto_5

    :cond_4
    if-ne v10, v11, :cond_6

    :cond_5
    if-eq v7, v6, :cond_6

    add-int/2addr v7, v0

    goto :goto_4

    .line 23
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    :cond_7
    monitor-exit v1

    return-object v4

    :goto_7
    monitor-exit v1

    throw v0

    .line 25
    :goto_8
    monitor-exit v2

    throw v0
.end method

.method private static final advanceGlobalSnapshot()V
    .locals 1

    .line 26
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->takeNewSnapshot$lambda$12(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final checkAndOverwriteUnusedRecordsLocked()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getSize$runtime()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v5, 0x0

    .line 11
    if-ge v3, v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    aget-object v6, v6, v3

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :cond_0
    if-eqz v5, :cond_2

    .line 26
    .line 27
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObject;

    .line 28
    .line 29
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwriteUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    if-eq v4, v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    aput-object v6, v5, v4

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime()[I

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime()[I

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    aget v6, v6, v3

    .line 52
    .line 53
    aput v6, v5, v4

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v3, v4

    .line 61
    :goto_1
    if-ge v3, v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    aput-object v5, v6, v3

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime()[I

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    aput v2, v6, v3

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    if-eq v4, v1, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->setSize$runtime(I)V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method private static final createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Landroidx/compose/runtime/snapshots/Snapshot;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 12
    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_1
    :goto_0
    new-instance v1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 20
    .line 21
    :goto_1
    move-object v3, p0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :goto_2
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v2, v1

    .line 28
    move-object v4, p1

    .line 29
    move v7, p2

    .line 30
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 31
    .line 32
    .line 33
    move-object v0, v1

    .line 34
    :goto_3
    return-object v0
.end method

.method static synthetic createTransparentSnapshotWithNoParentReadObserver$default(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v2

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {p0, v2, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v1

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final current(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda$lambda$1(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final emptyLambda$lambda$1(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final findYoungestOr(Landroidx/compose/runtime/snapshots/StateRecord;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/StateRecord;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {v1, v2, v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-object v0
.end method

.method public static final getLock()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getLock$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getSnapshotInitializer()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->snapshotInitializer:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getSnapshotInitializer$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 0
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
            ">;Z)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eq p0, p1, :cond_1

    .line 10
    .line 11
    new-instance p2, Landroidx/compose/runtime/snapshots/d;

    .line 12
    .line 13
    invoke-direct {p2, p0, p1}, Landroidx/compose/runtime/snapshots/d;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    move-object p0, p2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-nez p0, :cond_2

    .line 19
    .line 20
    move-object p0, p1

    .line 21
    :cond_2
    :goto_1
    return-object p0
.end method

.method static synthetic mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final mergedReadObserver$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
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

.method private static final mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
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

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eq p0, p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/snapshots/f;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/snapshots/f;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 10
    .line 11
    .line 12
    move-object p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    move-object p0, p1

    .line 17
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static final mergedWriteObserver$lambda$3(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
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

.method public static final newOverwritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->usedLocked(Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide v1, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime(J)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/snapshots/StateRecord;->create(J)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked"

    .line 28
    .line 29
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroidx/compose/runtime/snapshots/StateObject;->prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object v0
.end method

.method public static final newWritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")TT;"
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
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newWritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method

.method private static final newWritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newOverwritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/StateRecord;->assign(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime(J)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public static final notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteCount$runtime()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setWriteCount$runtime(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteObserver$runtime()Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final optimisticMerges(JLandroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">;"
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime()Landroidx/collection/MutableScatterSet;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getPreviousIds$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    .line 34
    .line 35
    array-length v6, v2

    .line 36
    add-int/lit8 v6, v6, -0x2

    .line 37
    .line 38
    if-ltz v6, :cond_b

    .line 39
    .line 40
    move-object v9, v3

    .line 41
    const/4 v8, 0x0

    .line 42
    :goto_0
    aget-wide v10, v2, v8

    .line 43
    .line 44
    not-long v12, v10

    .line 45
    const/4 v14, 0x7

    .line 46
    shl-long/2addr v12, v14

    .line 47
    and-long/2addr v12, v10

    .line 48
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v12, v14

    .line 54
    cmp-long v12, v12, v14

    .line 55
    .line 56
    if-eqz v12, :cond_9

    .line 57
    .line 58
    sub-int v12, v8, v6

    .line 59
    .line 60
    not-int v12, v12

    .line 61
    ushr-int/lit8 v12, v12, 0x1f

    .line 62
    .line 63
    const/16 v13, 0x8

    .line 64
    .line 65
    rsub-int/lit8 v12, v12, 0x8

    .line 66
    .line 67
    const/4 v14, 0x0

    .line 68
    :goto_1
    if-ge v14, v12, :cond_8

    .line 69
    .line 70
    const-wide/16 v15, 0xff

    .line 71
    .line 72
    and-long/2addr v15, v10

    .line 73
    const-wide/16 v17, 0x80

    .line 74
    .line 75
    cmp-long v15, v15, v17

    .line 76
    .line 77
    if-gez v15, :cond_7

    .line 78
    .line 79
    shl-int/lit8 v15, v8, 0x3

    .line 80
    .line 81
    add-int/2addr v15, v14

    .line 82
    aget-object v15, v5, v15

    .line 83
    .line 84
    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    .line 85
    .line 86
    invoke-interface {v15}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    move-object/from16 v13, p3

    .line 91
    .line 92
    invoke-static {v7, v0, v1, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-nez v3, :cond_1

    .line 97
    .line 98
    move-object/from16 v19, v2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    move-object/from16 v19, v2

    .line 102
    .line 103
    invoke-static {v7, v0, v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    :cond_2
    :goto_2
    move-object/from16 v20, v4

    .line 110
    .line 111
    :goto_3
    const/4 v0, 0x0

    .line 112
    goto :goto_4

    .line 113
    :cond_3
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v20

    .line 117
    if-nez v20, :cond_2

    .line 118
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    move-object/from16 v20, v4

    .line 124
    .line 125
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v7, v0, v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-interface {v15, v2, v3, v0}, Landroidx/compose/runtime/snapshots/StateObject;->mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    if-nez v9, :cond_4

    .line 142
    .line 143
    new-instance v9, Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 146
    .line 147
    .line 148
    :cond_4
    move-object v1, v9

    .line 149
    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-object v9, v1

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const/4 v0, 0x0

    .line 155
    return-object v0

    .line 156
    :cond_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    .line 157
    .line 158
    .line 159
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 160
    .line 161
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :goto_4
    const/16 v1, 0x8

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    move-object/from16 v13, p3

    .line 169
    .line 170
    move-object/from16 v19, v2

    .line 171
    .line 172
    move-object v0, v3

    .line 173
    move-object/from16 v20, v4

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :goto_5
    shr-long/2addr v10, v1

    .line 177
    add-int/lit8 v14, v14, 0x1

    .line 178
    .line 179
    move-object v3, v0

    .line 180
    move v13, v1

    .line 181
    move-object/from16 v2, v19

    .line 182
    .line 183
    move-object/from16 v4, v20

    .line 184
    .line 185
    move-wide/from16 v0, p0

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    move-object/from16 v19, v2

    .line 189
    .line 190
    move-object v0, v3

    .line 191
    move-object/from16 v20, v4

    .line 192
    .line 193
    move v1, v13

    .line 194
    move-object/from16 v13, p3

    .line 195
    .line 196
    if-ne v12, v1, :cond_c

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    move-object/from16 v13, p3

    .line 200
    .line 201
    move-object/from16 v19, v2

    .line 202
    .line 203
    move-object v0, v3

    .line 204
    move-object/from16 v20, v4

    .line 205
    .line 206
    :goto_6
    if-eq v8, v6, :cond_a

    .line 207
    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 209
    .line 210
    move-object v3, v0

    .line 211
    move-object/from16 v2, v19

    .line 212
    .line 213
    move-object/from16 v4, v20

    .line 214
    .line 215
    move-wide/from16 v0, p0

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_a
    move-object v3, v9

    .line 220
    goto :goto_7

    .line 221
    :cond_b
    move-object v0, v3

    .line 222
    :goto_7
    move-object v9, v3

    .line 223
    :cond_c
    return-object v9
.end method

.method public static final overwritable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/StateRecord;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
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
    const/4 v1, 0x1

    .line 7
    :try_start_0
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0, p1, v2, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public static final overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long v2, v2, v0

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newOverwritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v2

    .line 33
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const/4 p3, 0x1

    .line 41
    invoke-static {p3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    cmp-long p3, v0, v2

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v2

    .line 55
    throw p0
.end method

.method private static final overwriteUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)Z
    .locals 13

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 6
    .line 7
    sget-wide v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v5, v3

    .line 16
    move v6, v4

    .line 17
    :goto_0
    if-eqz v0, :cond_8

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    sget-wide v9, Landroidx/compose/runtime/snapshots/SnapshotKt;->INVALID_SNAPSHOT:J

    .line 24
    .line 25
    cmp-long v9, v7, v9

    .line 26
    .line 27
    if-eqz v9, :cond_7

    .line 28
    .line 29
    invoke-static {v7, v8, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-gez v7, :cond_6

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    move-object v3, v0

    .line 40
    goto :goto_4

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    invoke-static {v7, v8, v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-gez v7, :cond_1

    .line 54
    .line 55
    move-object v7, v3

    .line 56
    move-object v3, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v7, v0

    .line 59
    :goto_1
    if-nez v5, :cond_5

    .line 60
    .line 61
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object v8, v5

    .line 66
    :goto_2
    if-eqz v5, :cond_4

    .line 67
    .line 68
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    invoke-static {v9, v10, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-ltz v9, :cond_2

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v11

    .line 87
    invoke-static {v9, v10, v11, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-gez v9, :cond_3

    .line 92
    .line 93
    move-object v8, v5

    .line 94
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move-object v5, v8

    .line 100
    :cond_5
    :goto_3
    sget-wide v8, Landroidx/compose/runtime/snapshots/SnapshotKt;->INVALID_SNAPSHOT:J

    .line 101
    .line 102
    invoke-virtual {v3, v8, v9}, Landroidx/compose/runtime/snapshots/StateRecord;->setSnapshotId$runtime(J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/StateRecord;->assign(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 106
    .line 107
    .line 108
    move-object v3, v7

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    goto :goto_0

    .line 117
    :cond_8
    const/4 p0, 0x1

    .line 118
    if-le v6, p0, :cond_9

    .line 119
    .line 120
    move v4, p0

    .line 121
    :cond_9
    return v4
.end method

.method private static final processForUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwriteUnusedRecordsLocked(Landroidx/compose/runtime/snapshots/StateObject;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->extraStateObjects:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final readError()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private static final readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;J",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->valid(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    move-result-wide v4

    .line 3
    invoke-static {v2, v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v2

    if-gez v2, :cond_1

    :goto_1
    move-object v1, p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static final readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    if-nez p0, :cond_2

    .line 8
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object p0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 12
    monitor-exit p0

    move-object p0, p1

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p2

    invoke-static {p0, v0, v1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    if-nez p0, :cond_2

    .line 17
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object p0

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    .line 20
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 21
    monitor-exit p0

    move-object p0, p1

    goto :goto_0

    .line 22
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final releasePinningLocked(I)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final reportReadonlySnapshotWrite()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot modify a state object in a read-only snapshot"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private static final resetGlobalSnapshotLocked(Landroidx/compose/runtime/snapshots/GlobalSnapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/GlobalSnapshot;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-wide v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    int-to-long v4, v4

    .line 19
    add-long/2addr v4, v2

    .line 20
    sput-wide v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 21
    .line 22
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 23
    .line 24
    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 29
    .line 30
    invoke-virtual {p0, v2, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->setSnapshotId$runtime(J)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setInvalid$runtime(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setWriteCount$runtime(I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->setModified$runtime(Landroidx/collection/MutableScatterSet;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->releasePinnedSnapshotLocked$runtime()V

    .line 47
    .line 48
    .line 49
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 50
    .line 51
    invoke-virtual {p0, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 56
    .line 57
    return-object p1
.end method

.method public static final sync(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function0;
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
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private static final takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final takeNewSnapshot$lambda$12(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 3

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 23
    .line 24
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit p1

    .line 30
    throw p0
.end method

.method public static final trackPinning(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)I
    .locals 1
    .param p2    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowest(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    monitor-enter p2

    .line 10
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->add(J)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p2

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p2

    .line 20
    throw p0
.end method

.method private static final usedLocked(Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 9

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 6
    .line 7
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 v2, 0x1

    .line 14
    int-to-long v2, v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v4, v3

    .line 24
    :goto_0
    if-eqz p0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    sget-wide v7, Landroidx/compose/runtime/snapshots/SnapshotKt;->INVALID_SNAPSHOT:J

    .line 31
    .line 32
    cmp-long v5, v5, v7

    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->valid(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    move-object v4, p0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-gez v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object p0, v4

    .line 63
    :goto_1
    return-object p0

    .line 64
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getNext$runtime()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-object v3
.end method

.method private static final valid(JJLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->INVALID_SNAPSHOT:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, p3, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    if-gtz p0, :cond_0

    .line 3
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final valid(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->valid(JJLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Z

    move-result p0

    return p0
.end method

.method private static final validateOpen(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->openSnapshots:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Snapshot is not open: snapshotId="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", disposed="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getDisposed$runtime()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", applied="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    instance-of v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    :goto_0
    if-eqz p0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getApplied$runtime()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string p0, "read-only"

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, ", lowestPin="

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->pinningTable:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 82
    .line 83
    const-wide/16 v2, -0x1

    .line 84
    .line 85
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    monitor-exit p0

    .line 109
    throw v0

    .line 110
    :cond_2
    return-void
.end method

.method public static final withCurrent(Landroidx/compose/runtime/snapshots/StateRecord;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final writable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 5
    invoke-static {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p0
.end method

.method public static final writable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    .line 7
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 8
    monitor-enter v0

    const/4 v1, 0x1

    .line 9
    :try_start_0
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 10
    invoke-static {p0, p1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 12
    invoke-static {v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p0
.end method

.method public static final writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">(TT;",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_5

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    monitor-enter v2

    .line 42
    :try_start_0
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v0, v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    cmp-long v0, v4, v0

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v3, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newWritableRecordLocked(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 66
    .line 67
    .line 68
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v2

    .line 70
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.writableRecord"

    .line 71
    .line 72
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    const/4 p0, 0x1

    .line 80
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    cmp-long p0, v0, v4

    .line 85
    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->recordModified$runtime(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-object v3

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    .line 95
    .line 96
    .line 97
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 98
    .line 99
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_1
    monitor-exit v2

    .line 104
    throw p0

    .line 105
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readError()Ljava/lang/Void;

    .line 106
    .line 107
    .line 108
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 109
    .line 110
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p0
.end method
