.class public final Landroidx/room/ObservedTableStates;
.super Ljava/lang/Object;
.source "InvalidationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/ObservedTableStates$ObserveOp;,
        Landroidx/room/ObservedTableStates$SyncState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n+ 2 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,654:1\n28#2,5:655\n28#2,5:660\n28#2,3:665\n32#2:670\n28#2,3:671\n32#2:676\n28#2,5:677\n28#2,5:682\n13493#3,2:668\n13493#3,2:674\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n*L\n523#1:655,5\n553#1:660,5\n568#1:665,3\n568#1:670\n587#1:671,3\n587#1:676\n602#1:677,5\n608#1:682,5\n570#1:668,2\n589#1:674,2\n*E\n"
    }
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile needsSync:Z

.field private final tableObservedState:[Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tableObserversCount:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    new-array v0, p1, [J

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 14
    .line 15
    new-array p1, p1, [Z

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNeedsSync$p(Landroidx/room/ObservedTableStates;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTableObservedState$p(Landroidx/room/ObservedTableStates;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVersion$p(Landroidx/room/ObservedTableStates;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/room/ObservedTableStates;->version:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setNeedsSync$p(Landroidx/room/ObservedTableStates;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final forceNeedSync$room_runtime()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 8
    .line 9
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public final onObserverAdded$room_runtime([I)Z
    .locals 12
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tableIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    const/4 v5, 0x1

    .line 16
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    aget v6, p1, v3

    .line 19
    .line 20
    iget-object v7, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 21
    .line 22
    aget-wide v8, v7, v6

    .line 23
    .line 24
    const-wide/16 v10, 0x1

    .line 25
    .line 26
    add-long/2addr v10, v8

    .line 27
    aput-wide v10, v7, v6

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    cmp-long v6, v8, v6

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    iget v4, p0, Landroidx/room/ObservedTableStates;->version:I

    .line 36
    .line 37
    add-int/2addr v4, v5

    .line 38
    iput v4, p0, Landroidx/room/ObservedTableStates;->version:I

    .line 39
    .line 40
    iput-boolean v5, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 41
    .line 42
    move v4, v5

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-nez v4, :cond_2

    .line 50
    .line 51
    iget-boolean p1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    :cond_2
    move v2, v5

    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public final onObserverRemoved$room_runtime([I)Z
    .locals 14
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tableIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    const/4 v5, 0x1

    .line 16
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    aget v6, p1, v3

    .line 19
    .line 20
    iget-object v7, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 21
    .line 22
    aget-wide v8, v7, v6

    .line 23
    .line 24
    const-wide/16 v10, 0x1

    .line 25
    .line 26
    sub-long v12, v8, v10

    .line 27
    .line 28
    aput-wide v12, v7, v6

    .line 29
    .line 30
    cmp-long v6, v8, v10

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    iget v4, p0, Landroidx/room/ObservedTableStates;->version:I

    .line 35
    .line 36
    add-int/2addr v4, v5

    .line 37
    iput v4, p0, Landroidx/room/ObservedTableStates;->version:I

    .line 38
    .line 39
    iput-boolean v5, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 40
    .line 41
    move v4, v5

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-nez v4, :cond_2

    .line 49
    .line 50
    iget-boolean p1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    :cond_2
    move v2, v5

    .line 55
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final onSync$room_runtime(Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Landroidx/room/ObservedTableStates$ObserveOp;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "action"

    .line 5
    .line 6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getNeedsSync$p(Landroidx/room/ObservedTableStates;)Z

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getVersion$p(Landroidx/room/ObservedTableStates;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    array-length v4, v4

    .line 42
    new-array v4, v4, [Z

    .line 43
    .line 44
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    array-length v5, v5

    .line 49
    new-array v6, v5, [Landroidx/room/ObservedTableStates$ObserveOp;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    move v8, v7

    .line 53
    move v9, v8

    .line 54
    :goto_1
    if-ge v8, v5, :cond_4

    .line 55
    .line 56
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    aget-wide v11, v10, v8

    .line 61
    .line 62
    const-wide/16 v13, 0x0

    .line 63
    .line 64
    cmp-long v10, v11, v13

    .line 65
    .line 66
    if-lez v10, :cond_1

    .line 67
    .line 68
    move v10, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    move v10, v7

    .line 71
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getTableObservedState$p(Landroidx/room/ObservedTableStates;)[Z

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    aget-boolean v11, v11, v8

    .line 76
    .line 77
    if-eq v10, v11, :cond_3

    .line 78
    .line 79
    aput-boolean v10, v4, v8

    .line 80
    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    sget-object v9, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 84
    .line 85
    :goto_3
    move v10, v1

    .line 86
    goto :goto_4

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object/from16 v3, p0

    .line 89
    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_2
    sget-object v9, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    sget-object v10, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 96
    .line 97
    move-object v15, v10

    .line 98
    move v10, v9

    .line 99
    move-object v9, v15

    .line 100
    :goto_4
    aput-object v9, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    add-int/2addr v8, v1

    .line 103
    move v9, v10

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    if-nez v9, :cond_5

    .line 106
    .line 107
    const/4 v0, 0x2

    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    :try_start_2
    new-instance v5, Landroidx/room/ObservedTableStates$SyncState;

    .line 113
    .line 114
    invoke-direct {v5, v3, v6, v4}, Landroidx/room/ObservedTableStates$SyncState;-><init>(I[Landroidx/room/ObservedTableStates$ObserveOp;[Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Landroidx/room/ObservedTableStates$SyncState;->getOps()[Landroidx/room/ObservedTableStates$ObserveOp;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    .line 149
    .line 150
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getNeedsSync$p(Landroidx/room/ObservedTableStates;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-virtual {v5}, Landroidx/room/ObservedTableStates$SyncState;->getVersion()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getVersion$p(Landroidx/room/ObservedTableStates;)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-ne v0, v3, :cond_7

    .line 165
    .line 166
    invoke-virtual {v5}, Landroidx/room/ObservedTableStates$SyncState;->getNewStates()[Z

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-static/range {p0 .. p0}, Landroidx/room/ObservedTableStates;->access$getTableObservedState$p(Landroidx/room/ObservedTableStates;)[Z

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    const/16 v13, 0xe

    .line 175
    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v10, 0x0

    .line 178
    const/4 v11, 0x0

    .line 179
    const/4 v12, 0x0

    .line 180
    invoke-static/range {v8 .. v14}, Lkotlin/collections/n;->v([Z[ZIIIILjava/lang/Object;)[Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 181
    .line 182
    .line 183
    move-object/from16 v3, p0

    .line 184
    .line 185
    :try_start_4
    invoke-static {v3, v7}, Landroidx/room/ObservedTableStates;->access$setNeedsSync$p(Landroidx/room/ObservedTableStates;Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    goto :goto_6

    .line 191
    :catchall_2
    move-exception v0

    .line 192
    move-object/from16 v3, p0

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    move-object/from16 v3, p0

    .line 196
    .line 197
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    .line 199
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    .line 214
    .line 215
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :goto_7
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 226
    .line 227
    .line 228
    throw v0
.end method

.method public final resetTriggerState$room_runtime()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    .line 7
    .line 8
    const/4 v5, 0x6

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/collections/n;->I([ZZIIILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 18
    .line 19
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    .line 28
    .line 29
    throw v1
.end method
