.class public final Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;
.super Lcom/tencent/wcdb/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

.field private mFilledWindow:Lcom/tencent/wcdb/CursorWindow;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/Cursor;Lcom/tencent/wcdb/IContentObserver;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/BulkCursorNative;-><init>()V

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
    iput-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of v1, p1, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/tencent/wcdb/CrossProcessCursorWrapper;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/tencent/wcdb/CrossProcessCursorWrapper;-><init>(Lcom/tencent/wcdb/Cursor;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 26
    .line 27
    :goto_0
    iput-object p3, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Lcom/tencent/wcdb/IContentObserver;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method private closeFilledWindowLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mFilledWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mFilledWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private createAndRegisterObserverProxyLocked(Lcom/tencent/wcdb/IContentObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mObserver:Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Lcom/tencent/wcdb/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mObserver:Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/tencent/wcdb/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "an observer is already registered"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private disposeLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->close()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/tencent/wcdb/StaleDataException;

    .line 7
    .line 8
    const-string v1, "Attempted to access a cursor after it has been closed."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/tencent/wcdb/StaleDataException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private unregisterObserverProxyLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mObserver:Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/tencent/wcdb/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mObserver:Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mObserver:Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public deactivate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/tencent/wcdb/Cursor;->deactivate()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public getBulkCursorDescriptor()Lcom/tencent/wcdb/BulkCursorDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/tencent/wcdb/BulkCursorDescriptor;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/tencent/wcdb/BulkCursorDescriptor;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p0, v1, Lcom/tencent/wcdb/BulkCursorDescriptor;->cursor:Lcom/tencent/wcdb/IBulkCursor;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/tencent/wcdb/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/tencent/wcdb/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/tencent/wcdb/Cursor;->getWantsAllOnMoveCalls()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput-boolean v2, v1, Lcom/tencent/wcdb/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    .line 29
    .line 30
    iget-object v2, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 31
    .line 32
    invoke-interface {v2}, Lcom/tencent/wcdb/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, v1, Lcom/tencent/wcdb/BulkCursorDescriptor;->count:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 39
    .line 40
    invoke-interface {v2}, Lcom/tencent/wcdb/CrossProcessCursor;->getWindow()Lcom/tencent/wcdb/CursorWindow;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v1, Lcom/tencent/wcdb/BulkCursorDescriptor;->window:Lcom/tencent/wcdb/CursorWindow;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/tencent/wcdb/Cursor;->getExtras()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public getWindow(I)Lcom/tencent/wcdb/CursorWindow;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/tencent/wcdb/Cursor;->moveToPosition(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/tencent/wcdb/CrossProcessCursor;->getWindow()Lcom/tencent/wcdb/CursorWindow;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mFilledWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    new-instance v1, Lcom/tencent/wcdb/CursorWindow;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/tencent/wcdb/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mFilledWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/wcdb/CursorWindow;->getStartPosition()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-lt p1, v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/tencent/wcdb/CursorWindow;->getStartPosition()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1}, Lcom/tencent/wcdb/CursorWindow;->getNumRows()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    add-int/2addr v2, v3

    .line 64
    if-lt p1, v2, :cond_4

    .line 65
    .line 66
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/wcdb/CursorWindow;->clear()V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 70
    .line 71
    invoke-interface {v2, p1, v1}, Lcom/tencent/wcdb/CrossProcessCursor;->fillWindow(ILcom/tencent/wcdb/CursorWindow;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-object v1

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1
.end method

.method public onMove(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/tencent/wcdb/Cursor;->getPosition()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {v1, v2, p1}, Lcom/tencent/wcdb/CrossProcessCursor;->onMove(II)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public requery(Lcom/tencent/wcdb/IContentObserver;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/tencent/wcdb/Cursor;->requery()Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    :try_start_2
    monitor-exit v0

    .line 19
    const/4 p1, -0x1

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Lcom/tencent/wcdb/IContentObserver;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/tencent/wcdb/Cursor;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    monitor-exit v0

    .line 36
    return p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " Requery misuse db, mCursor isClosed:"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 56
    .line 57
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->isClosed()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;->mCursor:Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/tencent/wcdb/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    monitor-exit v0

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
