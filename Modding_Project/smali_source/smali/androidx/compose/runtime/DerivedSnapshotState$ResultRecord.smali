.class public final Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "DerivedState.kt"

# interfaces
.implements Landroidx/compose/runtime/DerivedState$Record;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/DerivedSnapshotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "Landroidx/compose/runtime/DerivedState$Record<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 6 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,398:1\n1893#2:399\n1893#2:401\n1893#2:403\n33#3:400\n33#3:402\n33#3:404\n370#4,2:405\n372#4,2:415\n375#4,2:442\n424#5,8:407\n395#6,4:417\n367#6,6:421\n377#6,3:428\n380#6,9:432\n399#6:441\n1399#7:427\n1270#7:431\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n*L\n117#1:399\n126#1:401\n137#1:403\n117#1:400\n126#1:402\n137#1:404\n139#1:405,2\n139#1:415,2\n139#1:442,2\n139#1:407,8\n140#1:417,4\n140#1:421,6\n140#1:428,3\n140#1:432,9\n140#1:441\n140#1:427\n140#1:431\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unset:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private dependencies:Landroidx/collection/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ObjectIntMap<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resultHash:I

.field private validSnapshotId:J

.field private validSnapshotWriteCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->$stable:I

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->emptyObjectIntMap()Landroidx/collection/ObjectIntMap;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/ObjectIntMap;

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic access$getUnset$cp()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getDependencies()Landroidx/collection/ObjectIntMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->setDependencies(Landroidx/collection/ObjectIntMap;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 18
    .line 19
    iget p1, p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 20
    .line 21
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 22
    .line 23
    return-void
.end method

.method public create()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->create(J)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    return-object v0
.end method

.method public create(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;-><init>(J)V

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDependencies()Landroidx/collection/ObjectIntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ObjectIntMap<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/ObjectIntMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResultHash()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValidSnapshotId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getValidSnapshotWriteCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final isValid(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)Z
    .locals 5
    .param p1    # Landroidx/compose/runtime/DerivedState;
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
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")Z"
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
    :try_start_0
    iget-wide v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:J

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteCount$runtime()I

    .line 21
    .line 22
    .line 23
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eq v1, v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_4

    .line 31
    :cond_1
    :goto_0
    move v1, v2

    .line 32
    :goto_1
    monitor-exit v0

    .line 33
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v4, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 36
    .line 37
    if-eq v0, v4, :cond_2

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->readableHash(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne v0, p1, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v2, v3

    .line 51
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    monitor-enter p1

    .line 60
    :try_start_1
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iput-wide v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:J

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteCount$runtime()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iput p2, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    .line 71
    .line 72
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    monitor-exit p1

    .line 75
    goto :goto_3

    .line 76
    :catchall_1
    move-exception p2

    .line 77
    monitor-exit p1

    .line 78
    throw p2

    .line 79
    :cond_4
    :goto_3
    return v2

    .line 80
    :goto_4
    monitor-exit v0

    .line 81
    throw p1
.end method

.method public final readableHash(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I
    .locals 22
    .param p1    # Landroidx/compose/runtime/DerivedState;
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
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")I"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getDependencies()Landroidx/collection/ObjectIntMap;

    .line 12
    .line 13
    .line 14
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-exit v3

    .line 16
    invoke-virtual {v4}, Landroidx/collection/ObjectIntMap;->isNotEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v5, 0x7

    .line 21
    if-eqz v3, :cond_9

    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v9, 0x0

    .line 34
    :goto_0
    if-ge v9, v7, :cond_0

    .line 35
    .line 36
    aget-object v10, v6, v9

    .line 37
    .line 38
    check-cast v10, Landroidx/compose/runtime/DerivedStateObserver;

    .line 39
    .line 40
    invoke-interface {v10, v1}, Landroidx/compose/runtime/DerivedStateObserver;->start(Landroidx/compose/runtime/DerivedState;)V

    .line 41
    .line 42
    .line 43
    add-int/2addr v9, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    iget-object v6, v4, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v7, v4, Landroidx/collection/ObjectIntMap;->values:[I

    .line 48
    .line 49
    iget-object v4, v4, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 50
    .line 51
    array-length v9, v4

    .line 52
    add-int/lit8 v9, v9, -0x2

    .line 53
    .line 54
    if-ltz v9, :cond_7

    .line 55
    .line 56
    move v11, v5

    .line 57
    const/4 v10, 0x0

    .line 58
    :goto_1
    aget-wide v12, v4, v10

    .line 59
    .line 60
    not-long v14, v12

    .line 61
    shl-long/2addr v14, v5

    .line 62
    and-long/2addr v14, v12

    .line 63
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long v14, v14, v16

    .line 69
    .line 70
    cmp-long v14, v14, v16

    .line 71
    .line 72
    if-eqz v14, :cond_6

    .line 73
    .line 74
    sub-int v14, v10, v9

    .line 75
    .line 76
    not-int v14, v14

    .line 77
    ushr-int/lit8 v14, v14, 0x1f

    .line 78
    .line 79
    const/16 v15, 0x8

    .line 80
    .line 81
    rsub-int/lit8 v14, v14, 0x8

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    :goto_2
    if-ge v5, v14, :cond_4

    .line 85
    .line 86
    const-wide/16 v17, 0xff

    .line 87
    .line 88
    and-long v17, v12, v17

    .line 89
    .line 90
    const-wide/16 v19, 0x80

    .line 91
    .line 92
    cmp-long v17, v17, v19

    .line 93
    .line 94
    if-gez v17, :cond_3

    .line 95
    .line 96
    shl-int/lit8 v17, v10, 0x3

    .line 97
    .line 98
    add-int v17, v17, v5

    .line 99
    .line 100
    aget-object v18, v6, v17

    .line 101
    .line 102
    aget v8, v7, v17

    .line 103
    .line 104
    move-object/from16 v15, v18

    .line 105
    .line 106
    check-cast v15, Landroidx/compose/runtime/snapshots/StateObject;

    .line 107
    .line 108
    if-eq v8, v2, :cond_1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_1
    instance-of v8, v15, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 112
    .line 113
    if-eqz v8, :cond_2

    .line 114
    .line 115
    check-cast v15, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 116
    .line 117
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/DerivedSnapshotState;->current(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    goto :goto_3

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto :goto_9

    .line 124
    :cond_2
    invoke-interface {v15}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {v8, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    :goto_3
    mul-int/lit8 v11, v11, 0x1f

    .line 133
    .line 134
    invoke-static {v8}, Landroidx/compose/runtime/internal/System_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    add-int/2addr v11, v15

    .line 139
    mul-int/lit8 v11, v11, 0x1f

    .line 140
    .line 141
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v20

    .line 145
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    add-int/2addr v11, v8

    .line 150
    :goto_4
    const/16 v8, 0x8

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_3
    move v8, v15

    .line 154
    :goto_5
    shr-long/2addr v12, v8

    .line 155
    add-int/2addr v5, v2

    .line 156
    move v15, v8

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    move v8, v15

    .line 159
    if-ne v14, v8, :cond_5

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_5
    move v5, v11

    .line 163
    goto :goto_7

    .line 164
    :cond_6
    :goto_6
    if-eq v10, v9, :cond_5

    .line 165
    .line 166
    add-int/2addr v10, v2

    .line 167
    const/4 v5, 0x7

    .line 168
    goto :goto_1

    .line 169
    :cond_7
    const/4 v5, 0x7

    .line 170
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    iget-object v0, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    const/4 v8, 0x0

    .line 179
    :goto_8
    if-ge v8, v3, :cond_a

    .line 180
    .line 181
    aget-object v4, v0, v8

    .line 182
    .line 183
    check-cast v4, Landroidx/compose/runtime/DerivedStateObserver;

    .line 184
    .line 185
    invoke-interface {v4, v1}, Landroidx/compose/runtime/DerivedStateObserver;->done(Landroidx/compose/runtime/DerivedState;)V

    .line 186
    .line 187
    .line 188
    add-int/2addr v8, v2

    .line 189
    goto :goto_8

    .line 190
    :goto_9
    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 191
    .line 192
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    const/4 v8, 0x0

    .line 197
    :goto_a
    if-ge v8, v3, :cond_8

    .line 198
    .line 199
    aget-object v5, v4, v8

    .line 200
    .line 201
    check-cast v5, Landroidx/compose/runtime/DerivedStateObserver;

    .line 202
    .line 203
    invoke-interface {v5, v1}, Landroidx/compose/runtime/DerivedStateObserver;->done(Landroidx/compose/runtime/DerivedState;)V

    .line 204
    .line 205
    .line 206
    add-int/2addr v8, v2

    .line 207
    goto :goto_a

    .line 208
    :cond_8
    throw v0

    .line 209
    :cond_9
    const/4 v5, 0x7

    .line 210
    :cond_a
    return v5

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    move-object v1, v0

    .line 213
    monitor-exit v3

    .line 214
    throw v1
.end method

.method public setDependencies(Landroidx/collection/ObjectIntMap;)V
    .locals 0
    .param p1    # Landroidx/collection/ObjectIntMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectIntMap<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/ObjectIntMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setResultHash(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 2
    .line 3
    return-void
.end method

.method public final setValidSnapshotId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:J

    .line 2
    .line 3
    return-void
.end method

.method public final setValidSnapshotWriteCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    .line 2
    .line 3
    return-void
.end method
