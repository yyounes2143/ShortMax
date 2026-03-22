.class public final Lcom/inmobi/media/O4;
.super Lcom/inmobi/media/Fa;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/Object;

.field public h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Ljava/util/concurrent/ScheduledFuture;

.field public j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Pa;Lcom/inmobi/media/a5;Lcom/inmobi/media/Ka;)V
    .locals 1

    .line 1
    const-string v0, "dao"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "networkHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/Fa;-><init>(Lcom/inmobi/media/Pa;Lcom/inmobi/media/Ba;Lcom/inmobi/media/Ka;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/inmobi/media/O4;->g:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method

.method public static final a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TIM-HighPriorityPollingPing"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static final a(Lcom/inmobi/media/O4;)V
    .locals 9

    const-string v0, "TAG"

    const-string v1, "O4"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    :try_start_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    sget-object v3, Lcom/inmobi/media/Ca;->a:Lcom/inmobi/media/Ca;

    if-eq v2, v3, :cond_1

    .line 38
    iget-object v2, p0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 39
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getMaxBatchSize()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;->getHigh()I

    move-result v2

    .line 40
    iget-object v3, p0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 41
    iget-object v4, p0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 42
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getExpiry()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;->getHigh()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 43
    const-string v6, "time_created < ?"

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v3, v6, v4}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    iget-object v3, p0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 48
    invoke-virtual {v3, v2}, Lcom/inmobi/media/Pa;->a(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 52
    const-string v4, "high"

    .line 53
    const-string v5, "priority"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-string v5, "priority = ?"

    .line 55
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xc

    .line 56
    invoke-static {v3, v5, v4, v6}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/inmobi/media/O4;->b()V

    goto :goto_1

    .line 58
    :cond_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 59
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/za;

    .line 60
    iget-object v4, p0, Lcom/inmobi/media/O4;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/inmobi/media/M4;

    invoke-direct {v5, p0}, Lcom/inmobi/media/M4;-><init>(Lcom/inmobi/media/O4;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/za;Ljava/util/concurrent/ExecutorService;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :catch_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/O4;J)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v1, "O4"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 3
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getMaxBatchSize()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;->getHigh()I

    move-result v3

    .line 4
    iget-object v4, v0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 6
    const-string v12, "high"

    const-string v13, "priority"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v12, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 8
    const-string v9, "time_created ASC"

    const/16 v11, 0xc

    const-string v5, "priority = ? AND retry_count = 0 AND time_created < ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 10
    :goto_0
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    iget-object v5, v0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    sget-object v6, Lcom/inmobi/media/Ca;->a:Lcom/inmobi/media/Ca;

    if-eq v5, v6, :cond_3

    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/za;

    .line 14
    iget-object v6, v0, Lcom/inmobi/media/O4;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/inmobi/media/N4;

    invoke-direct {v7, v0}, Lcom/inmobi/media/N4;-><init>(Lcom/inmobi/media/O4;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/za;Ljava/util/concurrent/ExecutorService;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object v14, v0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 16
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v12, v4}, [Ljava/lang/String;

    move-result-object v16

    .line 18
    const-string v19, "time_created ASC"

    const/16 v21, 0xc

    const-string v15, "priority = ? AND retry_count = 0 AND time_created < ?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v21}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 19
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/inmobi/media/za;

    .line 22
    iget-object v8, v0, Lcom/inmobi/media/Fa;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    iget-object v7, v7, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 25
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_2
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TIM-HighPriorityParallelPing"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/inmobi/media/O4;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/O4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    new-instance v1, Lub/j1;

    invoke-direct {v1}, Lub/j1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/O4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/O4;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    :cond_2
    new-instance v1, Lub/k1;

    invoke-direct {v1}, Lub/k1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/O4;->j:Ljava/util/concurrent/ExecutorService;

    .line 32
    :cond_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 3

    .line 2
    const-string v0, "O4"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/inmobi/media/Ca;->b:Lcom/inmobi/media/Ca;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/Ca;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/O4;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/O4;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/inmobi/media/O4;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/inmobi/media/O4;->j:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v3, Lub/i1;

    .line 10
    .line 11
    invoke-direct {v3, p0, v0, v1}, Lub/i1;-><init>(Lcom/inmobi/media/O4;J)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/O4;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/O4;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getInterval()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->getHigh()I

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    int-to-long v6, v1

    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    cmp-long v1, v6, v1

    .line 35
    .line 36
    if-gtz v1, :cond_1

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_2
    const-string v1, "O4"

    .line 41
    .line 42
    const-string v2, "TAG"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/inmobi/media/O4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    new-instance v3, Lub/l1;

    .line 52
    .line 53
    invoke-direct {v3, p0}, Lub/l1;-><init>(Lcom/inmobi/media/O4;)V

    .line 54
    .line 55
    .line 56
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    .line 66
    :goto_0
    iput-object v1, p0, Lcom/inmobi/media/O4;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 67
    .line 68
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v0

    .line 73
    throw v1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/O4;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/O4;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/inmobi/media/O4;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 17
    .line 18
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object v0, p0, Lcom/inmobi/media/O4;->j:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :goto_1
    monitor-exit v0

    .line 30
    throw v1
.end method
