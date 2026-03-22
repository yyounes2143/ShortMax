.class public Lcom/bytedance/sdk/openadsdk/ex/oJ/dLZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/ba/oJ/Pfn;


# instance fields
.field private final oJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "[7504]"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/dLZ;->oJ:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/component/ba/oJ/cFZ;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public Pfn()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->so()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public PiB()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Ry()I
    .locals 3

    .line 1
    const-string v0, "once_max"

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const-string v2, "batch_log_config"

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public WcQ()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;->oJ:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/oJ;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ZYk()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public awB()J
    .locals 4

    .line 1
    const-string v0, "log_queue_timeout"

    .line 2
    .line 3
    const v1, 0x9c40

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    const-wide/16 v2, 0x7530

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-ltz v2, :cond_0

    .line 16
    .line 17
    const-wide/32 v2, 0x1d4c0

    .line 18
    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    :cond_0
    const-wide/32 v0, 0x9c40

    .line 25
    .line 26
    .line 27
    :cond_1
    return-wide v0
.end method

.method public ba()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public cFZ()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public dLZ()Lcom/bytedance/sdk/component/ba/oJ/ba;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/oJ/oJ;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/ba/oJ/ba;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public eZI()Z
    .locals 3

    .line 1
    const-string v0, "batch_log_config"

    .line 2
    .line 3
    const-string v1, "enable"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public ex()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ex()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public kkU()Lcom/bytedance/sdk/component/ba/oJ/Pfn/tB;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/cFZ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/cFZ;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public oJ(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 0

    .line 15
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/so;->oJ(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/oJ;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ex/oJ;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Z)V
    .locals 1

    .line 14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;Z)V

    return-void
.end method

.method public oJ(ZIJLcom/bytedance/sdk/component/ba/oJ/ba/ex;)V
    .locals 1

    if-nez p5, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;ZIJ)V

    .line 6
    const-string p2, "track_link_result"

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/PiB;

    const/4 p4, 0x1

    invoke-direct {p1, p4, p5}, Lcom/bytedance/sdk/openadsdk/ex/oJ/PiB;-><init>(ZLcom/bytedance/sdk/component/ba/oJ/ba/ex;)V

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oCU()Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p5}, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ex()I

    move-result p4

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->oJ(Ljava/lang/String;)I

    move-result v0

    if-ge p4, v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->oJ()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p5, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->oJ(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ba()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ZYk(Ljava/lang/String;)I

    move-result p1

    int-to-long p4, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p2, p4, p5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void

    .line 13
    :cond_3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/PiB;

    invoke-direct {p1, p3, p5}, Lcom/bytedance/sdk/openadsdk/ex/oJ/PiB;-><init>(ZLcom/bytedance/sdk/component/ba/oJ/ba/ex;)V

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    :cond_4
    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public oJ(Landroid/content/Context;)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->oJ(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public si()Z
    .locals 3

    .line 1
    const-string v0, "batch_log_config"

    .line 2
    .line 3
    const-string v1, "log_list_reuse"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public so()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public tB(Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oCU()Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->oJ(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public tB()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
