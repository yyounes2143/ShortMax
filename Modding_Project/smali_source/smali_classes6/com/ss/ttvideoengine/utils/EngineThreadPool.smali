.class public Lcom/ss/ttvideoengine/utils/EngineThreadPool;
.super Ljava/lang/Object;
.source "EngineThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineThreadPool"

.field private static final THREADPOOL_ALIVE_TIME_SEC:I = 0x3c

.field private static final THREADPOOL_CORE_POOL_SIZE:I = 0x0

.field private static final THREADPOOL_MAX_POOL_SIZE:I = 0x7fffffff

.field private static final THREADPOOL_MAX_RUNNING_TASK_SIZE:I = 0x5

.field private static volatile mEnableLockOptimize:Z

.field private static volatile mEnableThreadPoolOptimize:Z

.field private static volatile mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mReadyRunnables:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mRunningRunnables:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mReadyRunnables:Ljava/util/Deque;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mRunningRunnables:Ljava/util/Deque;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableThreadPoolOptimize:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static declared-synchronized _finished(Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mRunningRunnables:Ljava/util/Deque;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->_promoteRunnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method

.method private static _promoteRunnable()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mReadyRunnables:Ljava/util/Deque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mReadyRunnables:Ljava/util/Deque;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mRunningRunnables:Ljava/util/Deque;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->_finished(Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableLockOptimize:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTaskInternal(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-class v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTaskInternal(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method private static addExecuteTaskInternal(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->getExecutorInstance()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    .line 11
    .line 12
    :cond_1
    :try_start_0
    const-string v1, "EngineThreadPool"

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "addExecuteTask,pool size:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->getPoolSize()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ", active:"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v3, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    sget-boolean v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableThreadPoolOptimize:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_2
    const-class v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 69
    .line 70
    monitor-enter v1

    .line 71
    :try_start_1
    const-string v2, "EngineThreadPool"

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "running:"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    sget-object v4, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mRunningRunnables:Ljava/util/Deque;

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Deque;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, ", ready:"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    sget-object v4, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mReadyRunnables:Ljava/util/Deque;

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Deque;->size()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool$AsyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    sget-object p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mRunningRunnables:Ljava/util/Deque;

    .line 119
    .line 120
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    const/4 v3, 0x5

    .line 125
    if-lt p0, v3, :cond_3

    .line 126
    .line 127
    sget-object p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mReadyRunnables:Ljava/util/Deque;

    .line 128
    .line 129
    invoke-interface {p0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    monitor-exit v1

    .line 133
    return-object v0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    sget-object p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mRunningRunnables:Ljava/util/Deque;

    .line 137
    .line 138
    invoke-interface {p0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    sget-object p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 142
    .line 143
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    monitor-exit v1

    .line 148
    return-object p0

    .line 149
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0
.end method

.method public static addExecuteTaskSync(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableLockOptimize:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTaskSyncInternal(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-class v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTaskSyncInternal(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method private static addExecuteTaskSyncInternal(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "addExecuteTaskSync timeout:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "EngineThreadPool"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTaskInternal(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-interface {p0, p1, p2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string p1, "set surface time out"

    .line 36
    .line 37
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-object p0
.end method

.method public static getExecutorInstance()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sget-boolean v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableThreadPoolOptimize:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "EngineThreadPool"

    .line 17
    .line 18
    const-string v2, "mEnableThreadPoolOptimize true"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    .line 25
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    .line 29
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    const/4 v5, 0x5

    .line 34
    const-wide/16 v6, 0x3c

    .line 35
    .line 36
    move-object v3, v1

    .line 37
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 38
    .line 39
    .line 40
    sput-object v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    .line 42
    sget-object v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    .line 53
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    const v4, 0x7fffffff

    .line 62
    .line 63
    .line 64
    const-wide/16 v5, 0x3c

    .line 65
    .line 66
    move-object v2, v1

    .line 67
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 68
    .line 69
    .line 70
    sput-object v1, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 71
    .line 72
    :cond_1
    :goto_0
    monitor-exit v0

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v1

    .line 76
    :cond_2
    :goto_2
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 77
    .line 78
    return-object v0
.end method

.method public static getPoolSize()I
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->getExecutorInstance()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static setExecutorInstance(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setOptimizeEnabled(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableThreadPoolOptimize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static setOptimizeLock(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mEnableLockOptimize:Z

    .line 2
    .line 3
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->mExecutorInstance:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
