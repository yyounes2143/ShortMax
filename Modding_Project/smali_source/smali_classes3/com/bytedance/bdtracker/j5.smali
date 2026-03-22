.class public final Lcom/bytedance/bdtracker/j5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/applog/IOaidObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Lcom/bytedance/bdtracker/g;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Lcom/bytedance/dr/OaidApi;

.field public final c:Z

.field public final d:Lcom/bytedance/bdtracker/l5;

.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/bytedance/bdtracker/j5;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "#"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/bytedance/bdtracker/j5;->h:Ljava/lang/String;

    .line 25
    .line 26
    sput-object v0, Lcom/bytedance/bdtracker/j5;->i:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/bytedance/bdtracker/j5;->j:Ljava/util/List;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/bdtracker/j5;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/bytedance/bdtracker/j5;->e:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/bytedance/dr/OaidFactory;->createOaidImpl(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bytedance/bdtracker/j5;->b:Lcom/bytedance/dr/OaidApi;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lcom/bytedance/dr/OaidApi;->support(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/j5;->c:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/bdtracker/j5;->c:Z

    .line 41
    .line 42
    :goto_0
    new-instance v0, Lcom/bytedance/bdtracker/l5;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/l5;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/bytedance/bdtracker/j5;->d:Lcom/bytedance/bdtracker/l5;

    .line 48
    .line 49
    return-void
.end method

.method public static a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Lcom/bytedance/applog/IOaidObserver$Oaid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lcom/bytedance/applog/IOaidObserver;

    invoke-interface {v2, p0}, Lcom/bytedance/applog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 2
    .param p0    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 2
    sget-object v0, Lcom/bytedance/bdtracker/j5;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/bytedance/bdtracker/j5;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/applog/IOaidObserver$Oaid;

    invoke-direct {v1, v0}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/bdtracker/j5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/bytedance/bdtracker/e0$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/bdtracker/e0$b;->a(Ljava/util/Map;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/bytedance/bdtracker/j5;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/j5;->b()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 4
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v1, "JSON put failed"

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/bytedance/bdtracker/j5;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/j5;->j:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/j5;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/bdtracker/j5$a;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/j5$a;-><init>(Lcom/bytedance/bdtracker/j5;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/bdtracker/j5;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "TrackerDr"

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/bdtracker/i5;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/bdtracker/i5;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 13

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Oaid#initOaid"

    const/4 v4, 0x1

    invoke-interface {v0, v4, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Oaid#initOaid exec"

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v4, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/j5;->d:Lcom/bytedance/bdtracker/l5;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/l5;->a()Lcom/bytedance/bdtracker/k5;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "Oaid#initOaid fetch={}"

    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/bytedance/bdtracker/k5;->a:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/bdtracker/j5;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/k5;->a()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/bdtracker/j5;->e:Landroid/content/Context;

    .line 2
    iget-object v5, p0, Lcom/bytedance/bdtracker/j5;->b:Lcom/bytedance/dr/OaidApi;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5, v3}, Lcom/bytedance/dr/OaidApi;->getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    iget-boolean v7, v3, Lcom/bytedance/dr/OaidApi$a;->b:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    instance-of v8, v3, Lcom/bytedance/dr/impl/b$a;

    if-eqz v8, :cond_2

    check-cast v3, Lcom/bytedance/dr/impl/b$a;

    iget-wide v8, v3, Lcom/bytedance/dr/impl/b$a;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/bdtracker/j5;->g:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object v5, v6

    move-object v7, v5

    :cond_2
    :goto_1
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/bytedance/bdtracker/k5;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/bdtracker/k5;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object v1, v6

    if-gtz v0, :cond_5

    move v0, v4

    :cond_5
    new-instance v2, Lcom/bytedance/bdtracker/k5;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, p0, Lcom/bytedance/bdtracker/j5;->g:Ljava/lang/Long;

    move-object v5, v2

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v5 .. v12}, Lcom/bytedance/bdtracker/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/j5;->d:Lcom/bytedance/bdtracker/l5;

    invoke-virtual {v0, v2}, Lcom/bytedance/bdtracker/l5;->a(Lcom/bytedance/bdtracker/k5;)V

    move-object v6, v2

    :cond_6
    if-eqz v6, :cond_7

    iget-object v0, v6, Lcom/bytedance/bdtracker/k5;->a:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/bdtracker/j5;->l:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/bytedance/bdtracker/k5;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    :cond_7
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "Oaid#initOaid oaidModel={}"

    :try_start_3
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v1, Lcom/bytedance/bdtracker/j5;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/bdtracker/j5;->c()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bytedance/bdtracker/j5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    check-cast v0, Lcom/bytedance/bdtracker/e0$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/e0$b;->a(Ljava/util/Map;)V

    :cond_8
    return-void

    :goto_3
    iget-object v1, p0, Lcom/bytedance/bdtracker/j5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v2, Lcom/bytedance/bdtracker/j5;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/bdtracker/j5;->c()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V

    sget-object v1, Lcom/bytedance/bdtracker/j5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/bytedance/bdtracker/j5;->m:Ljava/util/Map;

    check-cast v1, Lcom/bytedance/bdtracker/e0$b;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/e0$b;->a(Ljava/util/Map;)V

    :cond_9
    throw v0
.end method
