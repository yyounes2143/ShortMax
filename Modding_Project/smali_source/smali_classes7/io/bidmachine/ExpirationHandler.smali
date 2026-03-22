.class public Lio/bidmachine/ExpirationHandler;
.super Ljava/lang/Object;
.source "ExpirationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ExpirationHandler$b;,
        Lio/bidmachine/ExpirationHandler$Listener;,
        Lio/bidmachine/ExpirationHandler$TaskScheduler;,
        Lio/bidmachine/ExpirationHandler$c;
    }
.end annotation


# instance fields
.field private final expirationTimeMs:J

.field private final expiredTask:Lio/bidmachine/ExpirationHandler$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLio/bidmachine/ExpirationHandler$Listener;)V
    .locals 2
    .param p3    # Lio/bidmachine/ExpirationHandler$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/ExpirationHandler$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ExpirationHandler$b;-><init>(Lio/bidmachine/ExpirationHandler$a;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;Lio/bidmachine/ExpirationHandler$TaskScheduler;)V

    return-void
.end method

.method public constructor <init>(JLio/bidmachine/ExpirationHandler$Listener;Lio/bidmachine/ExpirationHandler$TaskScheduler;)V
    .locals 1
    .param p3    # Lio/bidmachine/ExpirationHandler$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/ExpirationHandler$TaskScheduler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/ExpirationHandler$c;

    invoke-direct {v0, p3}, Lio/bidmachine/ExpirationHandler$c;-><init>(Lio/bidmachine/ExpirationHandler$Listener;)V

    iput-object v0, p0, Lio/bidmachine/ExpirationHandler;->expiredTask:Lio/bidmachine/ExpirationHandler$c;

    .line 4
    iput-wide p1, p0, Lio/bidmachine/ExpirationHandler;->expirationTimeMs:J

    .line 5
    iput-object p4, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ExpirationHandler;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method getTaskScheduler()Lio/bidmachine/ExpirationHandler$TaskScheduler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    .line 2
    .line 3
    return-object v0
.end method

.method public start()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/ExpirationHandler;->expirationTimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    .line 21
    .line 22
    iget-object v1, p0, Lio/bidmachine/ExpirationHandler;->expiredTask:Lio/bidmachine/ExpirationHandler$c;

    .line 23
    .line 24
    iget-wide v2, p0, Lio/bidmachine/ExpirationHandler;->expirationTimeMs:J

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3}, Lio/bidmachine/ExpirationHandler$TaskScheduler;->scheduleTask(Ljr/b;J)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/ExpirationHandler;->expiredTask:Lio/bidmachine/ExpirationHandler$c;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lio/bidmachine/ExpirationHandler$TaskScheduler;->cancelTask(Ljr/b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
