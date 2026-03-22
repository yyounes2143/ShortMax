.class public Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;
.super Lcom/ss/ttvideoengine/utils/ABLock;
.source "ABLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/utils/ABLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalLock"
.end annotation


# instance fields
.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public lock(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tryLock(I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    return p1
.end method

.method public tryLock(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public unlock(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
