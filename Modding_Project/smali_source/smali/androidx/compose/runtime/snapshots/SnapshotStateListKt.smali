.class public final Landroidx/compose/runtime/snapshots/SnapshotStateListKt;
.super Ljava/lang/Object;
.source "SnapshotStateList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateListKt\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,511:1\n121#1,5:522\n126#1:528\n115#1:529\n127#1,9:531\n111#1:540\n137#1,3:549\n115#1:553\n111#1:555\n163#1,6:565\n169#1:572\n115#1:573\n170#1,9:575\n111#1:584\n179#1,6:593\n163#1,7:599\n115#1:606\n170#1,9:608\n111#1:617\n179#1,6:625\n111#1:631\n115#1:642\n111#1:644\n115#1:655\n111#1:657\n115#1:667\n2364#2,2:512\n1893#2:514\n2366#2,4:516\n2474#2:521\n2474#2:530\n2364#2,2:541\n1893#2:543\n2366#2,4:544\n2474#2:554\n2364#2,2:556\n1893#2:558\n2366#2,4:560\n2474#2:574\n2364#2,2:585\n1893#2:587\n2366#2,4:588\n2474#2:607\n2364#2,2:618\n1893#2:620\n2366#2,4:621\n2364#2,2:632\n1893#2:634\n2366#2,2:636\n2369#2:639\n2474#2:643\n2364#2,2:645\n1893#2:647\n2366#2,4:649\n2474#2:656\n2364#2,2:658\n1893#2:660\n2366#2,4:662\n2474#2:668\n33#3:515\n33#3:527\n33#3:552\n33#3:559\n33#3:571\n33#3:635\n33#3:638\n33#3:641\n33#3:648\n33#3:654\n33#3:661\n33#3:666\n25#3,5:669\n1#4:520\n1#4:548\n1#4:564\n1#4:592\n1#4:640\n1#4:653\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateListKt\n*L\n118#1:522,5\n118#1:528\n118#1:529\n118#1:531,9\n118#1:540\n118#1:549,3\n126#1:553\n135#1:555\n146#1:565,6\n146#1:572\n146#1:573\n146#1:575,9\n146#1:584\n146#1:593,6\n146#1:599,7\n146#1:606\n146#1:608,9\n146#1:617\n146#1:625,6\n151#1:631\n169#1:642\n178#1:644\n169#1:655\n178#1:657\n211#1:667\n111#1:512,2\n111#1:514\n111#1:516,4\n115#1:521\n118#1:530\n118#1:541,2\n118#1:543\n118#1:544,4\n126#1:554\n135#1:556,2\n135#1:558\n135#1:560,4\n146#1:574\n146#1:585,2\n146#1:587\n146#1:588,4\n146#1:607\n146#1:618,2\n146#1:620\n146#1:621,4\n151#1:632,2\n151#1:634\n151#1:636,2\n151#1:639\n169#1:643\n178#1:645,2\n178#1:647\n178#1:649,4\n169#1:656\n178#1:658,2\n178#1:660\n178#1:662,4\n211#1:668\n111#1:515\n118#1:527\n125#1:552\n135#1:559\n146#1:571\n151#1:635\n152#1:638\n168#1:641\n178#1:648\n168#1:654\n178#1:661\n192#1:666\n271#1:669,5\n111#1:520\n118#1:548\n135#1:564\n146#1:592\n151#1:640\n178#1:653\n*E\n"
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
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->sync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final SnapshotStateList(ILkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentListOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p0, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public static final synthetic access$getSync$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$invalidIteratorSet()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->invalidIteratorSet()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$modificationError()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->modificationError()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$validateRange(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->validateRange(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/StateListStateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/StateListStateRecord<",
            "TT;>;I",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->setList$runtime(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getStructuralChange$runtime()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    add-int/2addr p2, p1

    .line 21
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->setStructuralChange$runtime(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    add-int/2addr p2, p1

    .line 32
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->setModification$runtime(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :goto_2
    monitor-exit v0

    .line 40
    throw p0
.end method

.method public static final clearImpl(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

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
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

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
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->persistentListOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->setList$runtime(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/2addr v5, v2

    .line 47
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->setModification$runtime(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getStructuralChange$runtime()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    add-int/2addr v5, v2

    .line 55
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->setStructuralChange$runtime(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 59
    .line 60
    .line 61
    monitor-exit v4

    .line 62
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    :try_start_3
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 80
    .line 81
    .line 82
    monitor-exit v4

    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 84
    .line 85
    .line 86
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 88
    .line 89
    .line 90
    monitor-exit v1

    .line 91
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public static final conditionalUpdate(Landroidx/compose/runtime/snapshots/SnapshotStateList;ZLkotlin/jvm/functions/Function1;)Z
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
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
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;+",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

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
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getList$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

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
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

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
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 63
    .line 64
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

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
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 85
    .line 86
    invoke-static {v2, v3, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z

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

.method public static synthetic conditionalUpdate$default(Landroidx/compose/runtime/snapshots/SnapshotStateList;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move p1, p4

    .line 6
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    monitor-enter p3

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getList$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 39
    .line 40
    .line 41
    monitor-exit p3

    .line 42
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 53
    .line 54
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const/4 p4, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 67
    .line 68
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 72
    .line 73
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    monitor-enter v2

    .line 78
    :try_start_1
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v0, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 89
    .line 90
    invoke-static {v0, v1, p3, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z

    .line 91
    .line 92
    .line 93
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 95
    .line 96
    .line 97
    monitor-exit v2

    .line 98
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 102
    .line 103
    .line 104
    if-eqz p3, :cond_0

    .line 105
    .line 106
    :goto_0
    return p4

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    .line 110
    .line 111
    monitor-exit v2

    .line 112
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 118
    .line 119
    .line 120
    monitor-exit p3

    .line 121
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public static final getReadable(Landroidx/compose/runtime/snapshots/SnapshotStateList;)Landroidx/compose/runtime/snapshots/StateListStateRecord;
    .locals 2
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;)",
            "Landroidx/compose/runtime/snapshots/StateListStateRecord<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.<get-readable>>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic getReadable$annotations(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getStructure(Landroidx/compose/runtime/snapshots/SnapshotStateList;)I
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getStructuralChange$runtime()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method private static final invalidIteratorSet()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private static final modificationError()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot modify a state list through an iterator"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static final mutate(Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
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
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

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
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getList$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

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
    invoke-interface {v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 67
    .line 68
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 72
    .line 73
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    monitor-enter v5

    .line 78
    :try_start_1
    sget-object v6, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 79
    .line 80
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v2, p0, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 89
    .line 90
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 95
    .line 96
    .line 97
    monitor-exit v5

    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v6, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 102
    .line 103
    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    .line 110
    .line 111
    monitor-exit v5

    .line 112
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_1
    :goto_0
    return-object v4

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 119
    .line 120
    .line 121
    monitor-exit v0

    .line 122
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public static final mutateBoolean(Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;)Z
    .locals 7
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
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
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getList$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

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
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 60
    .line 61
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    check-cast v1, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 65
    .line 66
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    monitor-enter v4

    .line 71
    :try_start_1
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v1, p0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    invoke-static {v1, v2, v0, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z

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
    :catchall_1
    move-exception p0

    .line 106
    monitor-exit v0

    .line 107
    throw p0
.end method

.method public static final stateRecordWith(Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;)",
            "Landroidx/compose/runtime/snapshots/StateRecord;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/snapshots/StateListStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 12
    .line 13
    .line 14
    instance-of p0, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    new-instance p0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {p0, v1, v2, p1}, Landroidx/compose/runtime/snapshots/StateListStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0
.end method

.method public static final update(Landroidx/compose/runtime/snapshots/SnapshotStateList;ZLkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
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
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;+",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

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
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getList$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

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
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

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
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 62
    .line 63
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 67
    .line 68
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    monitor-enter v4

    .line 73
    :try_start_1
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 74
    .line 75
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v2, p0, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 84
    .line 85
    invoke-static {v2, v3, v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 90
    .line 91
    .line 92
    monitor-exit v4

    .line 93
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v5, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 97
    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    :goto_0
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 104
    .line 105
    .line 106
    monitor-exit v4

    .line 107
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 113
    .line 114
    .line 115
    monitor-exit v0

    .line 116
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public static synthetic update$default(Landroidx/compose/runtime/snapshots/SnapshotStateList;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 4

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move p1, p4

    .line 6
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->access$getSync$p()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    monitor-enter p3

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getModification$runtime()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateListStateRecord;->getList$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 39
    .line 40
    .line 41
    monitor-exit p3

    .line 42
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 53
    .line 54
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    monitor-enter v2

    .line 77
    :try_start_1
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v0, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->writableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 88
    .line 89
    invoke-static {v0, v1, p3, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->attemptUpdate(Landroidx/compose/runtime/snapshots/StateListStateRecord;ILandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Z)Z

    .line 90
    .line 91
    .line 92
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 94
    .line 95
    .line 96
    monitor-exit v2

    .line 97
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 101
    .line 102
    .line 103
    if-eqz p3, :cond_0

    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 108
    .line 109
    .line 110
    monitor-exit v2

    .line 111
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :catchall_1
    move-exception p0

    .line 116
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 117
    .line 118
    .line 119
    monitor-exit p3

    .line 120
    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 121
    .line 122
    .line 123
    throw p0
.end method

.method private static final validateRange(II)V
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "index ("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, ") is out of bound of [0, "

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p0, 0x29

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static final withCurrent(Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
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
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/StateListStateRecord<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

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

.method public static final writable(Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p0    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
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
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/StateListStateRecord<",
            "TT;>;+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/StateListStateRecord;

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
