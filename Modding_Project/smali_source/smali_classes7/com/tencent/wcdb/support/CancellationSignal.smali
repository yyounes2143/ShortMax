.class public final Lcom/tencent/wcdb/support/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/support/CancellationSignal$Transport;,
        Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mIsCanceled:Z

.field private mOnCancelListener:Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;

.field private mRemote:Lcom/tencent/wcdb/support/ICancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createTransport()Lcom/tencent/wcdb/support/ICancellationSignal;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/wcdb/support/CancellationSignal$Transport;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tencent/wcdb/support/CancellationSignal$Transport;-><init>(Lcom/tencent/wcdb/support/CancellationSignal$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static fromTransport(Lcom/tencent/wcdb/support/ICancellationSignal;)Lcom/tencent/wcdb/support/CancellationSignal;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/tencent/wcdb/support/CancellationSignal$Transport;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/tencent/wcdb/support/CancellationSignal$Transport;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/tencent/wcdb/support/CancellationSignal$Transport;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private waitForCancelFinishedLocked()V
    .locals 1

    .line 1
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mCancelInProgress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mIsCanceled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mIsCanceled:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mCancelInProgress:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mOnCancelListener:Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mRemote:Lcom/tencent/wcdb/support/ICancellationSignal;

    .line 18
    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :try_start_1
    invoke-interface {v0}, Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 30
    .line 31
    :try_start_2
    invoke-interface {v1}, Lcom/tencent/wcdb/support/ICancellationSignal;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    monitor-enter p0

    .line 36
    :try_start_3
    iput-boolean v2, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mCancelInProgress:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    .line 40
    .line 41
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    throw v0

    .line 43
    :catchall_2
    move-exception v0

    .line 44
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 45
    throw v0

    .line 46
    :catch_0
    :cond_2
    :goto_2
    monitor-enter p0

    .line 47
    :try_start_5
    iput-boolean v2, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mCancelInProgress:Z

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_3
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 56
    throw v0

    .line 57
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mIsCanceled:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/support/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mOnCancelListener:Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mOnCancelListener:Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mIsCanceled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {p1}, Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;->onCancel()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public setRemote(Lcom/tencent/wcdb/support/ICancellationSignal;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/support/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mRemote:Lcom/tencent/wcdb/support/ICancellationSignal;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mRemote:Lcom/tencent/wcdb/support/ICancellationSignal;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/tencent/wcdb/support/CancellationSignal;->mIsCanceled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-interface {p1}, Lcom/tencent/wcdb/support/ICancellationSignal;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    return-void

    .line 27
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    throw p1
.end method

.method public throwIfCanceled()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/support/CancellationSignal;->isCanceled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/tencent/wcdb/support/OperationCanceledException;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/tencent/wcdb/support/OperationCanceledException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
