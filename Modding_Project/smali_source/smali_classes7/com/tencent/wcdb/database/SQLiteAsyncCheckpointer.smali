.class public Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;
.super Ljava/lang/Object;
.source "SQLiteAsyncCheckpointer.java"

# interfaces
.implements Lcom/tencent/wcdb/database/SQLiteCheckpointListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DEFAULT_BLOCKING_THRESHOLD:I = 0x12c

.field private static final DEFAULT_THRESHOLD:I = 0x64

.field private static gDefaultThread:Landroid/os/HandlerThread;

.field private static final gDefaultThreadLock:Ljava/lang/Object;

.field private static gDefaultThreadRefCount:I


# instance fields
.field private mBlockingThreshold:I

.field private mHandler:Landroid/os/Handler;

.field private mLastSyncMode:I

.field private mLooper:Landroid/os/Looper;

.field private final mPendingCheckpoints:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Lcom/tencent/wcdb/database/SQLiteDatabase;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThreshold:I

.field private mUseDefaultLooper:Z


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
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x64

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;-><init>(Landroid/os/Looper;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x12c

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;-><init>(Landroid/os/Looper;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLooper:Landroid/os/Looper;

    .line 5
    iput p2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mThreshold:I

    .line 6
    iput p3, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mBlockingThreshold:I

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mPendingCheckpoints:Ljava/util/HashSet;

    return-void
.end method

.method private static acquireDefaultLooper()Landroid/os/Looper;
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadRefCount:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    sput v2, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadRefCount:I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/os/HandlerThread;

    .line 17
    .line 18
    const-string v2, "WCDB.AsyncCheckpointer"

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThread:Landroid/os/HandlerThread;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 33
    .line 34
    const-string v2, "gDefaultThread == null"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThread:Landroid/os/HandlerThread;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    monitor-exit v0

    .line 47
    return-object v1

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1
.end method

.method private static releaseDefaultLooper()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadRefCount:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    sput v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThreadRefCount:I

    .line 9
    .line 10
    if-gtz v1, :cond_1

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThread:Landroid/os/HandlerThread;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    sput-object v1, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->gDefaultThread:Landroid/os/HandlerThread;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 26
    .line 27
    const-string v2, "gDefaultThreadRefCount == 0"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/util/Pair;

    .line 4
    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 8
    .line 9
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    move p1, v8

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v1, v2, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->walCheckpoint(Ljava/lang/String;Z)Landroid/util/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    sub-long/2addr v6, v3

    .line 50
    move-object v2, p0

    .line 51
    move-object v3, v1

    .line 52
    move v4, v5

    .line 53
    move v5, p1

    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->onCheckpointResult(Lcom/tencent/wcdb/database/SQLiteDatabase;IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mPendingCheckpoints:Ljava/util/HashSet;

    .line 61
    .line 62
    monitor-enter p1

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mPendingCheckpoints:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    monitor-exit p1

    .line 72
    return v8

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 76
    .line 77
    const-string v1, "mPendingCheckpoints.remove(p)"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v0

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public onAttach(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->acquireDefaultLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLooper:Landroid/os/Looper;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mUseDefaultLooper:Z

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLooper:Landroid/os/Looper;

    .line 17
    .line 18
    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getSynchronousMode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLastSyncMode:I

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setSynchronousMode(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected onCheckpointResult(Lcom/tencent/wcdb/database/SQLiteDatabase;IIJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetach(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLastSyncMode:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setSynchronousMode(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mUseDefaultLooper:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mLooper:Landroid/os/Looper;

    .line 14
    .line 15
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->releaseDefaultLooper()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mUseDefaultLooper:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWALCommit(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mThreshold:I

    .line 2
    .line 3
    if-ge p3, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mBlockingThreshold:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-lt p3, v0, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move p3, v1

    .line 14
    :goto_0
    new-instance v0, Landroid/util/Pair;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mPendingCheckpoints:Ljava/util/HashSet;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mPendingCheckpoints:Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {p1, v1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCheckpointer;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method
