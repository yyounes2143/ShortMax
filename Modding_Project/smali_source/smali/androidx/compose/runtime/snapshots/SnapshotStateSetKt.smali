.class public final Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;
.super Ljava/lang/Object;
.source "SnapshotStateSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSetKt\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n112#1:254\n118#1,5:266\n123#1:272\n112#1:273\n124#1,7:275\n108#1:282\n132#1:291\n112#1:293\n108#1:295\n112#1:306\n108#1:308\n108#1:318\n2474#2:255\n2364#2,2:256\n1893#2:258\n2366#2,4:260\n2474#2:265\n2474#2:274\n2364#2,2:283\n1893#2:285\n2366#2,4:286\n2474#2:294\n2364#2,2:296\n1893#2:298\n2366#2,4:300\n2474#2:307\n2364#2,2:309\n1893#2:311\n2366#2,4:313\n2364#2,2:319\n1893#2:321\n2366#2,2:323\n2369#2:326\n33#3:259\n33#3:271\n33#3:292\n33#3:299\n33#3:305\n33#3:312\n33#3:322\n33#3:325\n33#3:328\n25#3,5:329\n1#4:264\n1#4:290\n1#4:304\n1#4:317\n1#4:327\n*S KotlinDebug\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSetKt\n*L\n101#1:254\n115#1:266,5\n115#1:272\n115#1:273\n115#1:275,7\n115#1:282\n115#1:291\n123#1:293\n130#1:295\n143#1:306\n152#1:308\n162#1:318\n101#1:255\n108#1:256,2\n108#1:258\n108#1:260,4\n112#1:265\n115#1:274\n115#1:283,2\n115#1:285\n115#1:286,4\n123#1:294\n130#1:296,2\n130#1:298\n130#1:300,4\n143#1:307\n152#1:309,2\n152#1:311\n152#1:313,4\n162#1:319,2\n162#1:321\n162#1:323,2\n162#1:326\n108#1:259\n115#1:271\n122#1:292\n130#1:299\n142#1:305\n152#1:312\n162#1:322\n163#1:325\n175#1:328\n204#1:329,5\n108#1:264\n115#1:290\n130#1:304\n152#1:317\n162#1:327\n*E\n"
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->sync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getSync$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final attemptUpdate(Landroidx/compose/runtime/snapshots/StateSetStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)Z
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/StateSetStateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/StateSetStateRecord<",
            "TT;>;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->setSet$runtime(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x1

    .line 18
    add-int/2addr p1, p2

    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->setModification$runtime(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p2

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw p0
.end method

.method public static final clearImpl(Landroidx/compose/runtime/snapshots/SnapshotStateSet;)V
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    monitor-enter v1

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->access$getSync$p()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentSetOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->setSet$runtime(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/2addr v5, v2

    .line 47
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->setModification$runtime(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 51
    .line 52
    .line 53
    monitor-exit v4

    .line 54
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 58
    .line 59
    .line 60
    monitor-exit v1

    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 72
    .line 73
    .line 74
    monitor-exit v4

    .line 75
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 80
    .line 81
    .line 82
    monitor-exit v1

    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public static final conditionalUpdate(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Lkotlin/jvm/functions/Function1;)Z
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
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
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;+",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->access$getSync$p()Ljava/lang/Object;

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
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getSet$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 49
    .line 50
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>"

    .line 63
    .line 64
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    monitor-enter v4

    .line 74
    :try_start_1
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v2, p0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 85
    .line 86
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateSetStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)Z

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 91
    .line 92
    .line 93
    monitor-exit v4

    .line 94
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v5, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 98
    .line 99
    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    :goto_0
    return v1

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 105
    .line 106
    .line 107
    monitor-exit v4

    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 114
    .line 115
    .line 116
    monitor-exit v0

    .line 117
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public static final getModification(Landroidx/compose/runtime/snapshots/SnapshotStateSet;)I
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static final getReadable(Landroidx/compose/runtime/snapshots/SnapshotStateSet;)Landroidx/compose/runtime/snapshots/StateSetStateRecord;
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;)",
            "Landroidx/compose/runtime/snapshots/StateSetStateRecord<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.<get-readable>>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic getReadable$annotations(Landroidx/compose/runtime/snapshots/SnapshotStateSet;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final mutate(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Set<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->access$getSync$p()Ljava/lang/Object;

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
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getSet$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 39
    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>"

    .line 68
    .line 69
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 73
    .line 74
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    monitor-enter v5

    .line 79
    :try_start_1
    sget-object v6, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 80
    .line 81
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v2, p0, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 90
    .line 91
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateSetStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)Z

    .line 92
    .line 93
    .line 94
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 96
    .line 97
    .line 98
    monitor-exit v5

    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 103
    .line 104
    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 110
    .line 111
    .line 112
    monitor-exit v5

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_1
    :goto_0
    return-object v4

    .line 118
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string p1, "No set to mutate"

    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 128
    .line 129
    .line 130
    monitor-exit v0

    .line 131
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 132
    .line 133
    .line 134
    throw p0
.end method

.method public static final mutateBoolean(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Lkotlin/jvm/functions/Function1;)Z
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
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
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->access$getSync$p()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getModification$runtime()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->getSet$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>"

    .line 61
    .line 62
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    check-cast v1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 66
    .line 67
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    monitor-enter v4

    .line 72
    :try_start_1
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v1, p0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 83
    .line 84
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateSetStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)Z

    .line 85
    .line 86
    .line 87
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit v4

    .line 89
    invoke-static {v5, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 90
    .line 91
    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v4

    .line 97
    throw p0

    .line 98
    :cond_1
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string p1, "No set to mutate"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    monitor-exit v0

    .line 115
    throw p0
.end method

.method public static final stateRecordWith(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;)",
            "Landroidx/compose/runtime/snapshots/StateRecord;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-direct {p0, v0, v1, p1}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->isInSnapshot()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p0
.end method

.method public static final withCurrent(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/StateSetStateRecord<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final writable(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateSet<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/StateSetStateRecord<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateSet;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    monitor-enter v1

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 45
    .line 46
    .line 47
    monitor-exit v1

    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
