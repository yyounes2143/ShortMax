.class public Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;
.super Lcom/ss/ttvideoengine/utils/ABLock;
.source "ABLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/utils/ABLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptimizedLock"
.end annotation


# instance fields
.field private final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public lock(I)V
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public tryLock(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public tryLock(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public unlock(I)V
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_READ:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_WRITE:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
