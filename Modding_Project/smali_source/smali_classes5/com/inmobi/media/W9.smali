.class public final Lcom/inmobi/media/W9;
.super Lcom/inmobi/media/Fa;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/Object;

.field public h:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Pa;Lcom/inmobi/media/E3;Lcom/inmobi/media/Ka;)V
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
    iput-object p1, p0, Lcom/inmobi/media/W9;->g:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method

.method public static final a(Lcom/inmobi/media/W9;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    sget-object v1, Lcom/inmobi/media/Ca;->a:Lcom/inmobi/media/Ca;

    if-eq v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getMaxBatchSize()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;->getNormal()I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 16
    iget-object v2, p0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 17
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getExpiry()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;->getNormal()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 19
    const-string v3, "time_created < ?"

    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    iget-object v4, p0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 21
    const-string v1, "normal"

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 23
    const-string v0, "priority"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    .line 25
    const-string v5, "priority = ? AND retryAfter <= ?"

    const-string v9, "time_created ASC"

    const/16 v11, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/inmobi/media/Fa;->a:Lcom/inmobi/media/Pa;

    .line 29
    const-string v2, "normal"

    .line 30
    const-string v3, "priority"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 32
    const-string v3, "priority = ?"

    const/16 v4, 0xc

    invoke-static {v1, v3, v2, v4}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 33
    sget-object v0, Lcom/inmobi/media/Ca;->b:Lcom/inmobi/media/Ca;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/Ca;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iput-object v0, p0, Lcom/inmobi/media/Fa;->d:Lcom/inmobi/media/Ca;

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/W9;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/W9;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/inmobi/media/W9;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    goto :goto_4

    :goto_2
    monitor-exit v0

    throw p0

    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/za;

    .line 41
    sget-object v2, Lcom/inmobi/media/z4;->b:Lms/i;

    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 42
    new-instance v3, Lcom/inmobi/media/V9;

    invoke-direct {v3, p0}, Lcom/inmobi/media/V9;-><init>(Lcom/inmobi/media/W9;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/inmobi/media/Fa;->a(Lcom/inmobi/media/za;Ljava/util/concurrent/ExecutorService;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_3
    :goto_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W9;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/W9;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 4
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->getInterval()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->getNormal()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-gtz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_2
    sget-object v1, Lcom/inmobi/media/z4;->b:Lms/i;

    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 7
    new-instance v3, Lub/r2;

    invoke-direct {v3, p0}, Lub/r2;-><init>(Lcom/inmobi/media/W9;)V

    .line 8
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    .line 9
    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/W9;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W9;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/W9;->h:Ljava/util/concurrent/ScheduledFuture;

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
    iput-object v1, p0, Lcom/inmobi/media/W9;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 17
    .line 18
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method
