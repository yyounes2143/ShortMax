.class public final Lcom/bytedance/bdtracker/h5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/bdtracker/f5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/f5<",
            "Lcom/bytedance/bdtracker/j5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/h5$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/bdtracker/h5$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/bdtracker/h5;->a:Lcom/bytedance/bdtracker/f5;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    sget-object v2, Lcom/bytedance/bdtracker/g5;->a:Lcom/bytedance/bdtracker/f5;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/bytedance/bdtracker/f5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdid takes "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/bytedance/bdtracker/h5;->a:Lcom/bytedance/bdtracker/f5;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/bytedance/bdtracker/f5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/bdtracker/j5;

    .line 6
    iget-boolean v2, p0, Lcom/bytedance/bdtracker/j5;->c:Z

    const-string v3, " ms"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/j5;->a()V

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Oaid#getOaid timeoutMills="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v6, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Oaid#getOaid locked="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v8, v4, v6, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    move v2, v5

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v8, "Get oaid failed"

    :try_start_3
    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v7, v4, v8, v6, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_2

    :goto_1
    iget-object p0, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0

    :cond_2
    :goto_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    sget-object v2, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Oaid#getOaid return apiMap={}"

    invoke-interface {p0, v4, v6, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    .line 7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOaid takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0
    .param p0    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/IOaidObserver;)V

    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/g;)V
    .locals 1
    .param p0    # Lcom/bytedance/bdtracker/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 3
    sput-object p0, Lcom/bytedance/bdtracker/j5;->k:Lcom/bytedance/bdtracker/g;

    sget-object p0, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bytedance/bdtracker/j5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/bdtracker/e0$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/bdtracker/e0$b;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/j5;->b(Lcom/bytedance/applog/IOaidObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
