.class public final Lcom/tencent/wcdb/database/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;,
        Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final CONNECTION_POOL_BUSY_MILLIS:J = 0xbb8L

.field private static final OPEN_FLAG_REOPEN_MASK:I = 0x10000011

.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteConnectionPool"


# instance fields
.field private final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/tencent/wcdb/database/SQLiteConnection;",
            "Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

.field private volatile mChangeListener:Lcom/tencent/wcdb/database/SQLiteChangeListener;

.field private volatile mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

.field private mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

.field private final mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

.field private final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionWaiterPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

.field private mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

.field private final mDB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/wcdb/database/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxConnectionPoolSize:I

.field private mNextConnectionId:I

.field private mPassword:[B

.field private volatile mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 40
    .line 41
    invoke-direct {p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 45
    .line 46
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wcdb/database/SQLiteConnectionPool;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelConnectionWaiterLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 16
    .line 17
    move-object v2, v1

    .line 18
    move-object v1, v0

    .line 19
    move-object v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 24
    .line 25
    iput-object v0, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 31
    .line 32
    :goto_1
    new-instance v0, Lcom/tencent/wcdb/support/OperationCanceledException;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/tencent/wcdb/support/OperationCanceledException;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_2
    return-void
.end method

.method private closeAvailableConnectionsAndLogExceptionsLocked()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 17
    .line 18
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "WCDB.SQLiteConnectionPool"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private closeExcessConnectionsAndLogExceptionsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    iget v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 10
    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    if-le v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 24
    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private discardAcquiredConnectionsLocked()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private dispose(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v1, "WCDB.SQLiteConnectionPool"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "The connection pool for "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " has been closed but there are still "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " connections in use.  They will be closed as they are released back to the pool."

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/tencent/wcdb/support/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 66
    .line 67
    .line 68
    monitor-exit p1

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw v0

    .line 72
    :cond_1
    :goto_2
    return-void
.end method

.method private finishAcquireConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    sget-object v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Failed to prepare acquired connection for session, closing it: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", connectionFlags="

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v1, "WCDB.SQLiteConnectionPool"

    .line 46
    .line 47
    invoke-static {v1, p2}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method private static getPriority(I)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x4

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-static {p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->getPriority(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_0
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 10
    .line 11
    if-le p2, v1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    if-nez p1, :cond_3

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method private logConnectionPoolBusyLocked(Ljava/lang/String;JI)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    cmp-long v1, p2, v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "The connection pool for database \'"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\' has been unable to grant a connection to thread "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " ("

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ") "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "with flags 0x"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p4, " for "

    .line 70
    .line 71
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    long-to-float p2, p2

    .line 75
    const p3, 0x3a83126f    # 0.001f

    .line 76
    .line 77
    .line 78
    mul-float/2addr p2, p3

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, " seconds.\n"

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    const/4 p4, 0x0

    .line 99
    if-nez p3, :cond_2

    .line 100
    .line 101
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    move v1, p4

    .line 112
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    .line 130
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    add-int/lit8 p4, p4, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    move v1, p4

    .line 140
    :cond_3
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 147
    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    add-int/lit8 p3, p3, 0x1

    .line 151
    .line 152
    :cond_4
    const-string v2, "Connections: "

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p4, " active, "

    .line 161
    .line 162
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p4, " idle, "

    .line 169
    .line 170
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p3, " available.\n"

    .line 177
    .line 178
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    if-nez p3, :cond_5

    .line 186
    .line 187
    const-string p3, "\nRequests in progress:\n"

    .line 188
    .line 189
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result p4

    .line 200
    if-eqz p4, :cond_5

    .line 201
    .line 202
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p4

    .line 206
    check-cast p4, Ljava/lang/String;

    .line 207
    .line 208
    const-string v1, "  "

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string p4, "\n"

    .line 217
    .line 218
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    const-string p4, "WCDB.SQLiteConnectionPool"

    .line 227
    .line 228
    invoke-static {p4, p3}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object p4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 232
    .line 233
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p4

    .line 237
    check-cast p4, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 238
    .line 239
    if-eqz p4, :cond_6

    .line 240
    .line 241
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 242
    .line 243
    if-eqz v0, :cond_6

    .line 244
    .line 245
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 246
    .line 247
    invoke-interface {v0, p4, p1, p2, p3}, Lcom/tencent/wcdb/database/SQLiteTrace;->onConnectionPoolBusy(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_6
    return-void
.end method

.method private markAcquiredConnectionsLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 47
    .line 48
    if-eq p1, v3, :cond_0

    .line 49
    .line 50
    sget-object v4, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 51
    .line 52
    if-eq v3, v4, :cond_0

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    :goto_1
    if-ge v2, v1, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    return-void
.end method

.method private obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 7
    .line 8
    iput-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;-><init>(Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iput-object p1, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 19
    .line 20
    iput-wide p2, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 21
    .line 22
    iput p4, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 23
    .line 24
    iput-boolean p5, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 25
    .line 26
    iput-object p6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 27
    .line 28
    iput p7, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 29
    .line 30
    return-object v0
.end method

.method public static open(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;)Lcom/tencent/wcdb/database/SQLiteConnectionPool;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->open(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;I)Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;I)Lcom/tencent/wcdb/database/SQLiteConnectionPool;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    invoke-direct {v0, p0, p1, p4}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;I)V

    .line 3
    iput-object p2, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mPassword:[B

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteCipherSpec;-><init>(Lcom/tencent/wcdb/database/SQLiteCipherSpec;)V

    :goto_0
    iput-object p0, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 5
    invoke-direct {v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->open()V

    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configuration must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private open()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->openConnectionLocked(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;Z)Lcom/tencent/wcdb/database/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 8
    iput-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    return-void
.end method

.method private openConnectionLocked(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;Z)Lcom/tencent/wcdb/database/SQLiteConnection;
    .locals 6

    .line 1
    iget v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mNextConnectionId:I

    .line 2
    .line 3
    add-int/lit8 v0, v2, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mNextConnectionId:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mPassword:[B

    .line 8
    .line 9
    iget-object v5, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move v3, p2

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/tencent/wcdb/database/SQLiteConnection;->open(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;IZ[BLcom/tencent/wcdb/database/SQLiteCipherSpec;)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private reconfigureAllConnectionsLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 2
    .line 3
    const-string v1, "WCDB.SQLiteConnectionPool"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->reconfigure(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "Failed to reconfigure available primary connection, closing it: "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v2, v0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_1
    if-ge v2, v0, :cond_1

    .line 56
    .line 57
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 64
    .line 65
    :try_start_1
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->reconfigure(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_1
    move-exception v4

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v6, "Failed to reconfigure available non-primary connection, closing it: "

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v1, v5, v4}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v3}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 100
    .line 101
    add-int/lit8 v4, v2, -0x1

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v0, v0, -0x1

    .line 107
    .line 108
    move v2, v4

    .line 109
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private recycleConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->reconfigure(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Failed to reconfigure released connection, closing it: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v1, "WCDB.SQLiteConnectionPool"

    .line 34
    .line 35
    invoke-static {v1, v0, p2}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 39
    .line 40
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 41
    .line 42
    if-ne p2, v0, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_1
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method private recycleConnectionWaiterLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 2
    .line 3
    iput-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 7
    .line 8
    iput-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 11
    .line 12
    iput-object v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 13
    .line 14
    iget v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 19
    .line 20
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 21
    .line 22
    return-void
.end method

.method private setMaxConnectionPoolSizeLocked(I)V
    .locals 2

    .line 1
    if-gtz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 4
    .line 5
    iget p1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 6
    .line 7
    const/high16 v0, 0x20000000

    .line 8
    .line 9
    and-int/2addr p1, v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    :cond_1
    :goto_0
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "WCDB.SQLiteConnectionPool"

    .line 26
    .line 27
    const-string v1, "Max connection pool size is %d."

    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/support/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private throwIfClosedLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Cannot perform this operation because the connection pool has been closed."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/tencent/wcdb/database/SQLiteConnection;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-le v0, v2, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move v3, v1

    .line 14
    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    .line 16
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v4, p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;I)V

    .line 36
    .line 37
    .line 38
    return-object v4

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-lez v0, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 45
    .line 46
    sub-int/2addr v0, v2

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;I)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    :cond_3
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 70
    .line 71
    if-lt p1, v0, :cond_4

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    return-object p1

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 76
    .line 77
    invoke-direct {p0, p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->openConnectionLocked(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;Z)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;I)V

    .line 82
    .line 83
    .line 84
    return-object p1
.end method

.method private tryAcquirePrimaryConnectionLocked(I)Lcom/tencent/wcdb/database/SQLiteConnection;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;I)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->isPrimaryConnection()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->openConnectionLocked(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;Z)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;I)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method private waitForConnection(Ljava/lang/String;ILcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteConnection;
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    and-int/lit8 v1, v0, 0x2

    .line 8
    .line 9
    const/4 v11, 0x0

    .line 10
    const/4 v12, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v6, v12

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v6, v11

    .line 16
    :goto_0
    iget-object v13, v9, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v13

    .line 19
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 20
    .line 21
    .line 22
    if-eqz v10, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/wcdb/support/CancellationSignal;->throwIfCanceled()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_c

    .line 30
    .line 31
    :cond_1
    :goto_1
    const/4 v14, 0x0

    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    invoke-direct/range {p0 .. p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object v1, v14

    .line 40
    :goto_2
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-direct {v9, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_3
    if-eqz v1, :cond_4

    .line 47
    .line 48
    monitor-exit v13

    .line 49
    return-object v1

    .line 50
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->getPriority(I)I

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    move-object/from16 v1, p0

    .line 63
    .line 64
    move v5, v15

    .line 65
    move-object/from16 v7, p1

    .line 66
    .line 67
    move/from16 v8, p2

    .line 68
    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v2, v9, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 74
    .line 75
    move-object v3, v14

    .line 76
    :goto_3
    if-eqz v2, :cond_6

    .line 77
    .line 78
    iget v4, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 79
    .line 80
    if-le v15, v4, :cond_5

    .line 81
    .line 82
    iput-object v2, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    iget-object v3, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 86
    .line 87
    move-object/from16 v17, v3

    .line 88
    .line 89
    move-object v3, v2

    .line 90
    move-object/from16 v2, v17

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 94
    .line 95
    iput-object v1, v3, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    iput-object v1, v9, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 99
    .line 100
    :goto_5
    iget v2, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 101
    .line 102
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v10, :cond_8

    .line 104
    .line 105
    new-instance v3, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;

    .line 106
    .line 107
    invoke-direct {v3, v9, v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;-><init>(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v3}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    :try_start_1
    iget-wide v2, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 114
    .line 115
    const-wide/16 v4, 0xbb8

    .line 116
    .line 117
    add-long/2addr v2, v4

    .line 118
    move-wide v6, v4

    .line 119
    :goto_6
    iget-object v8, v9, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .line 121
    invoke-virtual {v8, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_9

    .line 126
    .line 127
    iget-object v8, v9, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 131
    .line 132
    .line 133
    monitor-exit v8

    .line 134
    goto :goto_7

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :try_start_3
    throw v0

    .line 138
    :catchall_2
    move-exception v0

    .line 139
    goto :goto_b

    .line 140
    :cond_9
    :goto_7
    const-wide/32 v15, 0xf4240

    .line 141
    .line 142
    .line 143
    mul-long/2addr v6, v15

    .line 144
    invoke-static {v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 148
    .line 149
    .line 150
    iget-object v6, v9, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 153
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 154
    .line 155
    .line 156
    iget-object v7, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 157
    .line 158
    iget-object v8, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 159
    .line 160
    if-nez v7, :cond_c

    .line 161
    .line 162
    if-eqz v8, :cond_a

    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    cmp-long v13, v7, v2

    .line 170
    .line 171
    if-gez v13, :cond_b

    .line 172
    .line 173
    sub-long/2addr v7, v2

    .line 174
    move-object/from16 v13, p1

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_b
    iget-wide v2, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 178
    .line 179
    sub-long v2, v7, v2

    .line 180
    .line 181
    move-object/from16 v13, p1

    .line 182
    .line 183
    invoke-direct {v9, v13, v2, v3, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusyLocked(Ljava/lang/String;JI)V

    .line 184
    .line 185
    .line 186
    add-long/2addr v7, v4

    .line 187
    move-wide v2, v7

    .line 188
    move-wide v7, v4

    .line 189
    :goto_8
    monitor-exit v6

    .line 190
    move-wide v6, v7

    .line 191
    goto :goto_6

    .line 192
    :catchall_3
    move-exception v0

    .line 193
    goto :goto_a

    .line 194
    :cond_c
    :goto_9
    invoke-direct {v9, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 195
    .line 196
    .line 197
    if-eqz v7, :cond_e

    .line 198
    .line 199
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 200
    if-eqz v10, :cond_d

    .line 201
    .line 202
    invoke-virtual {v10, v14}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 203
    .line 204
    .line 205
    :cond_d
    return-object v7

    .line 206
    :cond_e
    :try_start_5
    throw v8

    .line 207
    :goto_a
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 208
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 209
    :goto_b
    if-eqz v10, :cond_f

    .line 210
    .line 211
    invoke-virtual {v10, v14}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 212
    .line 213
    .line 214
    :cond_f
    throw v0

    .line 215
    :goto_c
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 216
    throw v0
.end method

.method private wakeConnectionWaitersLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v4, v1

    .line 6
    move v3, v2

    .line 7
    move v5, v3

    .line 8
    :goto_0
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-boolean v6, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    :try_start_0
    iget-boolean v6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 17
    .line 18
    if-nez v6, :cond_1

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget-object v6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 23
    .line 24
    iget v8, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 25
    .line 26
    invoke-direct {p0, v6, v8}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-nez v6, :cond_2

    .line 31
    .line 32
    move v3, v7

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v6

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move-object v6, v1

    .line 37
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 38
    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    iget v6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 42
    .line 43
    invoke-direct {p0, v6}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    move v5, v7

    .line 50
    :cond_3
    if-eqz v6, :cond_4

    .line 51
    .line 52
    iput-object v6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/tencent/wcdb/database/SQLiteConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    if-eqz v3, :cond_5

    .line 56
    .line 57
    if-eqz v5, :cond_5

    .line 58
    .line 59
    goto :goto_6

    .line 60
    :cond_5
    move v7, v2

    .line 61
    goto :goto_3

    .line 62
    :goto_2
    iput-object v6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 63
    .line 64
    :goto_3
    iget-object v6, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 65
    .line 66
    if-eqz v7, :cond_7

    .line 67
    .line 68
    if-eqz v4, :cond_6

    .line 69
    .line 70
    iput-object v6, v4, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    iput-object v6, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 74
    .line 75
    :goto_4
    iput-object v1, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    move-object v4, v0

    .line 84
    :goto_5
    move-object v0, v6

    .line 85
    goto :goto_0

    .line 86
    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public acquireConnection(Ljava/lang/String;ILcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteConnection;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long v7, v2, v0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    and-int/lit8 p2, p2, 0x2

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    :goto_0
    move v9, p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p2, 0x0

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 40
    .line 41
    move-object v6, p1

    .line 42
    invoke-interface/range {v4 .. v9}, Lcom/tencent/wcdb/database/SQLiteTrace;->onConnectionObtained(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;JZ)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object p3
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->dispose(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public collectDbStats(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_3

    .line 14
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/tencent/wcdb/support/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Connection pool for "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ":"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "  Open: "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "  Max connections: "

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "  Available primary connection:"

    .line 84
    .line 85
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 89
    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-virtual {v2, v0, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_0
    const-string v2, "<none>"

    .line 100
    .line 101
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    const-string v2, "  Available non-primary connections:"

    .line 105
    .line 106
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const/4 v3, 0x0

    .line 116
    if-nez v2, :cond_1

    .line 117
    .line 118
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    move v4, v3

    .line 125
    :goto_1
    if-ge v4, v2, :cond_2

    .line 126
    .line 127
    iget-object v5, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 134
    .line 135
    invoke-virtual {v5, v0, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v4, v4, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const-string v2, "<none>"

    .line 142
    .line 143
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    const-string v2, "  Acquired connections:"

    .line 147
    .line 148
    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_3

    .line 158
    .line 159
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_4

    .line 174
    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Ljava/util/Map$Entry;

    .line 180
    .line 181
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 186
    .line 187
    invoke-virtual {v5, v0, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 188
    .line 189
    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v6, "  Status: "

    .line 196
    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_3
    const-string p2, "<none>"

    .line 216
    .line 217
    invoke-interface {v0, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    const-string p2, "  Connection waiters:"

    .line 221
    .line 222
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 226
    .line 227
    if-eqz p1, :cond_5

    .line 228
    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide p1

    .line 233
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 234
    .line 235
    :goto_3
    if-eqz v2, :cond_6

    .line 236
    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v5, ": waited for "

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-wide v5, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 251
    .line 252
    sub-long v5, p1, v5

    .line 253
    .line 254
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v5, " ms - thread="

    .line 258
    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object v5, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 263
    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v5, ", priority="

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget v5, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 273
    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v5, ", sql=\'"

    .line 278
    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v5, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v5, "\'"

    .line 288
    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v2, v2, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 300
    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_5
    const-string p1, "<none>"

    .line 305
    .line 306
    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    :cond_6
    monitor-exit v1

    .line 310
    return-void

    .line 311
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method getChangeListener()Lcom/tencent/wcdb/database/SQLiteChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mChangeListener:Lcom/tencent/wcdb/database/SQLiteChangeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method getCheckpointListener()Lcom/tencent/wcdb/database/SQLiteCheckpointListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 2
    .line 3
    return-object v0
.end method

.method getTraceCallback()Lcom/tencent/wcdb/database/SQLiteTrace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 2
    .line 3
    return-object v0
.end method

.method public logConnectionPoolBusy(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusyLocked(Ljava/lang/String;JI)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method notifyChanges(Ljava/lang/String;Ljava/lang/String;[J[J[J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mChangeListener:Lcom/tencent/wcdb/database/SQLiteChangeListener;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    move-object v7, p5

    .line 22
    invoke-interface/range {v1 .. v7}, Lcom/tencent/wcdb/database/SQLiteChangeListener;->onChange(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[J[J[J)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method notifyCheckpoint(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1, v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteCheckpointListener;->onWALCommit(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method onConnectionLeaked()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "A SQLiteConnection object for database \'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "WCDB.SQLiteConnectionPool"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public reconfigure(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 7
    .line 8
    .line 9
    iget v1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 12
    .line 13
    iget v2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 14
    .line 15
    xor-int/2addr v1, v2

    .line 16
    const/high16 v2, 0x20000000

    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_5

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    .line 45
    .line 46
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_1
    iget-boolean v4, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 51
    .line 52
    iget-object v5, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 53
    .line 54
    iget-boolean v5, v5, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 55
    .line 56
    if-eq v4, v5, :cond_4

    .line 57
    .line 58
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v1, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    .line 70
    .line 71
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 76
    .line 77
    iget v5, v4, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 78
    .line 79
    iget v6, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 80
    .line 81
    xor-int/2addr v5, v6

    .line 82
    const v6, 0x10000011

    .line 83
    .line 84
    .line 85
    and-int/2addr v5, v6

    .line 86
    if-nez v5, :cond_6

    .line 87
    .line 88
    iget-object v4, v4, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->vfsName:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v5, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->vfsName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v4, v5}, Lcom/tencent/wcdb/DatabaseUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v3}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked(I)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-direct {p0, p1, v2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->openConnectionLocked(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;Z)Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v3}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked(I)V

    .line 137
    .line 138
    .line 139
    :goto_4
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 140
    .line 141
    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p1

    .line 146
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string v0, "configuration must not be null."

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1
.end method

.method public releaseConnection(Lcom/tencent/wcdb/database/SQLiteConnection;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->isPrimaryConnection()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->recycleConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/tencent/wcdb/database/SQLiteConnection;

    .line 37
    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 49
    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    if-lt v2, v3, :cond_3

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->recycleConnectionLocked(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 70
    .line 71
    .line 72
    :goto_0
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v1, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    .line 77
    .line 78
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1
.end method

.method setChangeListener(Lcom/tencent/wcdb/database/SQLiteChangeListener;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    if-nez v1, :cond_1

    .line 8
    .line 9
    move p2, v0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 14
    .line 15
    iget-boolean v3, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget-boolean v3, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 20
    .line 21
    if-eq v3, p2, :cond_3

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    iput-boolean v1, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 27
    .line 28
    iput-boolean p2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V

    .line 34
    .line 35
    .line 36
    :cond_3
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mChangeListener:Lcom/tencent/wcdb/database/SQLiteChangeListener;

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method setCheckpointListener(Lcom/tencent/wcdb/database/SQLiteCheckpointListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/tencent/wcdb/database/SQLiteCheckpointListener;->onDetach(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mCheckpointListener:Lcom/tencent/wcdb/database/SQLiteCheckpointListener;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/tencent/wcdb/database/SQLiteCheckpointListener;->onAttach(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method setTraceCallback(Lcom/tencent/wcdb/database/SQLiteTrace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 2
    .line 3
    return-void
.end method

.method public shouldYieldConnection(Lcom/tencent/wcdb/database/SQLiteConnection;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mIsOpen:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->isPrimaryConnection()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    monitor-exit v0

    .line 30
    return p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SQLiteConnectionPool: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method traceExecute(Ljava/lang/String;IJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mDB:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->mTraceCallback:Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p1

    .line 18
    move v4, p2

    .line 19
    move-wide v5, p3

    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/tencent/wcdb/database/SQLiteTrace;->onSQLExecuted(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
