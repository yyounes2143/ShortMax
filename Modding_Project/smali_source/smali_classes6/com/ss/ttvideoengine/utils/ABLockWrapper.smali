.class public Lcom/ss/ttvideoengine/utils/ABLockWrapper;
.super Lcom/ss/ttvideoengine/utils/ABLock;
.source "ABLockWrapper.java"


# instance fields
.field private mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

.field private mLastLock:Lcom/ss/ttvideoengine/utils/ABLock;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;-><init>(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/ABLock;->create(I)Lcom/ss/ttvideoengine/utils/ABLock;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 9
    .line 10
    sget p1, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_VOID:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/ABLock;->create(I)Lcom/ss/ttvideoengine/utils/ABLock;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mLastLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/ABLock;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public lock(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;->lock(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tryLock(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;->tryLock(I)Z

    move-result p1

    return p1
.end method

.method public tryLock(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/utils/ABLock;->tryLock(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public unlock(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;->unlock(I)V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mLastLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;->unlock(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public updateLockType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/ABLock;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mLastLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/ABLock;->create(I)Lcom/ss/ttvideoengine/utils/ABLock;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLockWrapper;->mCurrentLock:Lcom/ss/ttvideoengine/utils/ABLock;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
