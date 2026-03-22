.class public final Lcom/ss/ttvideoengine/preRender/TimerDefault;
.super Ljava/lang/Object;
.source "TimerDefault.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/Timer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/preRender/TimerDefault$Holder;
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mInternal:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mInternal:I

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/preRender/TimerDefault$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/TimerDefault;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/preRender/TimerDefault;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/TimerDefault;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static instance()Lcom/ss/ttvideoengine/preRender/TimerDefault;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/preRender/TimerDefault$Holder;->access$100()Lcom/ss/ttvideoengine/preRender/TimerDefault;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;->trigger()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public declared-synchronized removeTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preRender/TimerDefault;->stopTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public setInternal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mInternal:I

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preRender/TimerDefault;->stopTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    .line 33
    new-instance v2, Lcom/ss/ttvideoengine/preRender/e;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/preRender/e;-><init>(Lcom/ss/ttvideoengine/preRender/TimerDefault;)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mInternal:I

    .line 39
    .line 40
    int-to-long v5, v0

    .line 41
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_2
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/TimerDefault;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
